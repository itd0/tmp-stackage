;;; generated file
(define-module (gnu packages stackage ghc-9.2 stage014)
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
(define-public haskell-9.2-Agda
  (package
    (name "haskell-9.2-Agda")
    (version "2.6.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Agda/Agda-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0yjjbhc593ylrm4mq4j01nkdvh7xqsg5in30wxj4y53vf5hkggp5"))))
    (properties `((upstream-name . "Agda") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-cpphs" "-f-debug" "-f-enable-cluster-counting" "-f-optimise-heavily")
       #:cabal-revision
       ("2" "0mas4lsd093rg4w6js12cjmnz8227q5g0jhkhyrnr25jglqjz75n")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-alex)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-boxes)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-hash)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-edit-distance)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-equivalence)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ghc-compact)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-gitrev)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-happy)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hashtables)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-haskeline)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-murmur-hash)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-parallel)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-strict)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-uri-encode)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://wiki.portal.chalmers.se/agda/")
    (synopsis
     "A dependently typed functional programming language and proof assistant")
    (description
     "Agda is a dependently typed functional programming language: It has
inductive families, which are similar to Haskell's GADTs, but they
can be indexed by values and not just types. It also has
parameterised modules, mixfix operators, Unicode characters, and an
interactive Emacs interface (the type checker can assist in the
development of your code).

Agda is also a proof assistant: It is an interactive system for
writing and checking proofs. Agda is based on intuitionistic type
theory, a foundational system for constructive mathematics developed
by the Swedish logician Per Martin-L&#xf6;f. It has many
similarities with other proof assistants based on dependent types,
such as Coq, Idris, Lean and NuPRL.

This package includes both a command-line program (agda) and an
Emacs mode. If you want to use the Emacs mode you can set it up by
running @@agda-mode setup@@ (see the README).

Note that the Agda package does not follow the package versioning
policy, because it is not intended to be used by third-party
packages.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-Agda

(define-public haskell-9.2-BiobaseEnsembl
  (package
    (name "haskell-9.2-BiobaseEnsembl")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/BiobaseEnsembl/BiobaseEnsembl-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mypz8q4cj8fjma3pjgp6klhsnlbc6xzvbajhh85c3q3q41cn95w"))))
    (properties `((upstream-name . "BiobaseEnsembl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-either-unwrap)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-word8)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/eggzilla/BiobaseEnsembl")
    (synopsis "Ensembl related datastructures and functions")
    (description
     "This library contains high through put sequencing and Ensembl-related functionality:
- Datastructures to query Ensembl REST interface

- Parser for GFF3

- Datastructure for GFF3")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-BiobaseEnsembl

(define-public haskell-9.2-HMock
  (package
    (name "haskell-9.2-HMock")
    (version "0.5.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HMock/HMock-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1nbdgndk5bmd45wabfnndzmava9d8cf24li0w1093yl6099gmwas"))))
    (properties `((upstream-name . "HMock") (hidden? . #f)))
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
                     haskell-9.2-constraints)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-doctest-exitcode-stdio)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-doctest-lib)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-explainable-predicates)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cdsmith/HMock")
    (synopsis "A flexible mock framework for testing effectful code.")
    (description "HMock is a flexible mock framework for testing effectful
code in Haskell.  Tests can set up expectations about
actions that can or should be performed and their results,
and then verify those expectations when the test is
complete.

For more information, see the module documentation for
\"Test.HMock\".")
    (license license:bsd-3)))

haskell-9.2-HMock

(define-public haskell-9.2-HTF
  (package
    (name "haskell-9.2-HTF")
    (version "0.15.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HTF/HTF-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "16sbz9rr1v8p3b0qi6b9rvzqgbd4rr05qp2wiiy0nc2gh1qca4nq"))))
    (properties `((upstream-name . "HTF") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1rd9iwchb4pg441hvqi7qn41v0ihd8sh2ma1h8incyswn527m1ml")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Diff)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-cpphs)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-haskell-src)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-lifted-base)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-old-time)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-regex-compat)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-xmlgen)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/skogsbaer/HTF/")
    (synopsis "The Haskell Test Framework")
    (description
     "The Haskell Test Framework (/HTF/ for short) lets you define and organize unit tests,
QuickCheck properties,
and black box tests in an
easy and convenient way. HTF uses a custom preprocessor that collects
test definitions automatically.

HTF produces highly readable output
for failing test cases: it provides exact file name and line number
information,
it colors and pretty prints expected and
actual results, and it displays a diff highlighting the mismatching parts.

The documentation of the \"Test.Framework.Tutorial\" module
provides a tutorial for HTF. The /sample/ provides a good starting point for
a project using HTF.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.2-HTF

(define-public haskell-9.2-HandsomeSoup
  (package
    (name "haskell-9.2-HandsomeSoup")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HandsomeSoup/HandsomeSoup-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1yzfrvivvxwlaiqwbjx27rxwq9mmnnpb512vwklzw7nyzg9xmqha"))))
    (properties `((upstream-name . "HandsomeSoup") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fnetwork-uri" "-f-buildexamples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-HTTP)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-hxt)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-hxt-http)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/egonSchiele/HandsomeSoup")
    (synopsis "Work with HTML more easily in HXT")
    (description
     "See examples and full readme on the Github page: https:\\/\\/github.com\\/egonSchiele\\/HandsomeSoup")
    (license license:bsd-3)))

haskell-9.2-HandsomeSoup

(define-public haskell-9.2-HaskellNet-SSL
  (package
    (name "haskell-9.2-HaskellNet-SSL")
    (version "0.3.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HaskellNet-SSL/HaskellNet-SSL-"
                    version ".tar.gz"))
              (sha256
               (base32
                "031d1a8ryzkm3xsyh1gh8d8kxq9i7pc9r5l2vjpkzgba31s5fbia"))))
    (properties `((upstream-name . "HaskellNet-SSL") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-bsd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-HaskellNet)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-connection)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-network-bsd)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/dpwright/HaskellNet-SSL")
    (synopsis "Helpers to connect to SSL/TLS mail servers with HaskellNet")
    (description "This package ties together the HaskellNet and connection
packages to make it easy to open IMAP and SMTP connections
over SSL.")
    (license license:bsd-3)))

haskell-9.2-HaskellNet-SSL

(define-public haskell-9.2-HsYAML-aeson
  (package
    (name "haskell-9.2-HsYAML-aeson")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HsYAML-aeson/HsYAML-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "139hqd07hkr8ykvrgmcshh9f3vp9dnrj6ks5nl8hgrpi990jsy5r"))))
    (properties `((upstream-name . "HsYAML-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-exe")
       #:cabal-revision
       ("6" "1c7v808i9wafx0z74skim7h96z7hdl4v7clawg9s1idzzwhihjcr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-HsYAML)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.2-HsYAML-aeson

(define-public haskell-9.2-IPv6Addr
  (package
    (name "haskell-9.2-IPv6Addr")
    (version "2.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/IPv6Addr/IPv6Addr-" version
                    ".tar.gz"))
              (sha256
               (base32
                "14zd98kbs3z6gmw9x897x1vslv5qphfhillhwxvnpkz87wsgzsc1"))))
    (properties `((upstream-name . "IPv6Addr") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-iproute)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-network-info)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/MichelBoucey/IPv6Addr")
    (synopsis "Library to deal with IPv6 address text representations.")
    (description
     "Library to deal with IPv6 address text representations, canonization and manipulations.")
    (license license:bsd-3)))

haskell-9.2-IPv6Addr

(define-public haskell-9.2-NanoID
  (package
    (name "haskell-9.2-NanoID")
    (version "3.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/NanoID/NanoID-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "13917k5s17aq7h4hab3i2b6y3z3c0wq6p9x7hlindks28390i93f"))))
    (properties `((upstream-name . "NanoID") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-mwc-random)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/NanoID")
    (synopsis "NanoID generator")
    (description "Library and CLI tool for NanoID generation")
    (license license:bsd-3)))

haskell-9.2-NanoID

(define-public haskell-9.2-ShellCheck
  (package
    (name "haskell-9.2-ShellCheck")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ShellCheck/ShellCheck-" version
                    ".tar.gz"))
              (sha256
               (base32
                "05jlapp4m997w36h2wszdxz9gvczdczaylypsbn14jqpb650w232"))))
    (properties `((upstream-name . "ShellCheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1c942n7lz59b0acvppg25k01f87rj3icrza9pfp9mlpiwaq1y8qw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Diff)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-tdfa)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.2-ShellCheck

(define-public haskell-9.2-aern2-mp
  (package
    (name "haskell-9.2-aern2-mp")
    (version "0.2.11.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aern2-mp/aern2-mp-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17syak48rqqlssk4gsxdfl21sidfypfwsyfmxsakahflcvl9jgpy"))))
    (properties `((upstream-name . "aern2-mp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-cdar-mBound)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-collect-errors)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-integer-logarithms)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-mixed-types-num)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-reflection)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-tdfa)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/michalkonecny/aern2#readme")
    (synopsis "Multi-precision ball (interval) arithmetic")
    (description
     "Please see the README on GitHub at <https://github.com/michalkonecny/aern2/#readme>")
    (license license:bsd-3)))

haskell-9.2-aern2-mp

(define-public haskell-9.2-aeson-attoparsec
  (package
    (name "haskell-9.2-aeson-attoparsec")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/athanclark/aeson-attoparsec#readme")
    (synopsis "Embed an Attoparsec text parser into an Aeson parser")
    (description "")
    (license license:bsd-3)))

haskell-9.2-aeson-attoparsec

(define-public haskell-9.2-aeson-better-errors
  (package
    (name "haskell-9.2-aeson-better-errors")
    (version "0.9.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-better-errors/aeson-better-errors-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05yibq9kqbjb8rh84n12sbax05amvd8jccpja0hyadz58pjy4jnk"))))
    (properties `((upstream-name . "aeson-better-errors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0wzvrmhn5q2x1mcv43cyxhlck815ldkhx7c7gz5ijjyva1iicgn2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hdgarrood/aeson-better-errors")
    (synopsis "Better error messages when decoding JSON values.")
    (description
     "A small package which gives you the tools to build parsers to decode JSON
values, and gives good error messages when parsing fails.
See also <http://harry.garrood.me/blog/aeson-better-errors/>.")
    (license license:expat)))

haskell-9.2-aeson-better-errors

(define-public haskell-9.2-aeson-combinators
  (package
    (name "haskell-9.2-aeson-combinators")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-combinators/aeson-combinators-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vpsw29336xcybr87xj3k573qf2j7qxgv9wd7fccpcahgixpp2db"))))
    (properties `((upstream-name . "aeson-combinators") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-doctest")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-fail)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-time-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-uuid-types)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/turboMaCk/aeson-combinators")
    (synopsis "Aeson combinators for dead simple JSON decoding")
    (description "Low overhead value space `Decoder`
on top of Aeson's Parser for combinator style decoding.")
    (license license:bsd-3)))

haskell-9.2-aeson-combinators

(define-public haskell-9.2-aeson-compat
  (package
    (name "haskell-9.2-aeson-compat")
    (version "0.3.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-compat/aeson-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ia3qfdpbrzhwwg4ywpdwca0z1m85k081pcz6jh1sx8qjsvcr71w"))))
    (properties `((upstream-name . "aeson-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "0h9ycmx7ad8m3iby8zgv33ql76zggnkiw8c8hnyrh98lm45jj1y0")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-attoparsec-iso8601)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-time-locale-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/phadej/aeson-compat#readme")
    (synopsis "Compatibility layer for aeson")
    (description "Compatibility layer for @@aeson@@")
    (license license:bsd-3)))

haskell-9.2-aeson-compat

(define-public haskell-9.2-aeson-extra
  (package
    (name "haskell-9.2-aeson-extra")
    (version "0.5.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-extra/aeson-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fzri1h2wica3grnp8ag8izakqmsb2lh0nld7xnpxk0p766wg9r7"))))
    (properties `((upstream-name . "aeson-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1bw3qsk0ndw0d72qz3jgb2r7z5mvaxdjl1n9s2qhrx0jz2vapn0q")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-base-compat-batteries)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-recursion-schemes)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-semialign)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-these)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/phadej/aeson-extra#readme")
    (synopsis "Extra goodies for aeson")
    (description
     "Package provides extra functionality on top of @@aeson@@ and @@aeson-compat@@")
    (license license:bsd-3)))

haskell-9.2-aeson-extra

(define-public haskell-9.2-aeson-generic-compat
  (package
    (name "haskell-9.2-aeson-generic-compat")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/aeson-generic-compat")
    (synopsis "Compatible generic class names of Aeson")
    (description
     "This package includes compatible generic class names of Aeson package.")
    (license license:bsd-3)))

haskell-9.2-aeson-generic-compat

(define-public haskell-9.2-aeson-iproute
  (package
    (name "haskell-9.2-aeson-iproute")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-iproute/aeson-iproute-"
                    version ".tar.gz"))
              (sha256
               (base32
                "027mmmjlfld6mncn0k8v0i2lg4xkgymaakl5nqs7jw7apgy83x2z"))))
    (properties `((upstream-name . "aeson-iproute") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-iproute)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/greydot/aeson-iproute")
    (synopsis "Aeson instances for iproute types")
    (description "Aeson instances for iproute types.")
    (license license:bsd-3)))

haskell-9.2-aeson-iproute

(define-public haskell-9.2-aeson-optics
  (package
    (name "haskell-9.2-aeson-optics")
    (version "1.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-optics/aeson-optics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0b7frw4fm5hn611i8ldbnkq1h47vjw4fn6f85sj38fw2cn4n826j"))))
    (properties `((upstream-name . "aeson-optics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-optics-core)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-optics-extra)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-text-short)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/phadej/aeson-optics")
    (synopsis "Law-abiding optics for aeson")
    (description "Law-abiding optics for aeson.")
    (license license:expat)))

haskell-9.2-aeson-optics

(define-public haskell-9.2-aeson-pretty
  (package
    (name "haskell-9.2-aeson-pretty")
    (version "0.8.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-pretty/aeson-pretty-"
                    version ".tar.gz"))
              (sha256
               (base32
                "021az9az6xik9c9s3rnar5fr1lgy2h3igibf5ixnc7ps3m2lzg2x"))))
    (properties `((upstream-name . "aeson-pretty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-only")
       #:cabal-revision
       ("2" "1895w56jl4c06wfhv5zf8ayqpzkxgva2rz5xxz8fvfdiza781cgp")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cmdargs)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.2-aeson-pretty

(define-public haskell-9.2-aeson-value-parser
  (package
    (name "haskell-9.2-aeson-value-parser")
    (version "0.19.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-value-parser/aeson-value-parser-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13q6jgmvswybfw3wiwm6zdcm1i6xpbg86qm1kklqvqzwpb4axfnd"))))
    (properties `((upstream-name . "aeson-value-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/sannsyn/aeson-value-parser")
    (synopsis "API for parsing \"aeson\" JSON tree into Haskell types")
    (description
     "A flexible parser DSL of JSON AST produced by the \\\"aeson\\\" library
with automated and highly detailed error reporting.
Provides a featureful toolkit for parsing real-world documents with schemas
of any complexity or ambiguity, which the \"FromJSON\" instances
are simply not fit for.")
    (license license:expat)))

haskell-9.2-aeson-value-parser

(define-public haskell-9.2-aeson-yak
  (package
    (name "haskell-9.2-aeson-yak")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/tejon/aeson-yak")
    (synopsis "Handle JSON that may or may not be a list, or exist")
    (description
     "According to the standard promoted by Schema.org, the same JSON object
field may legally contain an array or a single element, be null, or be
absent entirely. This library provides an intermediary data type and
supporting functions to help aeson parse and output JSON conforming to this
frustrating behavior.")
    (license license:expat)))

haskell-9.2-aeson-yak

(define-public haskell-9.2-amqp
  (package
    (name "haskell-9.2-amqp")
    (version "0.22.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/amqp/amqp-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0z1w35ar0bswbjzgana52nh4ilxbidnfkvli29w2zr7cak9dgzg1"))))
    (properties `((upstream-name . "amqp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-clock)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-connection)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-xml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hreinhardt/amqp")
    (synopsis "Client library for AMQP servers (currently only RabbitMQ)")
    (description "Client library for AMQP servers (currently only RabbitMQ)")
    (license license:bsd-3)))

haskell-9.2-amqp

(define-public haskell-9.2-aur
  (package
    (name "haskell-9.2-aur")
    (version "7.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/aur/aur-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0k8b3rc89ibln7idb1a1f6g3p04f1n7mnk8q8nqiggygf8r6sdnh"))))
    (properties `((upstream-name . "aur") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0lxhkpxxg7gvwa47bdk2hi0f9ww1kvrmkwy41ar64lp124frcvsf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/fosskers/aura")
    (synopsis "Access metadata from the Arch Linux User Repository.")
    (description
     "Access package information from Arch Linux's AUR via its RPC interface. The
main exposed functions reflect those of the RPC. `info` gets metadata for one
package. `search` gets limited metadata for packages that match a given regex.
By default this library supports version 5 of the RPC, and hence version 4.2+
of the AUR.")
    (license license:gpl3)))

haskell-9.2-aur

(define-public haskell-9.2-authenticate-oauth
  (package
    (name "haskell-9.2-authenticate-oauth")
    (version "1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/authenticate-oauth/authenticate-oauth-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0y4v46rn0cvm0sr1v8qq1zgzllrlrr3ji5gij1xprgf1zsazcvvl"))))
    (properties `((upstream-name . "authenticate-oauth") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "198xm2qdaqwg2m9kgrkw5gdk2bh19mmj6c4d5fsbpcjnhxlh6axg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009) haskell-9.2-RSA)
                  (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-SHA)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-crypto-pubkey-types)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/yesodweb/authenticate")
    (synopsis
     "Library to authenticate with OAuth for Haskell web applications.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/authenticate-oauth>.")
    (license license:bsd-3)))

haskell-9.2-authenticate-oauth

(define-public haskell-9.2-autodocodec
  (package
    (name "haskell-9.2-autodocodec")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/autodocodec/autodocodec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pjv2nk8g7cvck2g6nm15dy2bwg3hqdhyyi4c0q7x2k0awn2qkjg"))))
    (properties `((upstream-name . "autodocodec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-validity-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/autodocodec#readme")
    (synopsis "Self-documenting encoder and decoder")
    (description "")
    (license license:expat)))

haskell-9.2-autodocodec

(define-public haskell-9.2-base32string
  (package
    (name "haskell-9.2-base32string")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://www.leonmergen.com/opensource.html")
    (synopsis "Fast and safe representation of a Base-32 string")
    (description
     "Provides an interface for converting any object that has a 'Binary' instance
to and from a base-32 Text representation.")
    (license license:expat)))

haskell-9.2-base32string

(define-public haskell-9.2-base58string
  (package
    (name "haskell-9.2-base58string")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://www.leonmergen.com/opensource.html")
    (synopsis "Fast and safe representation of a Base-58 string")
    (description
     "Provides an interface for converting any object that has a 'Binary' instance
to and from a base-58 Text representation.")
    (license license:expat)))

haskell-9.2-base58string

(define-public haskell-9.2-beam-core
  (package
    (name "haskell-9.2-beam-core")
    (version "0.9.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/beam-core/beam-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0js10ai2dqdv6fm99ni6ckiq1rbq1wm82s73h81hln0qf1xnk3ra"))))
    (properties `((upstream-name . "beam-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-free)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-vector-sized)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://travis.athougies.net/projects/beam.html")
    (synopsis
     "Type-safe, feature-complete SQL query and manipulation interface for Haskell")
    (description
     "Beam is a Haskell library for type-safe querying and manipulation of SQL databases.
Beam is modular and supports various backends. In order to use beam, you will need to use
@@beam-core@@ along with a specific backend (such as @@beam-postgres@@ or @@beam-sqlite@@) as
well as the corresponding backend.
For more information, see the user manual and tutorial on
<https://haskell-beam.github.io/beam GitHub pages>.")
    (license license:expat)))

haskell-9.2-beam-core

(define-public haskell-9.2-bech32-th
  (package
    (name "haskell-9.2-bech32-th")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bech32-th/bech32-th-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0548an9v6y14qalb1agl5bskcmpb9865lxyap162xzgskd9s4iik"))))
    (properties `((upstream-name . "bech32-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-release")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-bech32)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/input-output-hk/bech32")
    (synopsis "Template Haskell extensions to the Bech32 library.")
    (description "Template Haskell extensions to the Bech32 library, including
quasi-quoters for compile-time checking of Bech32 string
literals.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-bech32-th

(define-public haskell-9.2-binary-conduit
  (package
    (name "haskell-9.2-binary-conduit")
    (version "1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-conduit/binary-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17yj8rn6fwzbv0z6lczrddv7mkr8906xg2pf2dlvmnwb97zw7004"))))
    (properties `((upstream-name . "binary-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-quickcheck-assertions)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/qnikst/binary-conduit/")
    (synopsis "data serialization/deserialization conduit library")
    (description
     "The binary-conduit package.
Allow binary serialization using iterative conduit interface.")
    (license license:expat)))

haskell-9.2-binary-conduit

(define-public haskell-9.2-binary-instances
  (package
    (name "haskell-9.2-binary-instances")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-instances/binary-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00wwdk744x762p39jkg0azswxj0qy1lxjw8h9z2c0cvfam934987"))))
    (properties `((upstream-name . "binary-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-binary-orphans)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-text-binary)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-time-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-vector-binary-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskellari/binary-instances#readme")
    (synopsis "Orphan instances for binary")
    (description
     "`binary-instances` defines orphan instances for types in some popular packages.")
    (license license:bsd-3)))

haskell-9.2-binary-instances

(define-public haskell-9.2-bitwise-enum
  (package
    (name "haskell-9.2-bitwise-enum")
    (version "1.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bitwise-enum/bitwise-enum-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vmdr8csmxwab7s4nmqdfpqdssivh90fddk94i8wkwj1la867y1z"))))
    (properties `((upstream-name . "bitwise-enum") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1f94gscpmffhx1m88nq6h6y46b1xpzp1kwfxb362zq6k1rq7dbk9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-mono-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jnbooth/bitwise-enum")
    (synopsis "Bitwise operations on bounded enumerations")
    (description
     "Bitwise operations on bounded enumerations.

[\"Data.Enum.Set\"] Constant-time sets using bit flags.

[\"Data.Enum.Memo\"] Constant-time lookup memoization for functions on enumerated types.")
    (license license:bsd-3)))

haskell-9.2-bitwise-enum

(define-public haskell-9.2-bloodhound
  (package
    (name "haskell-9.2-bloodhound")
    (version "0.21.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bloodhound/bloodhound-" version
                    ".tar.gz"))
              (sha256
               (base32
                "01znn7g5vnhdharl8cl2symffqinbz9syanpnim3ijx7015nasf1"))))
    (properties `((upstream-name . "bloodhound") (hidden? . #f)))
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
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-semver)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/bitemyapp/bloodhound.git#readme")
    (synopsis "Elasticsearch client library for Haskell")
    (description "Elasticsearch made awesome for Haskell hackers")
    (license license:bsd-3)))

haskell-9.2-bloodhound

(define-public haskell-9.2-boltzmann-samplers
  (package
    (name "haskell-9.2-boltzmann-samplers")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/boltzmann-samplers/boltzmann-samplers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13l7ml35hm0i2rgw419n7xp2zp58pafm6gmmik3jgbmhfwgkwz6y"))))
    (properties `((upstream-name . "boltzmann-samplers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-test")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-MonadRandom)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-ad)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-hmatrix)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ieee754)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Lysxia/boltzmann-samplers#readme")
    (synopsis "Uniform random generators")
    (description
     "Random generators with a uniform distribution conditioned
to a given size.
See also @@<http://hackage.haskell.org/package/testing-feat testing-feat>@@,
which is currently a faster method with similar results.")
    (license license:expat)))

haskell-9.2-boltzmann-samplers

(define-public haskell-9.2-bookkeeping
  (package
    (name "haskell-9.2-bookkeeping")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bookkeeping/bookkeeping-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0afa4g5c9csjn747732qqbs3ghp8c4jyxhfb9k09igfaladrvzfl"))))
    (properties `((upstream-name . "bookkeeping") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-mono-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-transaction)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/arowM/haskell-bookkeeping#readme")
    (synopsis "A module for bookkeeping by double entry.")
    (description
     "A module for bookkeeping by double entry. This module provides a way to do bookkeeping programmatically.")
    (license license:expat)))

haskell-9.2-bookkeeping

(define-public haskell-9.2-bzlib-conduit
  (package
    (name "haskell-9.2-bzlib-conduit")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bzlib-conduit/bzlib-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a21zin5plsl37hkxh2jv8cxwyjrbs2fy7n5cyrzgdaa7lmp6b7b"))))
    (properties `((upstream-name . "bzlib-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-bindings-DSL)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) bzip2)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snoyberg/bzlib-conduit#readme")
    (synopsis "Streaming compression/decompression via conduits.")
    (description
     "Please see the README and docs at <https://www.stackage.org/package/bzlib-conduit>")
    (license license:bsd-3)))

haskell-9.2-bzlib-conduit

(define-public haskell-9.2-ca-province-codes
  (package
    (name "haskell-9.2-ca-province-codes")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/prikhi/ca-province-codes#readme")
    (synopsis "ISO 3166-2:CA Province Codes and Names")
    (description
     "This package contains a @@Code@@ data type containing each Canadian Province and Territory, as well as functions for converting from and to the English subdivision names.")
    (license license:bsd-3)))

haskell-9.2-ca-province-codes

(define-public haskell-9.2-cabal-plan
  (package
    (name "haskell-9.2-cabal-plan")
    (version "0.7.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal-plan/cabal-plan-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0zrk1hai7j0kk7l3nv1ca6srzz36dv1rmvzw7zby945nam7030k2"))))
    (properties `((upstream-name . "cabal-plan") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fexe" "-f-license-report" "-f-_")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-optics-core)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-semialign)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-singleton-bool)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-these)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-topograph)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/cabal-plan")
    (synopsis "Library and utility for processing cabal's plan.json file")
    (description
     "This package provides a library (see \"Cabal.Plan\") for decoding @@plan.json@@ files as
well as the simple tool @@cabal-plan@@ for extracting and pretty printing
the information contained in the @@plan.json@@ file.

@@plan.json@@ files are generated by [cabal](https://hackage.haskell.org/package/cabal-install)'s [Nix-style local builds](http://cabal.readthedocs.io/en/latest/nix-local-build.html) and contain detailed information about the build/install plan computed by the cabal solver.

== @@cabal-plan@@ utility

The @@cabal-plan@@ executable (enabled via the @@exe@@ cabal flag) provides various operations:

[info] Show basic report of dependency tree
[show] Dump 'PlanJson' data-structure via 'Show' instance
[tred] Show dependency tree as a graph
[diff] Diff two install plans
[list-bins] List all binaries
[list-bin] List single binary (useful for scripting, e.g. @@cabal list-bin exe:cabal-plan@@)
[fingerprint] Print SHA256 sums of dependencies' source tarballs and cabal files
[dot] Generate graph of dependencies in @@.dot@@ format
[topo] Print plan topologically sorted
[license-report] Generate license report for a component (only available when built with @@license-report@@ flag enabled); see <src/example/cabal-plan.md report example for cabal-plan> (<src/example/cabal-plan.html Pandoc rendered HTML>)

See also [\"New things in Haskell package QA\" Blogpost](https://oleg.fi/gists/posts/2018-01-08-haskell-package-qa.html) for a description of the @@topo@@ and @@dot@@ operations as well as how to enable tab-completion.")
    (license license:gpl2+)))

haskell-9.2-cabal-plan

(define-public haskell-9.2-cborg
  (package
    (name "haskell-9.2-cborg")
    (version "0.2.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cborg/cborg-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "07mh5bk61k5dz2x5g7fqw2cv7bjzs7v65yxvzkq7mdbkq8kwhn9f"))))
    (properties `((upstream-name . "cborg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-foptimize-gmp")
       #:cabal-revision
       ("2" "0pvnzanysxiikq3kghhax9v2m693s23v9pas03iaggw0h098yns4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-orphans)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-half)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/cborg")
    (synopsis "Concise Binary Object Representation (CBOR)")
    (description
     "This package provides an efficient implementation of the Concise
Binary Object Representation (CBOR), as specified by
[RFC 7049](https://tools.ietf.org/html/rfc7049).

If you are looking for a library for serialisation of Haskell values,
have a look at the [serialise](/package/serialise) package, which is
built upon this library.

An implementation of the standard bijection between CBOR and JSON is
provided by the [cborg-json](/package/cborg-json) package. Also see
[cbor-tool](/package/cbor-tool) for a convenient command-line utility
for working with CBOR data.

This package was formerly known as @@binary-serialise-cbor@@.")
    (license license:bsd-3)))

haskell-9.2-cborg

(define-public haskell-9.2-cereal-conduit
  (package
    (name "haskell-9.2-cereal-conduit")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cereal-conduit/cereal-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1srr7agvgfw78q5s1npjq5sgynvhjgllpihiv37ylkwqm4c4ap6r"))))
    (properties `((upstream-name . "cereal-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1imyl3g2bni8bc6kajr857xh94fscphksj3286pxfpa8yp9vqqpc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snoyberg/conduit")
    (synopsis
     "Turn Data.Serialize Gets and Puts into Sources, Sinks, and Conduits")
    (description
     "Turn Data.Serialize Gets and Puts into Sources, Sinks, and Conduits.")
    (license license:bsd-3)))

haskell-9.2-cereal-conduit

(define-public haskell-9.2-cfenv
  (package
    (name "haskell-9.2-cfenv")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/tomphp/haskell-cfenv#readme")
    (synopsis
     "A library getting the environment when running on Cloud Foundry")
    (description
     "This is a port of go-cfenv for Golang. The purpose of this library is to assist you in writing Haskell apps that run on Cloud Foundry. It provides convenience functions and structures that map to Cloud Foundry environment variable primitives.")
    (license license:bsd-3)))

haskell-9.2-cfenv

(define-public haskell-9.2-chart-svg
  (package
    (name "haskell-9.2-chart-svg")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/chart-svg/chart-svg-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1i2abnjr0nl5kwmb2lspqn80hnfdps3iw3ynzgw7klxm8vk6asvw"))))
    (properties `((upstream-name . "chart-svg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-Color)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-adjunctions)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-cubicbezier)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-foldl)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-formatn)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-lucid)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-neat-interpolation)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-numhask)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-numhask-array)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-numhask-space)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-optics-core)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-tagsoup)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/tonyday567/chart-svg#readme")
    (synopsis "Charting library targetting SVGs.")
    (description
     "This package provides a charting library targetting SVG as the rendered output.

== Usage

>>> :set -XOverloadedLabels
>>> :set -XOverloadedStrings
>>> import Chart
>>> import Optics.Core
>>> let lines = [[Point 0.0 1.0, Point 1.0 1.0, Point 2.0 5.0],[Point 0.0 0.0, Point 2.8 3.0],[Point 0.5 4.0, Point 0.5 0]]
>>> let styles = (\\c -> defaultLineStyle & #color .~ palette1 c & #size .~ 0.015) <$> [0..2]
>>> let cs = zipWith (\\s x -> LineChart s [x]) styles lines
>>> let lineExample = mempty & #charts .~ named \"line\" cs & #hudOptions .~ defaultHudOptions :: ChartSvg
>>> writeChartSvg \"other/usage.svg\" lineExample

![usage example](docs/other/usage.svg)

See \"Chart\" for a broad overview of concepts, and \"Chart.Examples\" for practical examples.")
    (license license:bsd-3)))

haskell-9.2-chart-svg

(define-public haskell-9.2-cheapskate-highlight
  (package
    (name "haskell-9.2-cheapskate-highlight")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-cheapskate)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-highlighting-kate)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/aelve/cheapskate-highlight")
    (synopsis "Code highlighting for cheapskate")
    (description
     "Code highlighting for cheapskate-parsed Markdown. Takes cheapskate AST,
returns cheapskate AST with code blocks highlighted.")
    (license license:bsd-3)))

haskell-9.2-cheapskate-highlight

(define-public haskell-9.2-cheapskate-lucid
  (package
    (name "haskell-9.2-cheapskate-lucid")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cheapskate-lucid/cheapskate-lucid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ibjfy5dbkizg8cw4avhwl62xpk735a1a7bc0nkhf9zxpq9fb0pm"))))
    (properties `((upstream-name . "cheapskate-lucid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "197nx95xw21i7zyvgzcgnr36ab6vrk17c66iz8ndwz61vp1jf6hc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-cheapskate)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-lucid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/aelve/cheapskate-lucid")
    (synopsis "Use cheapskate with Lucid")
    (description
     "A package for rendering Markdown (parsed via cheapskate) to Lucid's HTML.")
    (license license:bsd-3)))

haskell-9.2-cheapskate-lucid

(define-public haskell-9.2-chronologique
  (package
    (name "haskell-9.2-chronologique")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hourglass)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.2-chronologique

(define-public haskell-9.2-circular
  (package
    (name "haskell-9.2-circular")
    (version "0.4.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/circular/circular-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0mfsrf60cdw4c7lff8vmvkp5bj4kql46zp0f3fkx9xkf61zqkn3m"))))
    (properties `((upstream-name . "circular") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/dschrempf/circular#readme")
    (synopsis "Circular fixed-sized mutable vectors")
    (description
     "Please see the README at <https://github.com/dschrempf/circular#readme>")
    (license license:bsd-3)))

haskell-9.2-circular

(define-public haskell-9.2-componentm
  (package
    (name "haskell-9.2-componentm")
    (version "0.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/componentm/componentm-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19xnav3xiw5v8sdmw6a90wdhxxkjlkvpkwrf0pjsxlisgn93vqpg"))))
    (properties `((upstream-name . "componentm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-pretty-show)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-rio)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-teardown)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/roman/Haskell-componentm#readme")
    (synopsis "Monad for allocation and cleanup of application resources")
    (description "This library allows you to allocate resources with
clean up strategies when initializing your application.
It then provides a Monadic interface to compose multiple
resources without having to deal with cleanup operations
explicitely.")
    (license license:expat)))

haskell-9.2-componentm

(define-public haskell-9.2-conduit-concurrent-map
  (package
    (name "haskell-9.2-conduit-concurrent-map")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduit-concurrent-map/conduit-concurrent-map-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mpbklyfqdc1wzx5z4dy2x2y5zi8bb7p83q04csybj5c5f4136yq"))))
    (properties `((upstream-name . "conduit-concurrent-map") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-say)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nh2/conduit-concurrent-map")
    (synopsis "Concurrent, order-preserving mapping Conduit")
    (description
     "Provides a @@Conduit@@ that maps a function concurrently over incoming elements, maintaining input order.")
    (license license:expat)))

haskell-9.2-conduit-concurrent-map

(define-public haskell-9.2-conduit-extra
  (package
    (name "haskell-9.2-conduit-extra")
    (version "1.3.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduit-extra/conduit-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lzip3af77wxf3a3vilfymqhd26gkvabx2fkj22w74nq960c6l49"))))
    (properties `((upstream-name . "conduit-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-streaming-commons)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-typed-process)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/snoyberg/conduit")
    (synopsis "Batteries included conduit: adapters for common libraries.")
    (description
     "The conduit package itself maintains relative small dependencies. The purpose of this package is to collect commonly used utility functions wrapping other library dependencies, without depending on heavier-weight dependencies. The basic idea is that this package should only depend on haskell-platform packages and conduit.")
    (license license:expat)))

haskell-9.2-conduit-extra

(define-public haskell-9.2-constraints-extras
  (package
    (name "haskell-9.2-constraints-extras")
    (version "0.3.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/constraints-extras/constraints-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0w2wwqsgxqkn8byivrgcsi6fh1kxbivqarmdnpxyh1a1cg373xfp"))))
    (properties `((upstream-name . "constraints-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fbuild-readme")
       #:cabal-revision
       ("1" "1smha6ljia9bfgdy1h0lkgi9464rwa9lnw7rqfi1c23pzyiw13lh")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-constraints)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/obsidiansystems/constraints-extras")
    (synopsis "Utility package for constraints")
    (description
     "Convenience functions and TH for working with constraints. See <https://github.com/obsidiansystems/constraints-extras/blob/develop/README.md README.md> for example usage.")
    (license license:bsd-3)))

haskell-9.2-constraints-extras

(define-public haskell-9.2-core-data
  (package
    (name "haskell-9.2-core-data")
    (version "0.3.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/core-data/core-data-" version
                    ".tar.gz"))
              (sha256
               (base32
                "16gkll00awgb0l5mdpxd33f3szgvfsbwxlh3nkj1jsdkjrir4ggc"))))
    (properties `((upstream-name . "core-data") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-core-text)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hourglass)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-uuid)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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
    (license license:expat)))

haskell-9.2-core-data

(define-public haskell-9.2-criterion-measurement
  (package
    (name "haskell-9.2-criterion-measurement")
    (version "0.1.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/criterion-measurement/criterion-measurement-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01wrb38z16zjm85p5v1pj1qz4gijj0dl80pgzy5ggmzmfz8ibjrm"))))
    (properties `((upstream-name . "criterion-measurement") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-fast")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell/criterion")
    (synopsis "Criterion measurement functionality and associated types")
    (description
     "Measurement-related functionality extracted from Criterion, with minimal dependencies. The rationale for this is to enable alternative analysis front-ends.")
    (license license:bsd-3)))

haskell-9.2-criterion-measurement

(define-public haskell-9.2-deriveJsonNoPrefix
  (package
    (name "haskell-9.2-deriveJsonNoPrefix")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://gitlab.com/igrep/deriveJsonNoPrefix")
    (synopsis
     "Derive ToJSON/FromJSON instances in a more prefix-friendly manner.")
    (description
     "Please see the README on GitLab at <https://gitlab.com/igrep/deriveJsonNoPrefix#readme>")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-deriveJsonNoPrefix

(define-public haskell-9.2-deriving-aeson
  (package
    (name "haskell-9.2-deriving-aeson")
    (version "0.2.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/deriving-aeson/deriving-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cqq4ri9dgqkdh9wybf3wf5zxb9nihql591bk1lacnzdyxfrgcn0"))))
    (properties `((upstream-name . "deriving-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/deriving-aeson")
    (synopsis "Type driven generic aeson instance customisation")
    (description
     "This package provides a newtype wrapper with
FromJSON/ToJSON instances customisable via a phantom type parameter.
The instances can be rendered to the original type using DerivingVia.")
    (license license:bsd-3)))

haskell-9.2-deriving-aeson

(define-public haskell-9.2-di
  (package
    (name "haskell-9.2-di")
    (version "1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/di/di-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "13d503xhmnj2br9m4r4xx58hd2p8jsj8hxf9b4k4451p31kbzs54"))))
    (properties `((upstream-name . "di") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-df1)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-di-core)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-di-df1)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-di-handle)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-di-monad)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0001/di")
    (synopsis "Typeful hierarchical structured logging using di, mtl and df1.")
    (description
     "Typeful hierarchical structured logging using di, mtl and df1.

This is meta-package bringing in together things from:

* [di-core](https://hackage.haskell.org/package/di-core)

* [di-monad](https://hackage.haskell.org/package/di-monad)

* [di-handle](https://hackage.haskell.org/package/di-handle)

* [di-df1](https://hackage.haskell.org/package/di-df1)

See the \"Di\" module for more documentation.")
    (license license:bsd-3)))

haskell-9.2-di

(define-public haskell-9.2-distribution-opensuse
  (package
    (name "haskell-9.2-distribution-opensuse")
    (version "1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/distribution-opensuse/distribution-opensuse-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1yrir5x70nsw5rajcphmr7bzi7k2m05iw97bl7b3v3a5q1i69as5"))))
    (properties `((upstream-name . "distribution-opensuse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Diff)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-foldl)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-hsemail)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-parsec-class)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-turtle)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/peti/distribution-opensuse/")
    (synopsis
     "Types, functions, and tools to manipulate the openSUSE distribution")
    (description
     "This library is a loose collection of types, functions, and tools that
users and developers of the
<https://opensuse.org/ openSUSE Linux distribution> might find useful.")
    (license license:bsd-3)))

haskell-9.2-distribution-opensuse

(define-public haskell-9.2-doctemplates
  (package
    (name "haskell-9.2-doctemplates")
    (version "0.10.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/doctemplates/doctemplates-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0as0sc4x4ch5z233dqlb8xqg97xbfbzw2dqsz9rfq8rw10v9yx57"))))
    (properties `((upstream-name . "doctemplates") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "17r6ig72bzqd59p11sjaf9y27pm4yig1a1s1igs57s88cy47qz05")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Glob)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-HsYAML)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-doclayout)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-text-conversions)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jgm/doctemplates#readme")
    (synopsis "Pandoc-style document templates")
    (description "This is the text templating system used by pandoc.
It supports variable interpolation, iteration,
tests for non-blank values, pipes, and partials.
Templates are rendered to doclayout Docs,
and variable values may come from a variety of
different sources, including aeson Values.")
    (license license:bsd-3)))

haskell-9.2-doctemplates

(define-public haskell-9.2-doctest-discover
  (package
    (name "haskell-9.2-doctest-discover")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/karun012/doctest-discover")
    (synopsis "Easy way to run doctests via cabal")
    (description
     "doctest-discover provides an easy way to run doctests via cabal")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.2-doctest-discover

(define-public haskell-9.2-ecstasy
  (package
    (name "haskell-9.2-ecstasy")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ecstasy/ecstasy-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1hyb1xnc45mmghvjvnxc2wnkrks8glw2bs5jwnc1pmn3p39l4nci"))))
    (properties `((upstream-name . "ecstasy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-kan-extensions)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/isovector/ecstasy/")
    (synopsis "A GHC.Generics based entity component system.")
    (description
     "Ecstasy is an entity-component system for Haskell. It's inspired by
<https://hackage.haskell.org/package/apecs apecs>, but makes the design
decision to focus on being idiomatic rather than being fast. Maybe. I haven't
actually benchmarked it.

We achieve being idiomatic by using 'GHC.Generics' and tricky type families
to derive performant data stores given only a record of the desired
components.")
    (license license:bsd-3)))

haskell-9.2-ecstasy

(define-public haskell-9.2-elm-bridge
  (package
    (name "haskell-9.2-elm-bridge")
    (version "0.8.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/elm-bridge/elm-bridge-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0qhxjgjmbs2gr43rzxhzr6hjygkjr7fiqka93vsfi13hpv6bw2p7"))))
    (properties `((upstream-name . "elm-bridge") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/agrafix/elm-bridge")
    (synopsis
     "Derive Elm types and Json code from Haskell types, using aeson's options")
    (description
     "Building the bridge from Haskell to Elm and back. Define types once,
and derive the aeson and elm functions at the same time, using any aeson
option you like. Cheers!")
    (license license:bsd-3)))

haskell-9.2-elm-bridge

(define-public haskell-9.2-elynx-tools
  (package
    (name "haskell-9.2-elynx-tools")
    (version "0.7.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/elynx-tools/elynx-tools-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14dhq49ri7wndzkpiwv28r5w85wiwq3x2c00yz1x5ax3347jcdgh"))))
    (properties `((upstream-name . "elynx-tools") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-hmatrix)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-zlib)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/dschrempf/elynx#readme")
    (synopsis "Tools for ELynx")
    (description
     "Please see the README on GitHub at <https://github.com/dschrempf/elynx>.")
    (license license:gpl3+)))

haskell-9.2-elynx-tools

(define-public haskell-9.2-envelope
  (package
    (name "haskell-9.2-envelope")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/envelope/envelope-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ybyhq3yfcyaj1q1pwm41xzyfjdkmy6lls0n7kn5ks06z7inykfg"))))
    (properties `((upstream-name . "envelope") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-api-data)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cdepillabout/envelope#readme")
    (synopsis
     "Defines generic 'Envelope' type to wrap reponses from a JSON API.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.2-envelope

(define-public haskell-9.2-essence-of-live-coding
  (package
    (name "haskell-9.2-essence-of-live-coding")
    (version "0.2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/essence-of-live-coding/essence-of-live-coding-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vg10x8radvr8ysqfzf1cngp2hnqy8g139x07pwqwycj9zwwnbl4"))))
    (properties `((upstream-name . "essence-of-live-coding") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-foreign-store)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-mmorph)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-vector-sized)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://www.manuelbaerenz.de/#computerscience")
    (synopsis "General purpose live coding framework")
    (description
     "essence-of-live-coding is a general purpose and type safe live coding framework.

You can run programs in it, and edit, recompile and reload them while they're running.
Internally, the state of the live program is automatically migrated when performing hot code swap.

The library also offers an easy to use FRP interface.
It is parametrized by its side effects,
separates data flow cleanly from control flow,
and allows to develop live programs from reusable, modular components.
There are also useful utilities for debugging and quickchecking.")
    (license license:bsd-3)))

haskell-9.2-essence-of-live-coding

(define-public haskell-9.2-file-modules
  (package
    (name "haskell-9.2-file-modules")
    (version "0.1.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/file-modules/file-modules-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dgjy3axfhgv5nkvwbaylc8hc8d1fjb53n2rhmpxfzppa6yjvspz"))))
    (properties `((upstream-name . "file-modules") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-MissingH)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-regex-compat)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-pcre)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/yamadapc/stack-run-auto")
    (synopsis "Takes a Haskell source-code file and outputs its modules.")
    (description
     "Uses @@haskell-src-exts@@ to parse module imports and follows links
. to local modules in order to build a list of module dependencies.")
    (license license:expat)))

haskell-9.2-file-modules

(define-public haskell-9.2-forma
  (package
    (name "haskell-9.2-forma")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/forma/forma-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "13kyggzlf156d3d3mj453jwmafyz74vk4bim3f30zxyd6syl3m5v"))))
    (properties `((upstream-name . "forma") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "12336x0g41hp6brl4ynw0m32kj3n191945qfgp8xaabm5qrchinj")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mrkkrp/forma")
    (synopsis "Parse and validate forms in JSON format")
    (description "Parse and validate forms in JSON format.")
    (license license:bsd-3)))

haskell-9.2-forma

(define-public haskell-9.2-ftp-client
  (package
    (name "haskell-9.2-ftp-client")
    (version "0.5.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ftp-client/ftp-client-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0c2xn2q24imrfgsx4zxzi24ciwkrly6n47lc5k5406j5b4znn5lf"))))
    (properties `((upstream-name . "ftp-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1a7xya5c89lj4s73bd0cgr53id53xz4fnqzrizdibb6a90ml7g9r")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-connection)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mr/ftp-client")
    (synopsis "Transfer files with FTP and FTPS")
    (description
     "ftp-client is a library for communicating with an FTP server. It works over both a clear channel or TLS.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.2-ftp-client

(define-public haskell-9.2-generic-aeson
  (package
    (name "haskell-9.2-generic-aeson")
    (version "0.2.0.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generic-aeson/generic-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ssras2db9fqgyfhhw2pk827xf4dd4g9s9vwj8g85vaqxyvzyd8x"))))
    (properties `((upstream-name . "generic-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-generic-deriving)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/generic-aeson")
    (synopsis "Derivation of Aeson instances using GHC generics.")
    (description "Derivation of Aeson instances using GHC generics.")
    (license license:bsd-3)))

haskell-9.2-generic-aeson

(define-public haskell-9.2-genvalidity-bytestring
  (package
    (name "haskell-9.2-genvalidity-bytestring")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-bytestring/genvalidity-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fvd5h47qlzwggz5brszld7pf8rpwmiqr1h9n22rfm6dmczzh49k"))))
    (properties `((upstream-name . "genvalidity-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-genvalidity)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-validity-bytestring)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for ByteString")
    (description "")
    (license license:expat)))

haskell-9.2-genvalidity-bytestring

(define-public haskell-9.2-genvalidity-containers
  (package
    (name "haskell-9.2-genvalidity-containers")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-containers/genvalidity-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "155ri2ncwcjx2gl3mimfkafqdf33mzkk1188dk97wbzg0rpq69ip"))))
    (properties `((upstream-name . "genvalidity-containers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-genvalidity)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-genvalidity-property)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-validity-containers)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for containers")
    (description "")
    (license license:expat)))

haskell-9.2-genvalidity-containers

(define-public haskell-9.2-genvalidity-hspec-binary
  (package
    (name "haskell-9.2-genvalidity-hspec-binary")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-binary/genvalidity-hspec-binary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08avm7kdx6y90mmms5hdq4xryg5jdca6bqfhzy9wrkr79q2jv4vc"))))
    (properties `((upstream-name . "genvalidity-hspec-binary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-genvalidity)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-genvalidity-property)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Standard spec's for binary-related Instances")
    (description
     "Standard spec's for cereal-related Instances, see https://hackage.haskell.org/package/binary.")
    (license license:expat)))

haskell-9.2-genvalidity-hspec-binary

(define-public haskell-9.2-genvalidity-hspec-cereal
  (package
    (name "haskell-9.2-genvalidity-hspec-cereal")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-cereal/genvalidity-hspec-cereal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cj5jcgjyjf8ib7h8ldkjfwgdq4wzk7xkmxlmyyi37iscjpv32ni"))))
    (properties `((upstream-name . "genvalidity-hspec-cereal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-genvalidity)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-genvalidity-property)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)))
    (home-page "http://cs-syd.eu")
    (synopsis "Standard spec's for cereal-related instances")
    (description "")
    (license license:expat)))

haskell-9.2-genvalidity-hspec-cereal

(define-public haskell-9.2-genvalidity-hspec-hashable
  (package
    (name "haskell-9.2-genvalidity-hspec-hashable")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-hashable/genvalidity-hspec-hashable-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14fg796iivlpp4gqsmma9zf0z9iqk524ydyqmza83qrjh8v2ff5v"))))
    (properties `((upstream-name . "genvalidity-hspec-hashable")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-genvalidity)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-genvalidity-property)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hspec-core)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Standard spec's for Hashable instances")
    (description "Standard spec's for Hashable instances")
    (license license:expat)))

haskell-9.2-genvalidity-hspec-hashable

(define-public haskell-9.2-genvalidity-hspec-optics
  (package
    (name "haskell-9.2-genvalidity-hspec-optics")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-optics/genvalidity-hspec-optics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bhhhihk4r8q78l35dm4gm8kf5mjzpynawbcq9vzpq3ny9h7bxmr"))))
    (properties `((upstream-name . "genvalidity-hspec-optics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-genvalidity)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-genvalidity-property)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)))
    (home-page "http://cs-syd.eu")
    (synopsis "Standard spec's for lens")
    (description "Standard spec's for lens (van Laarhoven encoding)")
    (license license:expat)))

haskell-9.2-genvalidity-hspec-optics

(define-public haskell-9.2-genvalidity-scientific
  (package
    (name "haskell-9.2-genvalidity-scientific")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-scientific/genvalidity-scientific-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xi1a1jsby1dqv50lmpp98x2y5j9vaf3sl38spv5bnafyp1i6pmq"))))
    (properties `((upstream-name . "genvalidity-scientific") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-genvalidity)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-validity-scientific)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for Scientific")
    (description "")
    (license license:expat)))

haskell-9.2-genvalidity-scientific

(define-public haskell-9.2-genvalidity-time
  (package
    (name "haskell-9.2-genvalidity-time")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-time/genvalidity-time-"
                    version ".tar.gz"))
              (sha256
               (base32
                "153c6kcrfr7lkps7sqix7478wz837v15nfznfjsycl17m9vmlz46"))))
    (properties `((upstream-name . "genvalidity-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-genvalidity)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-validity-time)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for time")
    (description "Please see README.md")
    (license license:expat)))

haskell-9.2-genvalidity-time

(define-public haskell-9.2-genvalidity-unordered-containers
  (package
    (name "haskell-9.2-genvalidity-unordered-containers")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-unordered-containers/genvalidity-unordered-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sd67x2kw7l0kbsaa67x3an94sv1hvnkbb8r42v36cc5jjaw29dk"))))
    (properties `((upstream-name . "genvalidity-unordered-containers")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-genvalidity)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-validity-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for unordered-containers")
    (description "")
    (license license:expat)))

haskell-9.2-genvalidity-unordered-containers

(define-public haskell-9.2-genvalidity-uuid
  (package
    (name "haskell-9.2-genvalidity-uuid")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-uuid/genvalidity-uuid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15nnfpqdbvr4jhrykgj3djp4sc0n08wlwnvfbv73k30z49cqnd5k"))))
    (properties `((upstream-name . "genvalidity-uuid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-genvalidity)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-uuid)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-validity-uuid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for UUID")
    (description "")
    (license license:expat)))

haskell-9.2-genvalidity-uuid

(define-public haskell-9.2-genvalidity-vector
  (package
    (name "haskell-9.2-genvalidity-vector")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-vector/genvalidity-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1l2zjbfjg05xxxgn359zfj93yx26zcz9xlayw2jf9brwv8wx23gy"))))
    (properties `((upstream-name . "genvalidity-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-genvalidity)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-validity-vector)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for vector")
    (description "")
    (license license:expat)))

haskell-9.2-genvalidity-vector

(define-public haskell-9.2-ghc-typelits-presburger
  (package
    (name "haskell-9.2-ghc-typelits-presburger")
    (version "0.6.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-typelits-presburger/ghc-typelits-presburger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11rzfvs2kvknz8892bii2ljh6hbaa1zy0hnwi6pi1xghvwp1fckq"))))
    (properties `((upstream-name . "ghc-typelits-presburger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-equational-reasoning)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ghc-tcplugins-extra)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-reflection)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-discover)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (home-page "https://github.com/konn/ghc-typelits-presburger#readme")
    (synopsis
     "Presburger Arithmetic Solver for GHC Type-level natural numbers.")
    (description
     "@@ghc-typelits-presburger@@ augments GHC type-system with Presburger
Arithmetic Solver for Type-level natural numbers.
This plugin only work with GHC builtin operations.
To work with those of @@singletons@@ package, use @@ghc-typelits-meta@@ and/or @@ghc-typelits-presburger@@ instead.

Since 0.3.0.0, integration with <https://hackage.haskell.org/package/singletons singletons> package moves to <https://hackage.haskell.org/package/singletons-presburger singletons-presburger>.

You can use by adding this package to @@build-depends@@ and add the following pragma
to the head of .hs files:


> OPTIONS_GHC -fplugin GHC.TypeLits.Presburger")
    (license license:bsd-3)))

haskell-9.2-ghc-typelits-presburger

(define-public haskell-9.2-git-lfs
  (package
    (name "haskell-9.2-git-lfs")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/git-lfs/git-lfs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1iv3s1c7gwmsima9z3rsphjligpnf7h3vc5c96zgq9b71cx81lba"))))
    (properties `((upstream-name . "git-lfs") (hidden? . #f)))
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
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/git-lfs")
    (synopsis "git-lfs protocol")
    (description "An implementation of the git-lfs protocol.")
    (license (license "FSDG-compatible" "AGPL" ""))))

haskell-9.2-git-lfs

(define-public haskell-9.2-github-types
  (package
    (name "haskell-9.2-github-types")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/github-types")
    (synopsis "Type definitions for objects used by the GitHub v3 API")
    (description "This package includes (some) type definitions for objects
which are consumed or produced by the GitHub v3 API.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-github-types

(define-public haskell-9.2-github-webhooks
  (package
    (name "haskell-9.2-github-webhooks")
    (version "0.16.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/github-webhooks/github-webhooks-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h0l4p0wyy4d6k43gxjfjx2fv0a59xd900dr14ydxdjn75yhc7g0"))))
    (properties `((upstream-name . "github-webhooks") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-ci")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-deepseq-generics)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cuedo/github-webhooks#readme")
    (synopsis "Aeson instances for GitHub Webhook payloads.")
    (description
     "Complete instances for decoding GitHub Webhook payloads (using @@aeson@@). See the README at <https://github.com/cuedo/github-webhooks#readme> for examples. Sponsored by <https://cuedo.com.au>.")
    (license license:expat)))

haskell-9.2-github-webhooks

(define-public haskell-9.2-gitlib
  (package
    (name "haskell-9.2-gitlib")
    (version "3.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gitlib/gitlib-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "02gk4z3q1hrr6wl7c2989ib2nqf8wcsx9msq6nbsfhxjsmc7qds7"))))
    (properties `((upstream-name . "gitlib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jwiegley/gitlib")
    (synopsis "API library for working with Git repositories")
    (description
     "@@gitlib@@ is a high-level, lazy and conduit-aware set of abstractions for
programming with Git types.  Several different backends are available,
including one for the libgit2 C library (<http://libgit2.github.com>) (see
@@gitlib-libgit2@@).  The aim is both type-safety and convenience of use for
Haskell users, combined with high performance and minimal memory footprint
by taking advantage of Haskell's laziness and the conduit library's
deterministic resource cleanup.

For further information, as well as typical use cases, see \"Git.Tutorial\".")
    (license license:expat)))

haskell-9.2-gitlib

(define-public haskell-9.2-groom
  (package
    (name "haskell-9.2-groom")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/groom/groom-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "17g51p15209wwgq83clsd97xvy4kchbx8jzh74qgc9hvmz9s9d56"))))
    (properties `((upstream-name . "groom") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-haskell-src-exts)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/groom")
    (synopsis "Pretty printing for well-behaved Show
instances.")
    (description
     "Automatically derived Show instances are an easy way
to inspect data in your program.  However, for large
data-structures, the resulting output lacks
whitespace, making it unreadable.  Groom offers an
replacement to `show' called `groom' which attempts
to pretty-print the output of `show'.  For example:

> let x = parseExp \"foobar 1 [1,2]\"
> in do
>   putStrLn (show x)
>   putStrLn (groom x)

results in:

> ParseOk (App (App (Var (UnQual (Ident \"foobar\"))) (Lit (Int 1))) (List [Lit (Int 1),Lit (Int 2)]))
> ParseOk
>   (App (App (Var (UnQual (Ident \"foobar\"))) (Lit (Int 1)))
>      (List [Lit (Int 1), Lit (Int 2)]))

Groom works only on Show instances that output valid
Haskell code; if Groom can't understand its input,
it will not make any changes.")
    (license license:bsd-3)))

haskell-9.2-groom

(define-public haskell-9.2-hackage-cli
  (package
    (name "haskell-9.2-hackage-cli")
    (version "0.0.3.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hackage-cli/hackage-cli-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wnh3571mgwyl9c5bfkwvr4rvsnw41qb9mlz1nda1ya53qfdjl4p"))))
    (properties `((upstream-name . "hackage-cli") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "06225nrw6icdlkcxp0wnh006fxsnyfpl55i9qm7pgybxb3qgf8l0")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-io-streams)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-io-streams)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-microlens-mtl)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-microlens-th)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-netrc)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-process-extras)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-stringsearch)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-tagsoup)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-tar)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-zlib)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/hackage-trustees/hackage-cli")
    (synopsis "CLI tool for Hackage")
    (description "With @@hackage-cli@@ you can manage @@.cabal@@ files,
e.g. (bulk-)upload revised variants.")
    (license license:gpl3+)))

haskell-9.2-hackage-cli

(define-public haskell-9.2-hackage-db
  (package
    (name "haskell-9.2-hackage-db")
    (version "2.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hackage-db/hackage-db-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1aj82n2ay16zman829gq7s9dkg3qyyavca8hhjfibx8hzg6pmnap"))))
    (properties `((upstream-name . "hackage-db") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-install-examples")
       #:cabal-revision
       ("1" "12k9vm584l6glfkj92j1b2498g2sijdb8ypjmbb01yfn2xgbhkiv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-tar)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/NixOS/cabal2nix/tree/master/hackage-db#readme")
    (synopsis "Access cabal-install's Hackage database via Data.Map")
    (description
     "This library provides convenient access to the local copy of the Hackage
database that \\\"cabal update\\\" creates. Check out
<https://github.com/NixOS/hackage-db/tree/master/example/> for a collection
of simple example programs that demonstrate how to use this code.")
    (license license:bsd-3)))

haskell-9.2-hackage-db

(define-public haskell-9.2-hackage-security
  (package
    (name "haskell-9.2-hackage-security")
    (version "0.6.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hackage-security/hackage-security-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rm0avcc1k247qbrajhzi3vz92cgcc4nr3kbhhfmfm8rjxv0bvjj"))))
    (properties `((upstream-name . "hackage-security") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbase48" "-fuse-network-uri" "-f-cabal-syntax" "-f-old-directory" "-f-mtl21" "-flukko")
       #:cabal-revision
       ("2" "07i8f4sappqphh39jj9268a6ci7l972qi33p4zydsdrvh5s58h0q")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-Cabal-syntax)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ed25519)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-lukko)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-tar)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell/hackage-security")
    (synopsis "Hackage security library")
    (description "The hackage security library provides both server and
client utilities for securing the Hackage package server
(<https://hackage.haskell.org/>).  It is based on The Update
Framework (<https://theupdateframework.com/>), a set of
recommendations developed by security researchers at
various universities in the US as well as developers on the
Tor project (<https://www.torproject.org/>).

The current implementation supports only index signing,
thereby enabling untrusted mirrors. It does not yet provide
facilities for author package signing.

The library has two main entry points:
\"Hackage.Security.Client\" is the main entry point for
clients (the typical example being @@cabal@@), and
\"Hackage.Security.Server\" is the main entry point for
servers (the typical example being @@hackage-server@@).")
    (license license:bsd-3)))

haskell-9.2-hackage-security

(define-public haskell-9.2-hasbolt
  (package
    (name "haskell-9.2-hasbolt")
    (version "0.1.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hasbolt/hasbolt-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1y7vjng3qjy5jaj3c90b5a08xrn49c4bb2wa9s612ny5qc98dl9g"))))
    (properties `((upstream-name . "hasbolt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "029sw5fqcqpzsx2ahkngfimyd9kyjn7abg0cvz4pb8y96ypl3cs7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-connection)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-deepseq-generics)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/zmactep/hasbolt#readme")
    (synopsis "Haskell driver for Neo4j 3+ (BOLT protocol)")
    (description
     "Haskell driver for Neo4j 3+ (BOLT protocol).

The package covers:

-Data serialization and deserialization

-Nodes, relationships and paths support

-Cypher queries and responses

-Transactions and error handling

-Authentification

-TLS/SSL connection

-Bolt protocol version 3 initial support

The code was tested with neo4j versions 3.0 — 3.5 and GrapheneDB service")
    (license license:bsd-3)))

haskell-9.2-hasbolt

(define-public haskell-9.2-haskell-src-exts-simple
  (package
    (name "haskell-9.2-haskell-src-exts-simple")
    (version "1.23.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-src-exts-simple/haskell-src-exts-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jfdjaikmjx9sfairp4jjn0vzhw5vhwrg43y082ddpc1bgx2jw7m"))))
    (properties `((upstream-name . "haskell-src-exts-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-haskell-src-exts)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/int-e/haskell-src-exts-simple")
    (synopsis "A simplified view on the haskell-src-exts AST")
    (description
     "This package provides a shim for haskell-src-exts (HSE), exposing the
same AST but without annotations, using ghc's pattern synonyms.

See README.md for further information and compatibility considerations.")
    (license license:expat)))

haskell-9.2-haskell-src-exts-simple

(define-public haskell-9.2-haskell-src-exts-util
  (package
    (name "haskell-9.2-haskell-src-exts-util")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-src-exts-util/haskell-src-exts-util-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fvqi72m74p7q5sbpy8m2chm8a1lgy10mfrcxcz8wrh59vngj0n8"))))
    (properties `((upstream-name . "haskell-src-exts-util") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-uniplate)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/pepeiborra/haskell-src-exts-util")
    (synopsis "Helper functions for working with haskell-src-exts trees")
    (description "Helper functions for working with haskell-src-exts trees.")
    (license license:bsd-3)))

haskell-9.2-haskell-src-exts-util

(define-public haskell-9.2-haskell-src-meta
  (package
    (name "haskell-9.2-haskell-src-meta")
    (version "0.8.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-src-meta/haskell-src-meta-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wks0xb7ah2gj9n0ffbcaskjihy45l99qkf2h9k13cyfvqkzp9rw"))))
    (properties `((upstream-name . "haskell-src-meta") (hidden? . #f)))
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
                     haskell-9.2-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-th-orphans)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/haskell-src-meta")
    (synopsis "Parse source to template-haskell abstract syntax.")
    (description "The translation from haskell-src-exts abstract syntax
to template-haskell abstract syntax isn't 100% complete yet.")
    (license license:bsd-3)))

haskell-9.2-haskell-src-meta

(define-public haskell-9.2-haskintex
  (package
    (name "haskell-9.2-haskintex")
    (version "0.8.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskintex/haskintex-" version
                    ".tar.gz"))
              (sha256
               (base32
                "12q6j9z7hwb93sli4wk4lidlf3m7y3dazpp5ymvpbxnb7wjzirr6"))))
    (properties `((upstream-name . "haskintex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-HaTeX)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-hint)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://daniel-diaz.github.io/projects/haskintex")
    (synopsis "Haskell Evaluation inside of LaTeX code.")
    (description
     "The /haskintex/ (Haskell in LaTeX) program is a tool that reads a LaTeX file and evaluates Haskell expressions contained
in some specific commands and environments. It allows you to define your own functions, use any GHC Haskell language
extension and, in brief, anything you can do within Haskell.
Additionally, it is possible to include expressions of 'LaTeX' type (see /HaTeX/ package) and render them as LaTeX code.
You can freely add any Haskell code you need, and make this code appear /optionally/ in the LaTeX output. It is a tiny program,
and therefore, easy to understand, use and predict.

Additions from last version:

* /haskintex/ is now able to detect that is running on a cabal sandbox, and will use the sandbox package
db if this is the case. Unless the flag @@-nosandbox@@ is given, in which case the sandbox will be ignored.

* New flag @@-nosandbox@@. Ignore sandbox if /haskintex/ runs on one.
")
    (license license:bsd-3)))

haskell-9.2-haskintex

(define-public haskell-9.2-haskoin-core
  (package
    (name "haskell-9.2-haskoin-core")
    (version "0.21.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskoin-core/haskoin-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12i490xjfb0aav18ay3ahh0hpa9l5095a4hmva1ka3497clm7cfr"))))
    (properties `((upstream-name . "haskoin-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-base16)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-bytes)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-entropy)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-murmur3)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-secp256k1-haskell)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-string-conversions)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskoin/haskoin#readme")
    (synopsis "Bitcoin & Bitcoin Cash library for Haskell")
    (description
     "Please see the README on GitHub at <https://github.com/haskoin/haskoin-core#readme>")
    (license license:expat)))

haskell-9.2-haskoin-core

(define-public haskell-9.2-heatshrink
  (package
    (name "haskell-9.2-heatshrink")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/heatshrink/heatshrink-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0zzk9mpg430fw4jvb9vyszmdv8vyrbjs65b6dmh7n87b5ldi3par"))))
    (properties `((upstream-name . "heatshrink") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004) haskell-9.2-c2hs)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-pcre-heavy)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fpinsight/heatshrink#readme")
    (synopsis "Compression and decompression using heatshrink")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.2-heatshrink

(define-public haskell-9.2-hedis
  (package
    (name "haskell-9.2-hedis")
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
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "1ppc8xygcqv9s9jf44s1hh7ndm9mrvjxjwhv5g2rfdkkbsfyr7r5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-HTTP)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-bytestring-lexing)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-errors)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-resource-pool)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-scanner)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-tls)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
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

haskell-9.2-hedis

(define-public haskell-9.2-hkd-default
  (package
    (name "haskell-9.2-hkd-default")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/versioncloud/hkd-default#readme")
    (synopsis "Apply default value for optional field of HKD")
    (description "Please see http://hackage.haskell.org/package/hkd-default")
    (license license:bsd-3)))

haskell-9.2-hkd-default

(define-public haskell-9.2-hourglass-orphans
  (package
    (name "haskell-9.2-hourglass-orphans")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hourglass)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-hspec-expectations)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/psibi/hourglass-orphans#readme")
    (synopsis "Orphan Aeson instances to hourglass")
    (description "Orphan Aeson instances to hourglass")
    (license license:bsd-3)))

haskell-9.2-hourglass-orphans

(define-public haskell-9.2-hpqtypes
  (package
    (name "haskell-9.2-hpqtypes")
    (version "1.9.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hpqtypes/hpqtypes-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0m0jpv0d2zynhn53gbjb50sb91lxss71qnzhcy30agxvf29qpi0w"))))
    (properties `((upstream-name . "hpqtypes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1xpbb5js710rd7kbdgx6hl10dl7n95yp6pidqrh8f9ifwx076k3g")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-lifted-base)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-resource-pool)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-text-show)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-uuid-types)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/scrive/hpqtypes")
    (synopsis "Haskell bindings to libpqtypes")
    (description
     "Efficient and easy-to-use bindings to (slightly modified)
@@libpqtypes@@, a @@libpq@@ extension that adds support
for a binary transport format and composite types.

Since modified @@libpqtypes@@ is used, its source
code is bundled along with the bindings. The
differences between verbatim @@libpqtypes@@ and the
one used by this package:

* Per-thread global error structures were replaced by
explicit passing of these structures around so that
there is no need to use bound threads.

* Handlers that take values to be put into the
database were modified to always expect
pointers to objects, as opposed to previous
situation where primitives were being taken by
value (which was convenient if the library was
used directly from C, but created inconsistency
problems while trying to define bindings in a
sensible way).

Examples can be found in the
<https://github.com/scrive/hpqtypes/tree/master/examples examples>
directory.")
    (license license:bsd-3)))

haskell-9.2-hpqtypes

(define-public haskell-9.2-hruby
  (package
    (name "haskell-9.2-hruby")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hruby/hruby-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "10ldq23lgp3jcxpdm9b1dryjf4sprsjlc4qs1lnjb9cmfcafrqj4"))))
    (properties `((upstream-name . "hruby") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages ruby) ruby-3.2)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/hruby")
    (synopsis "Embed a Ruby intepreter in your Haskell program !")
    (description
     "This works with Ruby 2.2+. Everything you need should be in Foreign.Ruby.Safe.")
    (license license:bsd-3)))

haskell-9.2-hruby

(define-public haskell-9.2-hse-cpp
  (package
    (name "haskell-9.2-hse-cpp")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hse-cpp/hse-cpp-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0k2bmsk6d3ym7z71bwxicc0b8wsw0camjgxgbybx4pdz0261dc7f"))))
    (properties `((upstream-name . "hse-cpp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-cpphs)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-haskell-src-exts)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/hse-cpp")
    (synopsis "Preprocess+parse haskell code")
    (description "")
    (license license:expat)))

haskell-9.2-hse-cpp

(define-public haskell-9.2-hslua-marshalling
  (package
    (name "haskell-9.2-hslua-marshalling")
    (version "2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-marshalling/hslua-marshalling-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xmix1frfcyv4p51rnshrg02gba7di7nrrc6chsq71d3mbwhyask"))))
    (properties `((upstream-name . "hslua-marshalling") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-hslua-core)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-lua-arbitrary)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-tasty-hslua)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hslua.org/")
    (synopsis "Marshalling of values between Haskell and Lua.")
    (description "Provides functions to marshal values from Haskell
to Lua, and /vice versa/.

This package is part of HsLua, a Haskell framework
built around the embeddable scripting language
<https://lua.org Lua>.")
    (license license:expat)))

haskell-9.2-hslua-marshalling

(define-public haskell-9.2-http-api-data-qq
  (package
    (name "haskell-9.2-http-api-data-qq")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-api-data-qq/http-api-data-qq-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lvfdbprdwq09k1wkjfvvkpi79053dc4kzkv4g1cx94qb1flbd7a"))))
    (properties `((upstream-name . "http-api-data-qq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "03gwjxnd0kcnh18bzlwkb8yivmcjrl8wb0v82y4jqvjy19d61d0n")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-api-data)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/brandonchinn178/http-api-data-qq#readme")
    (synopsis "Quasiquoter for building URLs with ToHttpApiData types")
    (description "Quasiquoter for building URLs with strings interpolated
using ToHttpApiData instances")
    (license license:bsd-3)))

haskell-9.2-http-api-data-qq

(define-public haskell-9.2-http-client-openssl
  (package
    (name "haskell-9.2-http-client-openssl")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-client-openssl/http-client-openssl-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03rr1wz1907v3gx5qsqdkd850hy47glb574s69265pv6yspaivdx"))))
    (properties `((upstream-name . "http-client-openssl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-test-proxy")
       #:cabal-revision
       ("1" "0f2x40wdd09svjylg1zwapnnqgvxid1fcakvwgxlz61a16w8sfb6")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-HsOpenSSL)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-HsOpenSSL-x509-system)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/http-client")
    (synopsis "http-client backend using the OpenSSL library.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/http-client>.")
    (license license:expat)))

haskell-9.2-http-client-openssl

(define-public haskell-9.2-http-client-tls
  (package
    (name "haskell-9.2-http-client-tls")
    (version "0.3.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-client-tls/http-client-tls-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03f8p9gxdzl6slyw1r6vpv2dqhsyjvbaawbjv75kaq0vlj3gz7xi"))))
    (properties `((upstream-name . "http-client-tls") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-connection)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/http-client")
    (synopsis
     "http-client backend using the connection package and tls library")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <https://www.stackage.org/package/http-client-tls>.")
    (license license:expat)))

haskell-9.2-http-client-tls

(define-public haskell-9.2-http-link-header
  (package
    (name "haskell-9.2-http-link-header")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-link-header/http-link-header-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15pcav5k7j4pvqwkyyrqgcm7yxqippx4yiprsg9fpml4kywcr2ca"))))
    (properties `((upstream-name . "http-link-header") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "16xbv4cz8b9gh42za6bhz73qcqrd5ix330cs4prj2jn124hb9xwx")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-errors)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-hspec-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-api-data)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://codeberg.org/valpackett/http-link-header")
    (synopsis "HTTP Link header parser/writer")
    (description
     "A parser and writer for the HTTP Link header per RFC 5988 (see README.md for more info)")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.2-http-link-header

(define-public haskell-9.2-http-streams
  (package
    (name "haskell-9.2-http-streams")
    (version "0.8.9.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-streams/http-streams-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h8nnp1y4ngv6mwr3fxv428kcvrd3ming179sza8fkn49pcwdlxs"))))
    (properties `((upstream-name . "http-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-HsOpenSSL)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-http-common)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-io-streams)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-openssl-streams)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/aesiniath/http-streams/")
    (synopsis "An HTTP client using io-streams")
    (description
     "An HTTP client, using the Snap Framework's 'io-streams' library to
handle the streaming IO. The API is optimized for ease of use for the
rather common case of code needing to query web services and deal with
the result.

The library is exported in a single module; see \"Network.Http.Client\"
for full documentation.")
    (license license:bsd-3)))

haskell-9.2-http-streams

(define-public haskell-9.2-incremental
  (package
    (name "haskell-9.2-incremental")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/incremental/incremental-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s2hlhszk8aj5zbl64il5c9gccda64bfbgwfl5fvzsdr79qylv40"))))
    (properties `((upstream-name . "incremental") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fumieval/incremental#readme")
    (synopsis "incremental update library")
    (description "Generic interface for incremental updates")
    (license license:bsd-3)))

haskell-9.2-incremental

(define-public haskell-9.2-incremental-parser
  (package
    (name "haskell-9.2-incremental-parser")
    (version "0.5.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/incremental-parser/incremental-parser-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gk3qxn8hg15h6aw7aswjr302pda2m20irzmbc6av2hw254d8b9p"))))
    (properties `((upstream-name . "incremental-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-input-parsers)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-monoid-subclasses)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-parsers)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-rank2classes)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/blamario/incremental-parser")
    (synopsis
     "Generic parser library capable of providing partial results from partial input.")
    (description
     "This package defines yet another parser combinator library. This one is implemented using the concept of Brzozowski
derivatives, tweaked and optimized to work with any monoidal input type. Lists, ByteString, and Text are supported out
of the box, as well as any other data type for which the monoid-subclasses package defines instances. If the parser
result is also a monoid, its chunks can be extracted incrementally, before the complete input is parsed.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-incremental-parser

(define-public haskell-9.2-inline-c-cpp
  (package
    (name "haskell-9.2-inline-c-cpp")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/inline-c-cpp/inline-c-cpp-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0m14nb9brpnh2cgq8gg6182mdcmn45hf734la68dnhq23sn63lpx"))))
    (properties `((upstream-name . "inline-c-cpp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-std-vector-example")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-inline-c)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/inline-c-cpp")
    (synopsis "Lets you embed C++ code into Haskell.")
    (description
     "Utilities to inline C++ code into Haskell using inline-c.  See
tests for example on how to build.")
    (license license:expat)))

haskell-9.2-inline-c-cpp

(define-public haskell-9.2-ipython-kernel
  (package
    (name "haskell-9.2-ipython-kernel")
    (version "0.10.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ipython-kernel/ipython-kernel-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zvcqgvrykfmp706snbpxy8ia0hkxshrj8r8kfwkvkwhxd72ad5c"))))
    (properties `((upstream-name . "ipython-kernel") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-uuid)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-zeromq4-haskell)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/gibiansky/IHaskell")
    (synopsis "A library for creating kernels for IPython frontends")
    (description
     "ipython-kernel is a library for communicating with frontends for the interactive IPython framework. It is used extensively in IHaskell, the interactive Haskell environment.")
    (license license:expat)))

haskell-9.2-ipython-kernel

(define-public haskell-9.2-jose-jwt
  (package
    (name "haskell-9.2-jose-jwt")
    (version "0.9.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/jose-jwt/jose-jwt-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1drdlxbhbac3b6ph2l969vvicmg1yww9yhz3pd9maq7pdajbpjcc"))))
    (properties `((upstream-name . "jose-jwt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-doctest")
       #:cabal-revision
       ("1" "1xhkdmfsl2wwkjk384gy6bwp2bhncdjgqvncdnzpx9b801v67f3c")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/tekul/jose-jwt")
    (synopsis "JSON Object Signing and Encryption Library")
    (description
     "
An implementation of the JOSE suite of IETF standards
and the closely related JWT (JSON web token) spec
(<https://tools.ietf.org/html/rfc7519/>).

Both signed and encrypted JWTs are supported, as well as simple
JWK keys.")
    (license license:bsd-3)))

haskell-9.2-jose-jwt

(define-public haskell-9.2-json-feed
  (package
    (name "haskell-9.2-json-feed")
    (version "2.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/json-feed/json-feed-" version
                    ".tar.gz"))
              (sha256
               (base32
                "022zdas84skhh9s17k6mx45axrzfv2c7jf7f2rhk324706b7wxfl"))))
    (properties `((upstream-name . "json-feed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pedantic")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-mime-types)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-tagsoup)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/json-feed")
    (synopsis "JSON Feed")
    (description
     "This is an implementation of the JSON Feed spec in Haskell. The spec is
available at <https://jsonfeed.org>. JSON Feed is similar to the Atom and RSS
feed formats, but it is serialized as JSON rather than XML.")
    (license license:expat)))

haskell-9.2-json-feed

(define-public haskell-9.2-json-stream
  (package
    (name "haskell-9.2-json-stream")
    (version "0.4.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/json-stream/json-stream-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12xchk8dpkr971h5ncwxhh97i8af2fp2rvgxvkg0d3a2ksbfpkal"))))
    (properties `((upstream-name . "json-stream") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-conduit")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-quickcheck-unicode)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ondrap/json-stream")
    (synopsis "Incremental applicative JSON parser")
    (description
     "Easy to use JSON parser fully supporting incremental parsing.
Parsing grammar in applicative form.

The parser is compatibile with aeson and its FromJSON class.
It is possible to use aeson monadic parsing when appropriate.

The parser supports constant-space safe incremental parsing regardless
of the input data. In addition to performance-critical parts written in C,
a lot of performance is gained by being less memory intensive especially
when used for stream parsing.

* WARNING: 0.4.0.0 has code-breaking semantic changes, see changelog!")
    (license license:bsd-3)))

haskell-9.2-json-stream

(define-public haskell-9.2-jwt
  (package
    (name "haskell-9.2-jwt")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-cryptostore)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage009) haskell-9.2-x509)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-x509-store)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/puffnfresh/haskell-jwt")
    (synopsis "JSON Web Token (JWT) decoding and encoding")
    (description
     "JSON Web Token (JWT) is a compact URL-safe means of representing claims to be transferred between two parties.

To get started, see the documentation for the \"Web.JWT\" module.")
    (license license:expat)))

haskell-9.2-jwt

(define-public haskell-9.2-kanji
  (package
    (name "haskell-9.2-kanji")
    (version "3.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/kanji/kanji-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "15s640fq65l3f93w2sr3kyjm5gvp78lflcvmrz4ldndnyrzcq2c2"))))
    (properties `((upstream-name . "kanji") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-HUnit-approx)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fosskers/kanji")
    (synopsis
     "Perform 漢字検定 (Japan Kanji Aptitude Test) level analysis on Japanese Kanji")
    (description
     "Perform 漢字検定 (Japan Kanji Aptitude Test) level analysis on Japanese Kanji.")
    (license license:bsd-3)))

haskell-9.2-kanji

(define-public haskell-9.2-kleene
  (package
    (name "haskell-9.2-kleene")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/kleene/kleene-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "00w1gywdhqyy2k3y238gfjs9h2w4pjanmi45bna5lj215n0jb0hg"))))
    (properties `((upstream-name . "kleene") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "15fkqfhf4pjskbivsvjnrq79667cdxf3jv2yx576vl8fkgx5l1ba")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-MemoTrie)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-lattices)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-range-set-list)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-regex-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-step-function)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/phadej/kleene")
    (synopsis "Kleene algebra")
    (description
     "Kleene algebra

Think: Regular expressions

Implements ideas from /Regular-expression derivatives re-examined/ by
Scott Owens, John Reppy and Aaron Turon
<https://doi.org/10.1017/S0956796808007090>")
    (license license:bsd-3)))

haskell-9.2-kleene

(define-public haskell-9.2-lens
  (package
    (name "haskell-9.2-lens")
    (version "5.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lens/lens-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "08mkm2mjvhmwg9hc4kd4cd6dgmcszs1p2mzp1nmri7lqbpy9jknc"))))
    (properties `((upstream-name . "lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-benchmark-uniplate" "-finlining" "-f-dump-splices" "-ftest-hunit" "-ftest-properties" "-ftest-templates" "-ftrustworthy" "-f-j")
       #:cabal-revision
       ("1" "19z3k7ikpfa96b86yabxghfqpnq9d0ayy4gdlvci3ycvws0s8cy6")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-assoc)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-orphans)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bifunctors)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-call-stack)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-contravariant)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-distributive)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-free)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-indexed-traversable-instances)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-kan-extensions)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-parallel)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-reflection)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-simple-reflect)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-strict)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-th-abstraction)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-these)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/lens/")
    (synopsis "Lenses, Folds and Traversals")
    (description
     "This package comes \\\"Batteries Included\\\" with many useful lenses for the types
commonly used from the Haskell Platform, and with tools for automatically
generating lenses and isomorphisms for user-supplied data types.

The combinators in @@Control.Lens@@ provide a highly generic toolbox for composing
families of getters, folds, isomorphisms, traversals, setters and lenses and their
indexed variants.

An overview, with a large number of examples can be found in the <https://github.com/ekmett/lens#lens-lenses-folds-and-traversals README>.

An introductory video on the style of code used in this library by Simon Peyton Jones is available from <http://skillsmatter.com/podcast/scala/lenses-compositional-data-access-and-manipulation Skills Matter>.

A video on how to use lenses and how they are constructed is available on <http://youtu.be/cefnmjtAolY?hd=1 youtube>.

Slides for that second talk can be obtained from <http://comonad.com/haskell/Lenses-Folds-and-Traversals-NYC.pdf comonad.com>.

More information on the care and feeding of lenses, including a brief tutorial and motivation
for their types can be found on the <https://github.com/ekmett/lens/wiki lens wiki>.

A small game of @@pong@@ and other more complex examples that manage their state using lenses can be found in the <https://github.com/ekmett/lens/blob/master/examples/ example folder>.

/Lenses, Folds and Traversals/

With some signatures simplified, the core of the hierarchy of lens-like constructions looks like:


<<http://i.imgur.com/ALlbPRa.png>>

<images/Hierarchy.png (Local Copy)>

You can compose any two elements of the hierarchy above using @@(.)@@ from the @@Prelude@@, and you can
use any element of the hierarchy as any type it linked to above it.

The result is their lowest upper bound in the hierarchy (or an error if that bound doesn't exist).

For instance:

* You can use any 'Traversal' as a 'Fold' or as a 'Setter'.

* The composition of a 'Traversal' and a 'Getter' yields a 'Fold'.

/Minimizing Dependencies/

If you want to provide lenses and traversals for your own types in your own libraries, then you
can do so without incurring a dependency on this (or any other) lens package at all.

/e.g./ for a data type:

> data Foo a = Foo Int Int a

You can define lenses such as

> -- bar :: Lens' (Foo a) Int
> bar :: Functor f => (Int -> f Int) -> Foo a -> f (Foo a)
> bar f (Foo a b c) = fmap (\\a' -> Foo a' b c) (f a)

> -- quux :: Lens (Foo a) (Foo b) a b
> quux :: Functor f => (a -> f b) -> Foo a -> f (Foo b)
> quux f (Foo a b c) = fmap (Foo a b) (f c)

without the need to use any type that isn't already defined in the @@Prelude@@.

And you can define a traversal of multiple fields with 'Control.Applicative.Applicative':

> -- traverseBarAndBaz :: Traversal' (Foo a) Int
> traverseBarAndBaz :: Applicative f => (Int -> f Int) -> Foo a -> f (Foo a)
> traverseBarAndBaz f (Foo a b c) = Foo <$> f a <*> f b <*> pure c

What is provided in this library is a number of stock lenses and traversals for
common haskell types, a wide array of combinators for working them, and more
exotic functionality, (/e.g./ getters, setters, indexed folds, isomorphisms).")
    (license license:bsd-2)))

haskell-9.2-lens

(define-public haskell-9.2-lexer-applicative
  (package
    (name "haskell-9.2-lexer-applicative")
    (version "2.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lexer-applicative/lexer-applicative-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gjwxc9d2al8az89mrxkvh8fmmdk78685dgdxi4fil2r587kqhxf"))))
    (properties `((upstream-name . "lexer-applicative") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-regex-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-srcloc)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/feuerbach/lexer-applicative")
    (synopsis "Simple lexer based on applicative regular expressions")
    (description "Simple lexer based on applicative regular expressions")
    (license license:expat)))

haskell-9.2-lexer-applicative

(define-public haskell-9.2-liboath-hs
  (package
    (name "haskell-9.2-liboath-hs")
    (version "0.0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/liboath-hs/liboath-hs-" version
                    ".tar.gz"))
              (sha256
               (base32
                "08wnzsk82ahyb3fy2sd1ci6aw0h3wiiad2j4kxs1j90wbrwkd3ri"))))
    (properties `((upstream-name . "liboath-hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-inline-c)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages authentication) oath-toolkit)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)
                             (@ (gnu packages authentication) oath-toolkit)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/parsonsmatt/liboath-hs#readme")
    (synopsis "Bindings to liboath")
    (description "See README for details.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-liboath-hs

(define-public haskell-9.2-libyaml
  (package
    (name "haskell-9.2-libyaml")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/libyaml/libyaml-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1dcpbsjg6n305l07isxmavgp01lbv1qggy16acjyxjlz35pxchlg"))))
    (properties `((upstream-name . "libyaml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-no-unicode" "-f-system-libyaml")
       #:cabal-revision
       ("1" "00f1rag6sd7c8kza2agw9089p9vf21iiga2aq41nbf6d3yqn7dkz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snoyberg/yaml#readme")
    (synopsis "Low-level, streaming YAML interface.")
    (description
     "README and API documentation are available at <https://www.stackage.org/package/libyaml>")
    (license license:bsd-3)))

haskell-9.2-libyaml

(define-public haskell-9.2-literatex
  (package
    (name "haskell-9.2-literatex")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/literatex/literatex-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1j82z5q6dzgi7b8si0fzxa3zv8rgqdhwm82sxh3wqsb6z1jfwk37"))))
    (properties `((upstream-name . "literatex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-examples" "-f-write-hie")
       #:cabal-revision
       ("1" "091nqn5dsfr0hrsw92vs7n93p9h3j49q9v2n9ijcsb1cd6b473qf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-ttc)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ExtremaIS/literatex-haskell#readme")
    (synopsis "transform literate source code to Markdown")
    (description
     "This package provides a library as well as a command-line utility that
transforms literate source code to Markdown.  Please see the README on
GitHub at <https://github.com/ExtremaIS/literatex-haskell#readme>.")
    (license license:expat)))

haskell-9.2-literatex

(define-public haskell-9.2-lucid-extras
  (package
    (name "haskell-9.2-lucid-extras")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lucid-extras/lucid-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zi48ly2729rs3rsbnwj3z5zk9zgzmva0d3dvp448726r62ryfc3"))))
    (properties `((upstream-name . "lucid-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-lucid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/diffusionkinetics/open/lucid-extras")
    (synopsis
     "Generate more HTML with Lucid - Bootstrap, Rdash, Vega-Lite, Leaflet JS, Email.")
    (description
     "Generate more HTML with Lucid - Bootstrap, Rdash, Vega-Lite, Leaflet JS, Email. Provides functions to generate rich web page elements for infographics, geographical maps, and more.")
    (license license:expat)))

haskell-9.2-lucid-extras

(define-public haskell-9.2-lzma-conduit
  (package
    (name "haskell-9.2-lzma-conduit")
    (version "1.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lzma-conduit/lzma-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pmvmchrg429b2yk485x0066lxcr37cbyczlyp3ala2iaq8hm61z"))))
    (properties `((upstream-name . "lzma-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-lzma)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages compression) lzip)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/alphaHeavy/lzma-conduit")
    (synopsis "Conduit interface for lzma/xz compression.")
    (description
     "This package provides an Conduit interface for the LZMA compression algorithm used in the .xz file format.")
    (license license:bsd-3)))

haskell-9.2-lzma-conduit

(define-public haskell-9.2-matplotlib
  (package
    (name "haskell-9.2-matplotlib")
    (version "0.7.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/matplotlib/matplotlib-" version
                    ".tar.gz"))
              (sha256
               (base32
                "08qwqnsdch7hzyy0jiz6yvirf0gqm9xx24i3ikm5q993prsdpi2h"))))
    (properties `((upstream-name . "matplotlib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/abarbu/matplotlib-haskell")
    (synopsis "Bindings to Matplotlib; a Python plotting library")
    (description
     "Matplotlib is probably the most full featured plotting library out there.
These bindings provide a quick, easy, and extensible way to use it in
Haskell.

<<https://github.com/abarbu/matplotlib-haskell/raw/master/imgs/contour.png>>

> onscreen $ contourF (\\a b -> sin (a*pi/180.0) + cos (b*pi/180.0)) (-100) 100 (-200) 200 10")
    (license license:bsd-3)))

haskell-9.2-matplotlib

(define-public haskell-9.2-microaeson
  (package
    (name "haskell-9.2-microaeson")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microaeson/microaeson-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0rx5gm7apazc0sm65v687ab5106ximka9khizxq1lbckd2x0cq3q"))))
    (properties `((upstream-name . "microaeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1b9sdks42sl19i3rvsv71bjv0jjxi8b5mkbi14iqmybw18q1a2pk")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-alex)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-fail)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/microaeson")
    (synopsis "A tiny JSON library with light dependency footprint")
    (description
     "@@microaeson@@ aims to provide a [RFC 8259](https://tools.ietf.org/html/rfc8259) compliant JavaScript Object Notation (JSON) implementation.
The [microaeson](https://hackage.haskell.org/package/microaeson) package provides a smaller subset of the [aeson](https://hackage.haskell.org/package/aeson) API with less dependencies and a simpler implementation.

The API is designed in such a way to allow to easily convert client code written against @@microaeson@@'s API to use the full [aeson](https://hackage.haskell.org/package/aeson) API.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-microaeson

(define-public haskell-9.2-microlens-aeson
  (package
    (name "haskell-9.2-microlens-aeson")
    (version "2.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microlens-aeson/microlens-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0h5q0b2b4y28llhq28mb28kpdv2iifz0qkbbhmrwrz2bs6arr3d2"))))
    (properties `((upstream-name . "microlens-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/fosskers/microlens-aeson/")
    (synopsis "Law-abiding lenses for Aeson, using microlens.")
    (description "Law-abiding lenses for Aeson, using microlens.")
    (license license:expat)))

haskell-9.2-microlens-aeson

(define-public haskell-9.2-microstache
  (package
    (name "haskell-9.2-microstache")
    (version "1.0.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microstache/microstache-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16nj6ss8nmxd0z8lc2a9zpawgvi4kbd5wyjy17xknq43awbi6ynz"))))
    (properties `((upstream-name . "microstache") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskellari/microstache")
    (synopsis "Mustache templates for Haskell")
    (description
     "Mustache templates for Haskell.

Based on @@stache@@ library, which uses @@megaparsec@@.
This library uses @@parsec@@, thus the name: @@microstache@@.")
    (license license:bsd-3)))

haskell-9.2-microstache

(define-public haskell-9.2-mighty-metropolis
  (package
    (name "haskell-9.2-mighty-metropolis")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mighty-metropolis/mighty-metropolis-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0r1viswlggm6y7k3x5cvfmbly8jmk1ivhfp8vpgvkamxagzhkrk4"))))
    (properties `((upstream-name . "mighty-metropolis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-kan-extensions)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-mcmc-types)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-mwc-probability)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-pipes)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/jtobin/mighty-metropolis")
    (synopsis "The Metropolis algorithm.")
    (description
     "The classic Metropolis algorithm.

Wander around parameter space according to a simple spherical Gaussian
distribution.

Exports a 'mcmc' function that prints a trace to stdout, a 'chain' function
for collecting results in-memory, and a 'metropolis' transition operator that
can be used more generally.

> import Numeric.MCMC.Metropolis
>
> rosenbrock :: [Double] -> Double
> rosenbrock [x0, x1] = negate (5  *(x1 - x0 ^ 2) ^ 2 + 0.05 * (1 - x0) ^ 2)
>
> main :: IO ()
> main = withSystemRandom . asGenIO $ mcmc 10000 1 [0, 0] rosenbrock")
    (license license:expat)))

haskell-9.2-mighty-metropolis

(define-public haskell-9.2-mnist-idx-conduit
  (package
    (name "haskell-9.2-mnist-idx-conduit")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mnist-idx-conduit/mnist-idx-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0319icnnw38fivjwz9m142wyp059hn5rydr6cdjq73d5d9c77xhx"))))
    (properties `((upstream-name . "mnist-idx-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ocramz/mnist-idx-conduit")
    (synopsis "conduit utilities for MNIST IDX files")
    (description
     "Conduit decoders for MNIST IDX data files, as described in http://yann.lecun.com/exdb/mnist/ . The IDX format is a low-level binary representation for storing general vector, image or tensor data. Here the parsers are specialized to the MNIST dataset, which stores scans of handwritten digits and is a classic benchmark for text classification.")
    (license license:bsd-3)))

haskell-9.2-mnist-idx-conduit

(define-public haskell-9.2-monadology
  (package
    (name "haskell-9.2-monadology")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monadology/monadology-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0pr9ia4jns545sk5x85pdwgbw1qd648nh9avb5q7jql7dwa21928"))))
    (properties `((upstream-name . "monadology") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-constraints)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-invariant)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-type-rig)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-witness)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/AshleyYakeley/monadology#readme")
    (synopsis "")
    (description
     "Monadology is intended as a collection of the best ideas in monad-related classes and types, with a focus on correctness and elegance, and theoretical understanding, rather than practical performance.")
    (license license:bsd-2)))

haskell-9.2-monadology

(define-public haskell-9.2-morpheus-graphql-tests
  (package
    (name "haskell-9.2-morpheus-graphql-tests")
    (version "0.27.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/morpheus-graphql-tests/morpheus-graphql-tests-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h6nri73s5ibzidhwrkxffldardx6khq9kvhmqklm06cilwr56xi"))))
    (properties `((upstream-name . "morpheus-graphql-tests") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-relude)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://morpheusgraphql.com")
    (synopsis "Morpheus GraphQL Test")
    (description "")
    (license license:expat)))

haskell-9.2-morpheus-graphql-tests

(define-public haskell-9.2-mx-state-codes
  (package
    (name "haskell-9.2-mx-state-codes")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/prikhi/mx-state-codes#readme")
    (synopsis "ISO 3166-2:MX State Codes and Names")
    (description
     "This package contains a @@Code@@ data type containing each Mexican State, as well as functions for converting from and to the English subdivision names.")
    (license license:bsd-3)))

haskell-9.2-mx-state-codes

(define-public haskell-9.2-nanovg
  (package
    (name "haskell-9.2-nanovg")
    (version "0.8.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/nanovg/nanovg-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1yzabd2l8z77dsgby97dzv0h38a6w554kmhp6hsfx3j24n0h0rnv"))))
    (properties `((upstream-name . "nanovg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-examples" "-f-gles3" "-f-gl2" "-f-stb_truetype")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages fontutils) freetype)
                  (@ (gnu packages gl) glew)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage004) haskell-9.2-c2hs)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-inline-c)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)
                             (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages gl) glew)
                             (@ (gnu packages maths) gsl)
                             (@ (gnu packages xorg) libx11)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cocreature/nanovg-hs")
    (synopsis "Haskell bindings for nanovg")
    (description "Raw bindings to the OpenGL vector graphics library NanoVG")
    (license license:isc)))

haskell-9.2-nanovg

(define-public haskell-9.2-ndjson-conduit
  (package
    (name "haskell-9.2-ndjson-conduit")
    (version "0.1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ndjson-conduit/ndjson-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ccxliyy0flpby9jix2n8jy1i4jgiap42maqhh9ny53vqkvvhdy0"))))
    (properties `((upstream-name . "ndjson-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/srijs/haskell-ndjson-conduit")
    (synopsis
     "Conduit-based parsing and serialization for newline delimited JSON.")
    (description
     "Hackage documentation generation is not reliable.
For up to date documentation, please see: <http://www.stackage.org/package/ndjson-conduit>.")
    (license license:expat)))

haskell-9.2-ndjson-conduit

(define-public haskell-9.2-network-ip
  (package
    (name "haskell-9.2-network-ip")
    (version "0.3.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-ip/network-ip-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0p4mn7vz74kxmsc8xvg7gx5rs38knnv518bc0qv0b07ki51wq7g0"))))
    (properties `((upstream-name . "network-ip") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-data-dword)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-endian)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-data-serializer)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-data-textual)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-parsers)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-text-printer)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-type-hint)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mvv/network-ip")
    (synopsis "Internet Protocol data structures")
    (description "This package provides Internet Protocol data structures")
    (license license:bsd-3)))

haskell-9.2-network-ip

(define-public haskell-9.2-open-witness
  (package
    (name "haskell-9.2-open-witness")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/open-witness/open-witness-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zysnzp7zdmv9d03xnlcqdsnwjrw934gkz6ngahwaqpbx4pp1zmb"))))
    (properties `((upstream-name . "open-witness") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-constraints)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-witness)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/AshleyYakeley/open-witness")
    (synopsis "open witnesses")
    (description
     "Open witnesses are witnesses that can witness to any type. However, they cannot be constructed, they can only be generated in the IO monad. See the 2008 draft paper /Witnesses and Open Witnesses/ (<https://semantic.org/wp-content/uploads/Open-Witnesses.pdf>).")
    (license license:bsd-2)))

haskell-9.2-open-witness

(define-public haskell-9.2-opentelemetry-wai
  (package
    (name "haskell-9.2-opentelemetry-wai")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/opentelemetry-wai/opentelemetry-wai-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1k5wglr61zly4afij087vjsrxzxn6vvsk6rcasw0q1si8n2kl4wb"))))
    (properties `((upstream-name . "opentelemetry-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-opentelemetry)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/opentelemetry-wai")
    (synopsis "")
    (description "OpenTelemetry middleware for wai")
    (license license:asl2.0)))

haskell-9.2-opentelemetry-wai

(define-public haskell-9.2-pandoc-types
  (package
    (name "haskell-9.2-pandoc-types")
    (version "1.22.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pandoc-types/pandoc-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17b5c4b9jmx2gca1wk9vlnvvlzdw21qiqc0bpikkkiv7kl99drsc"))))
    (properties `((upstream-name . "pandoc-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-string-qq)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.2-pandoc-types

(define-public haskell-9.2-path
  (package
    (name "haskell-9.2-path")
    (version "0.9.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/path/path-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "15xxsjdxxqxnh20iqhprbdyhldk2igl5gd4ld6hhk9nqgwqdcr0f"))))
    (properties `((upstream-name . "path") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-genvalidity)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-genvalidity-property)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/path")
    (synopsis "Support for well-typed paths")
    (description "Support for well-typed paths.")
    (license license:bsd-3)))

haskell-9.2-path

(define-public haskell-9.2-pdf-toolbox-document
  (package
    (name "haskell-9.2-pdf-toolbox-document")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pdf-toolbox-document/pdf-toolbox-document-"
                    version ".tar.gz"))
              (sha256
               (base32
                "172vxsv541hsdkk08rsr21rwdrcxwmf4pwjmgsq2rjwj4ba4723y"))))
    (properties `((upstream-name . "pdf-toolbox-document") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-io-streams)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-pdf-toolbox-content)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-pdf-toolbox-core)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/Yuras/pdf-toolbox")
    (synopsis "A collection of tools for processing PDF files.")
    (description "Mid level tools for processing PDF files.

Level of abstraction: document, catalog, page")
    (license license:bsd-3)))

haskell-9.2-pdf-toolbox-document

(define-public haskell-9.2-pipes-csv
  (package
    (name "haskell-9.2-pipes-csv")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftest-hunit")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-MissingH)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-cassava)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-pipes)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-pipes-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/pipes-csv")
    (synopsis "Fast, streaming csv parser")
    (description
     "`pipes-csv` is a streaming csv parser built on top of `cassava` and `pipes`")
    (license license:expat)))

haskell-9.2-pipes-csv

(define-public haskell-9.2-pipes-fastx
  (package
    (name "haskell-9.2-pipes-fastx")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-fastx/pipes-fastx-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xds11gfacj7m5lz6cssaj4v5z73ycrdmn57f0qxzqdsc2kln9ii"))))
    (properties `((upstream-name . "pipes-fastx") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-pipes)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-pipes-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-pipes-bytestring)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/pipes-fastx")
    (synopsis "Streaming parsers for Fasta and Fastq")
    (description "Streaming parsers for Fasta and Fastq")
    (license license:bsd-3)))

haskell-9.2-pipes-fastx

(define-public haskell-9.2-pipes-text
  (package
    (name "haskell-9.2-pipes-text")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-text/pipes-text-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1q91jsqlikrp2dj21nik5b3j8b1y996gy8rjkx8hlzrps11vrc2w"))))
    (properties `((upstream-name . "pipes-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-noio" "-f-maintainer")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-pipes)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-pipes-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-pipes-group)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-pipes-parse)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-pipes-safe)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-streaming-commons)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/pjones/pipes-text")
    (synopsis "properly streaming text")
    (description
     "The organization of this package follows the rule:

* @@pipes-text : pipes-bytestring :: text : bytestring@@

Familiarity with the other three packages should give one an idea
what to expect here. The package has three principal modules,
@@Pipes.Text@@ , @@Pipes.Text.Encoding@@ and @@Pipes.Text.IO@@; the
division has more or less the significance it has in the @@text@@
library.

The module @@Pipes.Text.IO@@ is present as a convenience.  Official
pipes IO uses @@Pipes.ByteString@@ together with the bytestring
decoding functions in @@Pipes.Text.Encoding@@.  In particular, the
@@Pipes.Text.IO@@ functions use Text exceptions, while @@Pipes.Text@@
uses the standard pipes practice of breaking with a failed
parse. Thus, for example, the type of @@decodeUtf8@@ is

* @@decodeUtf8 :: Monad m => Producer ByteString m r -> Producer Text m (Producer ByteString m r)@@

where any unparsed bytes are returned.")
    (license license:bsd-3)))

haskell-9.2-pipes-text

(define-public haskell-9.2-pipes-wai
  (package
    (name "haskell-9.2-pipes-wai")
    (version "3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-wai/pipes-wai-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0akd0n2qgv32pcq717j2xr2g29qmaz2v610ddx7vc4hc2kgp19h4"))))
    (properties `((upstream-name . "pipes-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-pipes)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/iand675/pipes-wai")
    (synopsis "A port of wai-conduit for the pipes ecosystem")
    (description
     "A light-weight wrapper around Network.Wai to provide easy pipes support.")
    (license license:expat)))

haskell-9.2-pipes-wai

(define-public haskell-9.2-plotlyhs
  (package
    (name "haskell-9.2-plotlyhs")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/plotlyhs/plotlyhs-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1j7ns90cjl7gb9nmlsflnikwbsfycnh727hzmb27gaw6s95r047m"))))
    (properties `((upstream-name . "plotlyhs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-blaze-markup)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-lucid)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-microlens-th)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/JonathanReeve/plotlyhs")
    (synopsis "Haskell bindings to Plotly.js")
    (description
     "Generate web-based plots with the Plotly.js library.
For examples, see <https://JonathanReeve.github.io/plotlyhs/>")
    (license license:expat)))

haskell-9.2-plotlyhs

(define-public haskell-9.2-pointed
  (package
    (name "haskell-9.2-pointed")
    (version "5.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pointed/pointed-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1mv06x2hscs220w4acm5jwg96vi4faky6ir9hnljfry3n2r2xix3"))))
    (properties `((upstream-name . "pointed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fcomonad" "-fcontainers" "-fkan-extensions" "-fsemigroupoids" "-fsemigroups" "-fstm" "-ftagged" "-ftransformers" "-funordered-containers")
       #:cabal-revision
       ("1" "14w5w6z2zk494mz5h1bm21a5rj8wlkyy37vi944ix4r7nrylv8bl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-kan-extensions)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/pointed/")
    (synopsis "Pointed and copointed data")
    (description "Pointed and copointed data.")
    (license license:bsd-3)))

haskell-9.2-pointed

(define-public haskell-9.2-poly
  (package
    (name "haskell-9.2-poly")
    (version "0.5.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/poly/poly-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ycjdan9l92glnqr0lms2kdjfs5dg9c2ky2w2rdmrc6nzzxajd9k"))))
    (properties `((upstream-name . "poly") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsparse")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-finite-typelits)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-semirings)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-vector-algorithms)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-vector-sized)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/poly#readme")
    (synopsis "Polynomials")
    (description "Polynomials backed by `Vector`s.")
    (license license:bsd-3)))

haskell-9.2-poly

(define-public haskell-9.2-postgresql-simple
  (package
    (name "haskell-9.2-postgresql-simple")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-Only)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-bytestring-builder)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-postgresql-libpq)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-time-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-uuid-types)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://hackage.haskell.org/package/postgresql-simple")
    (synopsis "Mid-Level PostgreSQL client library")
    (description
     "Mid-Level PostgreSQL client library, forked from mysql-simple.")
    (license license:bsd-3)))

haskell-9.2-postgresql-simple

(define-public haskell-9.2-pretty-simple
  (package
    (name "haskell-9.2-pretty-simple")
    (version "4.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pretty-simple/pretty-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0di7n3kq2bl0xqj9b1xxf3jznyy6cfyjs6hf6g0bi72rf4wprd1w"))))
    (properties `((upstream-name . "pretty-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbuildexe" "-f-buildexample")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Glob)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-prettyprinter-ansi-terminal)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cdepillabout/pretty-simple")
    (synopsis "pretty printer for data types with a 'Show' instance.")
    (description
     "Please see <https://github.com/cdepillabout/pretty-simple#readme README.md>.")
    (license license:bsd-3)))

haskell-9.2-pretty-simple

(define-public haskell-9.2-profiteur
  (package
    (name "haskell-9.2-profiteur")
    (version "0.4.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/profiteur/profiteur-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1a8li2wkr2af1d5ddpprxzjs7m2j7ii30k7j93a22isfqmywhhbb"))))
    (properties `((upstream-name . "profiteur") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-embed-data-files")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-ghc-prof)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-js-jquery)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/jaspervdj/profiteur")
    (synopsis "Treemap visualiser for GHC prof files")
    (description "Treemap visualiser for GHC prof files")
    (license license:bsd-3)))

haskell-9.2-profiteur

(define-public haskell-9.2-prospect
  (package
    (name "haskell-9.2-prospect")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prospect/prospect-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1rvdhk3vnkmblg0zg9vw9akvlsqsc125av3889ipi0axzdcygykg"))))
    (properties `((upstream-name . "prospect") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-free)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-inspection-testing)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-kan-extensions)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/isovector/prospect#readme")
    (synopsis "Explore continuations with trepidation")
    (description
     "Please see the README on GitHub at <https://github.com/isovector/prospect#readme>")
    (license license:bsd-3)))

haskell-9.2-prospect

(define-public haskell-9.2-quickcheck-classes
  (package
    (name "haskell-9.2-quickcheck-classes")
    (version "0.6.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-classes/quickcheck-classes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19iw15mvb7gws3ljdxqwsbb4pmfc0sfflf8szgmrhiqr3k82mqv2"))))
    (properties `((upstream-name . "quickcheck-classes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-faeson" "-fsemigroupoids" "-fsemirings" "-fvector" "-funary-laws" "-fbinary-laws")
       #:cabal-revision
       ("1" "1p52n2padxppj4wy3s4v8shs7zsd9hy9r4rdk21wg7l9dwbqss5a")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-orphans)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-primitive-addr)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-quickcheck-classes-base)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-semirings)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/andrewthad/quickcheck-classes#readme")
    (synopsis "QuickCheck common typeclasses")
    (description
     "This library provides QuickCheck properties to ensure
that typeclass instances adhere to the set of laws that
they are supposed to. There are other libraries that do
similar things, such as `genvalidity-hspec` and `checkers`.
This library differs from other solutions by not introducing
any new typeclasses that the user needs to learn.

/Note:/ on GHC < 8.5, this library uses the higher-kinded typeclasses
('Data.Functor.Classes.Show1', 'Data.Functor.Classes.Eq1', 'Data.Functor.Classes.Ord1', etc.),
but on GHC >= 8.5, it uses `-XQuantifiedConstraints` to express these
constraints more cleanly.")
    (license license:bsd-3)))

haskell-9.2-quickcheck-classes

(define-public haskell-9.2-refined
  (package
    (name "haskell-9.2-refined")
    (version "0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/refined/refined-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0qkzmnycg5pda259lxfy9s03cyi9knvxx9934bihh5vl9bb7sirs"))))
    (properties `((upstream-name . "refined") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-faeson" "-fquickcheck")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-these-skinny)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/refined")
    (synopsis "Refinement types with static and runtime checking")
    (description
     "For an extensive introduction to the library please follow to
<http://nikita-volkov.github.io/refined this blog-post>.")
    (license license:expat)))

haskell-9.2-refined

(define-public haskell-9.2-regex-applicative-text
  (package
    (name "haskell-9.2-regex-applicative-text")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-applicative-text/regex-applicative-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ng2qhk4mvpzl8fx91ig7ldv09v9aqdsvn6yl9yjapc6h0ghb4xh"))))
    (properties `((upstream-name . "regex-applicative-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("7" "0v4k5hvqcabgiiycn4xayg9kahwifqg4nc0m1wkm3ixcywwg8i88")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-regex-applicative)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/phadej/regex-applicative-text#readme")
    (synopsis "regex-applicative on text")
    (description "Wrapped regex-applicative primitives to work with Text")
    (license license:bsd-3)))

haskell-9.2-regex-applicative-text

(define-public haskell-9.2-reroute
  (package
    (name "haskell-9.2-reroute")
    (version "0.7.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/reroute/reroute-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "046pszxz2mp0glss03ifk1617i1w15cm5x0jy2iwg5a905vdis3s"))))
    (properties `((upstream-name . "reroute") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-api-data)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-hvect)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/agrafix/Spock")
    (synopsis "abstract implementation of typed and untyped web routing")
    (description
     "abstraction over how urls with/without parameters are mapped to their corresponding handlers")
    (license license:expat)))

haskell-9.2-reroute

(define-public haskell-9.2-roc-id
  (package
    (name "haskell-9.2-roc-id")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/roc-id/roc-id-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ac4hrl6qihrhcyx41rf0qnmf9bi848nhdgs71mq3i9gqbnxfi1i"))))
    (properties `((upstream-name . "roc-id") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-MonadRandom)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-Only)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-vector-sized)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jonathanknowles/roc-id#readme")
    (synopsis "Implementation of the ROC National ID standard.")
    (description
     "This package provides an implementation of the ROC National Identification
Number (中華民國身分證號碼) standard.

In particular, it provides functions for parsing and validating identification
numbers from textual input.

See the \"ROC.ID\" module to get started.

For more details of the standard on which this package is based, see:

* https://zh.wikipedia.org/wiki/中華民國國民身分證
* https://en.wikipedia.org/wiki/National_Identification_Card_(Republic_of_China)")
    (license license:bsd-3)))

haskell-9.2-roc-id

(define-public haskell-9.2-rocksdb-query
  (package
    (name "haskell-9.2-rocksdb-query")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rocksdb-query/rocksdb-query-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sh88q0vq0b13ig6vmwi8wa73d45qxdkbbc29zphch6p2z4n81wq"))))
    (properties `((upstream-name . "rocksdb-query") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-rocksdb-haskell-jprupp)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) rocksdb)))
    (home-page "https://github.com/jprupp/rocksdb-query#readme")
    (synopsis "RocksDB database querying library for Haskell")
    (description
     "Please see the README on GitHub at <https://github.com/jprupp/rocksdb-query#readme>")
    (license license:expat)))

haskell-9.2-rocksdb-query

(define-public haskell-9.2-safe-json
  (package
    (name "haskell-9.2-safe-json")
    (version "1.1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safe-json/safe-json-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1rwjlyw0ps29ks2lzji0pi0mz86ma5x0zyhpc1xg740s5592rjf9"))))
    (properties `((upstream-name . "safe-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0mf2z0rfyyhscrx8cg0yjz87f7xm8bv68c6z1p0pj5kbfnz0pzqs")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-uuid)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-uuid-types)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Vlix/safe-json#readme")
    (synopsis "Automatic JSON format versioning")
    (description
     "This library aims to make the updating of JSON formats or contents, while keeping backward compatibility, as painless as possible. The way this is achieved is through versioning and defined migration functions to migrate older (or newer) versions to the one used.

The library mainly consists of two classes:

* @@SafeJSON a@@: Defines the version of @@a@@ and if (and how) it is migratable.

* @@Migrate a@@: Defines the data type (@@MigrateFrom a@@) that can be migrated to @@a@@ and how to migrate from that type.

Using these two classes, JSON serialized data types will stay parsable, even after format changes.

For a more in-depth explanation and examples, please see the README at <https://github.com/Vlix/safe-json#readme>")
    (license license:expat)))

haskell-9.2-safe-json

(define-public haskell-9.2-safeio
  (package
    (name "haskell-9.2-safeio")
    (version "0.0.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/safeio/safeio-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04g3070cbjdqj0h9l9ii6470xcbn40xfv4fr89a8yvnkdim9nyfm"))))
    (properties `((upstream-name . "safeio") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/luispedro/safeio#readme")
    (synopsis "Write output to disk atomically")
    (description
     "This package implements utilities to perform atomic output so as to avoid the problem of partial intermediate files.")
    (license license:expat)))

haskell-9.2-safeio

(define-public haskell-9.2-scheduler
  (package
    (name "haskell-9.2-scheduler")
    (version "2.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/scheduler/scheduler-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1hdqm04m3n5y3xrhilj0hykrmqdsjz5p6k2p9y1005khkj5dag9f"))))
    (properties `((upstream-name . "scheduler") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-atomic-primops)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-pvar)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/lehins/haskell-scheduler")
    (synopsis "Work stealing scheduler.")
    (description
     "A work stealing scheduler that is designed for parallelization of heavy work loads. It was primarily developed for [massiv](https://github.com/lehins/massiv) array library, but it is general enough to be useful for any computation that fits the model of few workers and many jobs.")
    (license license:bsd-3)))

haskell-9.2-scheduler

(define-public haskell-9.2-selda-json
  (package
    (name "haskell-9.2-selda-json")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/selda-json/selda-json-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0sjy83538g6a2yq1q9ifadfwp7lf5b2grmm0i02qpp47n1b039rh"))))
    (properties `((upstream-name . "selda-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-selda)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://selda.link")
    (synopsis "JSON support for the Selda database library.")
    (description "Types and classes to support storing and querying
JSON values using Selda via Aeson.")
    (license license:expat)))

haskell-9.2-selda-json

(define-public haskell-9.2-sequence-formats
  (package
    (name "haskell-9.2-sequence-formats")
    (version "1.6.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sequence-formats/sequence-formats-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qylf0nx0g7z3wr95bza5vpmmsd4q3mvp8xsc7g2pwvsdpgxz9c9"))))
    (properties `((upstream-name . "sequence-formats") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-errors)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-foldl)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-lens-family)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-pipes)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-pipes-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-pipes-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-pipes-safe)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/stschiff/sequence-formats")
    (synopsis
     "A package with basic parsing utilities for several Bioinformatic data formats.")
    (description
     "Contains utilities to parse and write Eigenstrat, Fasta, FreqSum, VCF, Plink and other file formats used in population genetics analyses.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-sequence-formats

(define-public haskell-9.2-servant
  (package
    (name "haskell-9.2-servant")
    (version "0.19.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/servant/servant-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1gk6j39rcjpjacs351lknhrwj86yr4ifyp3qwlmiig27dxqlig3q"))))
    (properties `((upstream-name . "servant") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bifunctors)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-constraints)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-api-data)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-http-media)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-mmorph)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-singleton-bool)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-sop-core)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-string-conversions)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-vault)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://docs.servant.dev/")
    (synopsis "A family of combinators for defining webservices APIs")
    (description
     "A family of combinators for defining webservices APIs and serving them

You can learn about the basics in the <http://docs.servant.dev/en/stable/tutorial/index.html tutorial>.

<https://github.com/haskell-servant/servant/blob/master/servant/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-9.2-servant

(define-public haskell-9.2-shakespeare
  (package
    (name "haskell-9.2-shakespeare")
    (version "2.0.30")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shakespeare/shakespeare-"
                    version ".tar.gz"))
              (sha256
               (base32
                "038yprj9yig2xbjs2pqsjzs4pl9ir2frdz9wn2pklc4kvdazx3aw"))))
    (properties `((upstream-name . "shakespeare") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-test_export" "-f-test_coffee" "-f-test_roy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-blaze-markup)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-th-lift)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://www.yesodweb.com/book/shakespearean-templates")
    (synopsis "A toolkit for making compile-time interpolated templates")
    (description
     "Shakespeare is a family of type-safe, efficient template languages. Shakespeare templates are expanded at compile-time, ensuring that all interpolated variables are in scope. Variables are interpolated according to their type through a typeclass.

Shakespeare templates can be used inline with a quasi-quoter or in an external file.

Note there is no dependency on haskell-src-extras. Instead Shakespeare believes logic should stay out of templates and has its own minimal Haskell parser.

Packages that use this: xml-hamlet

Please see the documentation at <http://www.yesodweb.com/book/shakespearean-templates> for more details.")
    (license license:expat)))

haskell-9.2-shakespeare

(define-public haskell-9.2-shikensu
  (package
    (name "haskell-9.2-shikensu")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shikensu/shikensu-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0qf0rc0sxhj6x03g9mdxhnk8dk8n0jpi6061ky0cqhvivn4fd9hy"))))
    (properties `((upstream-name . "shikensu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Glob)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage002) haskell-9.2-flow)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/icidasset/shikensu#readme")
    (synopsis
     "Run a sequence of functions on in-memory representations of files")
    (description
     "See README at <https://github.com/icidasset/shikensu#readme>")
    (license license:expat)))

haskell-9.2-shikensu

(define-public haskell-9.2-singletons-base
  (package
    (name "haskell-9.2-singletons-base")
    (version "3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/singletons-base/singletons-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bsfbdbfwiq2nis3r95x06r0q9iypyz4hkvmgvk56bwj6421k7kd"))))
    (properties `((upstream-name . "singletons-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "12p0xzmrkn2bjz6wf9i291bh47s9c0ziz6cvvja65vnzwd8l60ry")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-singletons)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-singletons-th)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-th-desugar)))
    (home-page "http://www.github.com/goldfirere/singletons")
    (synopsis "A promoted and singled version of the base library")
    (description
     "@@singletons-base@@ uses @@singletons-th@@ to define promoted and singled
functions from the @@base@@ library, including the \"Prelude\". This library was
originally presented in /Dependently Typed Programming with Singletons/,
published at the Haskell Symposium, 2012.
(<https://richarde.dev/papers/2012/singletons/paper.pdf>)
See also the paper published at Haskell Symposium, 2014, which describes
how promotion works in greater detail:
<https://richarde.dev/papers/2014/promotion/promotion.pdf>.

WARNING: @@singletons-base@@ defines orphan instances for @@Sing@@, @@SingKind@@,
etc. for common types such as @@Bool@@, @@[]@@, @@Maybe@@, etc. If you define
instances of these types in your code, you will likely not be able to use
that code with @@singletons-base@@.

@@singletons-base@@ uses code that relies on bleeding-edge GHC language
extensions. As such, @@singletons-base@@ only supports the latest major version
of GHC (currently GHC 9.2). For more information,
consult the @@singletons@@
@@<https://github.com/goldfirere/singletons/blob/master/README.md README>@@.

You may also be interested in the following related libraries:

* The @@singletons@@ library is a small, foundational library that defines
basic singleton-related types and definitions.

* The @@singletons-th@@ library defines Template Haskell functionality that
allows /promotion/ of term-level functions to type-level equivalents and
/singling/ functions to dependently typed equivalents.")
    (license license:bsd-3)))

haskell-9.2-singletons-base

(define-public haskell-9.2-smtp-mail
  (package
    (name "haskell-9.2-smtp-mail")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/smtp-mail/smtp-mail-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0q81m4mi43cd0f1azm6984xw3qw2s6ygszdn86j5z3g5sjj5dax4"))))
    (properties `((upstream-name . "smtp-mail") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-connection)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-mime-mail)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-network-bsd)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/jhickner/smtp-mail")
    (synopsis "Simple email sending via SMTP")
    (description
     "This packages provides a simple interface for mail over SMTP. PLease see the README for more information.")
    (license license:bsd-3)))

haskell-9.2-smtp-mail

(define-public haskell-9.2-sourcemap
  (package
    (name "haskell-9.2-sourcemap")
    (version "0.1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sourcemap/sourcemap-" version
                    ".tar.gz"))
              (sha256
               (base32
                "09i340mhzlfi5ayy9cb0378glnygdmpdhhsgikm3zrvwf2wmwr2h"))))
    (properties `((upstream-name . "sourcemap") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/sourcemap")
    (synopsis
     "Implementation of source maps as proposed by Google and Mozilla.")
    (description
     "Implementation of source maps, revision 3, proposed by Google and Mozilla here
<https://wiki.mozilla.org/DevTools/Features/SourceMap> and here
<https://docs.google.com/document/d/1U1RGAehQwRypUTovF1KRlpiOFze0b-_2gc6fAH0KY0k/edit>")
    (license license:bsd-3)))

haskell-9.2-sourcemap

(define-public haskell-9.2-statistics
  (package
    (name "haskell-9.2-statistics")
    (version "0.16.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/statistics/statistics-" version
                    ".tar.gz"))
              (sha256
               (base32
                "15yr0w25dqaqz16635qxkxvr6nj6mkjj9pl7wzw5yr3pn84xjryq"))))
    (properties `((upstream-name . "statistics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-dense-linear-algebra)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-math-functions)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-mwc-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-parallel)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-vector-algorithms)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-vector-binary-instances)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-vector-th-unbox)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell/statistics")
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

haskell-9.2-statistics

(define-public haskell-9.2-store-streaming
  (package
    (name "haskell-9.2-store-streaming")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/store-streaming/store-streaming-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0b164ixsqgrar4riqlm3ip5rfbinapk6md7hnz32gzcmrgav283q"))))
    (properties `((upstream-name . "store-streaming") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-free)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-hspec-smallcheck)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-smallcheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-store)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-store-core)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-streaming-commons)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-void)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/fpco/store#readme")
    (synopsis "Streaming interfaces for `store`")
    (description "")
    (license license:expat)))

haskell-9.2-store-streaming

(define-public haskell-9.2-streaming-attoparsec
  (package
    (name "haskell-9.2-streaming-attoparsec")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/streaming-attoparsec/streaming-attoparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "151gjivqbadh1wfbj53d0ahw4cjax4nnhg1v0l1piqnp1mbz7j8y"))))
    (properties `((upstream-name . "streaming-attoparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-streaming)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-streaming-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-streaming/streaming-attoparsec")
    (synopsis "Attoparsec integration for the streaming ecosystem")
    (description "Attoparsec integration for the streaming ecosystem.")
    (license license:bsd-3)))

haskell-9.2-streaming-attoparsec

(define-public haskell-9.2-streaming-cassava
  (package
    (name "haskell-9.2-streaming-cassava")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/streaming-cassava/streaming-cassava-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07mlhnn2k8zdgc5lrv0icyr4nn83dc0grywr5q284y64irix6grl"))))
    (properties `((upstream-name . "streaming-cassava") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-cassava)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-streaming)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-streaming-bytestring)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/streaming-cassava")
    (synopsis "Cassava support for the streaming ecosystem")
    (description
     "Stream values to\\/from CSV using Cassava.

Support is available for both named and \\\"plain\\\" data types,
optional header support and option handling.")
    (license license:expat)))

haskell-9.2-streaming-cassava

(define-public haskell-9.2-streaming-wai
  (package
    (name "haskell-9.2-streaming-wai")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/streaming-wai/streaming-wai-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0c5gpxnpfz4hk7ypigdnq1w7h6wslzfpib1y3drj67fchqiiid1m"))))
    (properties `((upstream-name . "streaming-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-bytestring-builder)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-streaming)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/jb55/streaming-wai")
    (synopsis "Streaming Wai utilities")
    (description "Please see README.md")
    (license license:expat)))

haskell-9.2-streaming-wai

(define-public haskell-9.2-string-random
  (package
    (name "haskell-9.2-string-random")
    (version "0.1.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/string-random/string-random-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ddy6fbkwk0nwq4anq6nsbggrlamn5d3kz2q4iy7744igasij97g"))))
    (properties `((upstream-name . "string-random") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-pcre-heavy)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hiratara/hs-string-random#readme")
    (synopsis
     "A library for generating random string from a regular experession")
    (description "With this package you can generate random strings from
regular expressions. If you are using QuickCheck, you can
also check the quickcheck-string-random package.")
    (license license:bsd-3)))

haskell-9.2-string-random

(define-public haskell-9.2-structured
  (package
    (name "haskell-9.2-structured")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/structured/structured-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1mz02ys85z79nj24ylsmgh8v2m7zv2rixf7w0iqnwc49lax52w4q"))))
    (properties `((upstream-name . "structured") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "1saljgwlag0ajhwqblvb459hw2m0n2dc9w3j50b069grbm6v8dr6")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-time-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-uuid-types)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/structured")
    (synopsis "Structure (hash) of your data types")
    (description
     "Calculate the hash of a data structure.
It can be used as a magic number for the serialization formats.
See <https://hackage.haskell.org/package/binary-tagged binary-tagged>
for a @@binary@@ bindings.")
    (license license:bsd-3)))

haskell-9.2-structured

(define-public haskell-9.2-tar-conduit
  (package
    (name "haskell-9.2-tar-conduit")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tar-conduit/tar-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bgn3hyf20g1gfnzy8f41s7nj54kfcyjk2izw99svrw8f3dphi80"))))
    (properties `((upstream-name . "tar-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snoyberg/tar-conduit#readme")
    (synopsis "Extract and create tar files using conduit for streaming")
    (description
     "Please see README.md. This is just filler to avoid warnings.")
    (license license:expat)))

haskell-9.2-tar-conduit

(define-public haskell-9.2-tasty-autocollect
  (package
    (name "haskell-9.2-tasty-autocollect")
    (version "0.3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-autocollect/tasty-autocollect-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1f2z08zclnz8kvxs67a1r1qfdb2j8nfjnvsj4434sl59inl6s9vx"))))
    (properties `((upstream-name . "tasty-autocollect") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-explainable-predicates)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-typed-process)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/brandonchinn178/tasty-autocollect#readme")
    (synopsis "Autocollection of tasty tests.")
    (description
     "Autocollection of tasty tests. See README.md for more details.")
    (license license:bsd-3)))

haskell-9.2-tasty-autocollect

(define-public haskell-9.2-tasty-th
  (package
    (name "haskell-9.2-tasty-th")
    (version "0.1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-th/tasty-th-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0b2ivrw2257m4cy4rjnkwqlarh83j1y3zywnmaqqqbvy667sqnj3"))))
    (properties `((upstream-name . "tasty-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/bennofs/tasty-th")
    (synopsis "Automatic tasty test case discovery using TH")
    (description
     "Generate tasty TestTrees automatically with TemplateHaskell. See the README for example usage.")
    (license license:bsd-3)))

haskell-9.2-tasty-th

(define-public haskell-9.2-text-show-instances
  (package
    (name "haskell-9.2-text-show-instances")
    (version "3.9.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-show-instances/text-show-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "154smhpc3l2h1iacdsywzirkv19w493yajhsiqg9pqmmiii7kwr5"))))
    (properties `((upstream-name . "text-show-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bifunctors)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-generic-deriving)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-haskeline)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-old-locale)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-old-time)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-text-short)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-text-show)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-th-orphans)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-uuid-types)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/RyanGlScott/text-show-instances")
    (synopsis "Additional instances for text-show")
    (description
     "@@text-show-instances@@ is a supplemental library to @@text-show@@
that provides additional @@Show@@ instances for data types in
common Haskell libraries and GHC dependencies that are not
encompassed by @@text-show@@. Currently, @@text-show-instances@@
covers these libraries:

* @@<https://hackage.haskell.org/package/aeson               aeson>@@

* @@<http://hackage.haskell.org/package/bifunctors           bifunctors>@@

* @@<http://hackage.haskell.org/package/binary               binary>@@

* @@<http://hackage.haskell.org/package/containers           containers>@@

* @@<http://hackage.haskell.org/package/directory            directory>@@

* @@<http://hackage.haskell.org/package/ghc-boot-th          ghc-boot-th>@@

* @@<http://hackage.haskell.org/package/haskeline            haskeline>@@

* @@<http://hackage.haskell.org/package/hpc                  hpc>@@

* @@<http://hackage.haskell.org/package/old-locale           old-locale>@@

* @@<http://hackage.haskell.org/package/old-time             old-time>@@

* @@<http://hackage.haskell.org/package/pretty               pretty>@@

* @@<http://hackage.haskell.org/package/random               random>@@

* @@<http://hackage.haskell.org/package/scientific           scientific>@@

* @@<http://hackage.haskell.org/package/tagged               tagged>@@

* @@<http://hackage.haskell.org/package/template-haskell     template-haskell>@@

* @@<http://hackage.haskell.org/package/terminfo             terminfo>@@

* @@<https://hackage.haskell.org/package/text-short          text-short>@@

* @@<http://hackage.haskell.org/package/time                 time>@@

* @@<http://hackage.haskell.org/package/transformers         transformers>@@

* @@<http://hackage.haskell.org/package/unix                 unix>@@

* @@<http://hackage.haskell.org/package/unordered-containers unordered-containers>@@

* @@<https://hackage.haskell.org/package/uuid-types          uuid-types>@@

* @@<http://hackage.haskell.org/package/vector               vector>@@

* @@<http://hackage.haskell.org/package/Win32                Win32>@@

* @@<http://hackage.haskell.org/package/xhtml                xhtml>@@

One can use these instances by importing
\"TextShow.Instances\". Alternatively, there are monomorphic
versions of the @@showb@@ function available in the other submodules
of \"TextShow\".")
    (license license:bsd-3)))

haskell-9.2-text-show-instances

(define-public haskell-9.2-toml-reader
  (package
    (name "haskell-9.2-toml-reader")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/toml-reader/toml-reader-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pajlx405cbb7c5bcq3r8hgqlmn16nqvraskplq9n9cc5xhw04xk"))))
    (properties `((upstream-name . "toml-reader") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0v03ssaa4kqa0i3wvl460028qhvlzfsqrqk6vbgcvsw6vxsnbh80")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-parser-combinators)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/brandonchinn178/toml-reader#readme")
    (synopsis "TOML format parser compliant with v1.0.0.")
    (description
     "TOML format parser compliant with v1.0.0. See README.md for more details.")
    (license license:bsd-3)))

haskell-9.2-toml-reader

(define-public haskell-9.2-tracing
  (package
    (name "haskell-9.2-tracing")
    (version "0.0.7.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tracing/tracing-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1v178byysbl6cpx8dqs4a1failfzpr80fqv7icddq28rh95b2aj2"))))
    (properties `((upstream-name . "tracing") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mtth/tracing")
    (synopsis "Distributed tracing")
    (description
     "An OpenTracing-compliant, simple, and extensible distributed tracing library.")
    (license license:bsd-3)))

haskell-9.2-tracing

(define-public haskell-9.2-tracing-control
  (package
    (name "haskell-9.2-tracing-control")
    (version "0.0.7.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tracing-control/tracing-control-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cxn64v6qa3n7d3d7nq4r9xrq42fl7z3xkqa9k8alaqfzkpx7v17"))))
    (properties `((upstream-name . "tracing-control") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-lifted-base)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-stm-lifted)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/serras/tracing")
    (synopsis "Distributed tracing")
    (description
     "An OpenTracing-compliant, simple, and extensible distributed tracing library.
This is a fork of <http://hackage.haskell.org/package/tracing tracing> which
switches from <http://hackage.haskell.org/package/unliftio unliftio> to
<http://hackage.haskell.org/package/monad-control monad-control>.")
    (license license:bsd-3)))

haskell-9.2-tracing-control

(define-public haskell-9.2-twitter-types
  (package
    (name "haskell-9.2-twitter-types")
    (version "0.11.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/twitter-types/twitter-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04jg21ma0pqx1j0502ascq4nr8dmykzf171ig66563abmkck012i"))))
    (properties `((upstream-name . "twitter-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/himura/twitter-types")
    (synopsis "Twitter JSON parser and types")
    (description
     "Please see the README on Github at <https://github.com/himura/twitter-types#readme>")
    (license license:bsd-3)))

haskell-9.2-twitter-types

(define-public haskell-9.2-universe
  (package
    (name "haskell-9.2-universe")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universe/universe-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06rxcbqdcf6fd0za3nvdhsqmki6ihxs6j66jqky3wqkis7bmy3ia"))))
    (properties `((upstream-name . "universe") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-universe-base)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-universe-instances-extended)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-universe-reverse-instances)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-universe-some)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/dmwit/universe")
    (synopsis "A class for finite and recursively enumerable types.")
    (description
     "A class for finite and recursively enumerable types and some helper functions for enumerating them

@@
class Universe a where universe :: [a]
class Universe a => Finite a where universeF :: [a]; universeF = universe
@@

This also provides instances from @@universe-instances-*\" packages.")
    (license license:bsd-3)))

haskell-9.2-universe

(define-public haskell-9.2-unjson
  (package
    (name "haskell-9.2-unjson")
    (version "0.15.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/unjson/unjson-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0qj9ihigchzmwx2hnwjhdyj6sq1vdcfsmprgy73fl0f1x2glvr9d"))))
    (properties `((upstream-name . "unjson") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-free)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-invariant)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/scrive/unjson")
    (synopsis "Bidirectional JSON parsing and generation.")
    (description "Bidirectional JSON parsing and generation
with automatic documentation support.")
    (license license:bsd-3)))

haskell-9.2-unjson

(define-public haskell-9.2-users
  (package
    (name "haskell-9.2-users")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-bcrypt)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-path-pieces)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.2-users

(define-public haskell-9.2-validate-input
  (package
    (name "haskell-9.2-validate-input")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validate-input/validate-input-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09bp771b4ccm3r635i5cdkcrqlfkd5rlgrh9ijknd42bpw9byvzi"))))
    (properties `((upstream-name . "validate-input") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-pcre-heavy)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-string-conversions)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/agrafix/validate-input")
    (synopsis "Input validation combinator library")
    (description
     "A small Haskell combinator library that provides a simple way of
validating user provided data structures.")
    (license license:expat)))

haskell-9.2-validate-input

(define-public haskell-9.2-validity-aeson
  (package
    (name "haskell-9.2-validity-aeson")
    (version "0.2.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-aeson/validity-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gk2mqhsailjp3130jgd17j2254kx28fnhhwyi1f66is1axw6cmj"))))
    (properties `((upstream-name . "validity-aeson") (hidden? . #f)))
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
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-validity-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-validity-text)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-validity-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-validity-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for aeson")
    (description "")
    (license license:expat)))

haskell-9.2-validity-aeson

(define-public haskell-9.2-validity-case-insensitive
  (package
    (name "haskell-9.2-validity-case-insensitive")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-case-insensitive/validity-case-insensitive-"
                    version ".tar.gz"))
              (sha256
               (base32
                "075pxgviqmf5xi4if15mbabn32xw11nss19a4il9z9ng1fsrcn1d"))))
    (properties `((upstream-name . "validity-case-insensitive")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for case-insensitive")
    (description "")
    (license license:expat)))

haskell-9.2-validity-case-insensitive

(define-public haskell-9.2-wai-conduit
  (package
    (name "haskell-9.2-wai-conduit")
    (version "3.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-conduit/wai-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07yn41rn2skd5p3wqqa09wa761vj7ibl8l19gh4bi4i8slxhk417"))))
    (properties `((upstream-name . "wai-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/yesodweb/wai")
    (synopsis "conduit wrappers for WAI")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/wai-conduit>.")
    (license license:expat)))

haskell-9.2-wai-conduit

(define-public haskell-9.2-wai-cors
  (package
    (name "haskell-9.2-wai-cors")
    (version "0.2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-cors/wai-cors-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10gv3jjlkcb13031frr818p56v2s0qf6dqjsfpwlhwdxdssvx5r5"))))
    (properties `((upstream-name . "wai-cors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-unicode-symbols)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/larskuhtz/wai-cors")
    (synopsis "CORS for WAI")
    (description "This package provides an implemenation of
Cross-Origin resource sharing (CORS) for
<http://hackage.haskell.org/package/wai Wai>
that aims to be compliant with <http://www.w3.org/TR/cors>.")
    (license license:expat)))

haskell-9.2-wai-cors

(define-public haskell-9.2-wai-eventsource
  (package
    (name "haskell-9.2-wai-eventsource")
    (version "3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-eventsource/wai-eventsource-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h5zlqky7ldqbmiaixizhk1s8ghf5i3ha1xfz8flxgzr7gr0al3q"))))
    (properties `((upstream-name . "wai-eventsource") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://www.yesodweb.com/book/web-application-interface")
    (synopsis "WAI support for server-sent events (deprecated)")
    (description "Since WAI 3.0, this code has been merged into wai-extra.")
    (license license:expat)))

haskell-9.2-wai-eventsource

(define-public haskell-9.2-wai-middleware-caching
  (package
    (name "haskell-9.2-wai-middleware-caching")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-caching/wai-middleware-caching-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13fp08ba46wn7gianfbirag8yj14s2x41fkhdb5mx7arjafgpd8m"))))
    (properties `((upstream-name . "wai-middleware-caching") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "http://github.com/yogsototh/wai-middleware-caching/tree/master/wai-middleware-caching#readme")
    (synopsis "WAI Middleware to cache things")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.2-wai-middleware-caching

(define-public haskell-9.2-wai-rate-limit
  (package
    (name "haskell-9.2-wai-rate-limit")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-rate-limit/wai-rate-limit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04w146xpw5zlzwrcjq8facmi39izfngmg121bkahyxwsbbnz3adx"))))
    (properties `((upstream-name . "wai-rate-limit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-time-units)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mbg/wai-rate-limit#readme")
    (synopsis "Rate limiting as WAI middleware")
    (description
     "A Haskell library which implements rate limiting as WAI middleware")
    (license license:expat)))

haskell-9.2-wai-rate-limit

(define-public haskell-9.2-wai-session
  (package
    (name "haskell-9.2-wai-session")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-session/wai-session-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lq0gqndb9simd1zkz355m604dwrpcdwxcl3bgagi6kb8h12fffj"))))
    (properties `((upstream-name . "wai-session") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-StateVar)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-bytestring-builder)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-cookie)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-entropy)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-vault)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/singpolyma/wai-session")
    (synopsis "Flexible session middleware for WAI")
    (description
     "Provides a generic, cookie-based middleware for sessions that is
parameterised over the session store, the cookie name, and the
cookie parameters (such as path, expiry, etc).  Passes a pair of
functions (lookup key, set key) for the current session through the
'Vault' in the 'Request'.

Also provides a simple example session store based on threadsafe
'IORef's and 'Data.Map'.

See example/Main.hs in git for example usage.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-wai-session

(define-public haskell-9.2-wai-slack-middleware
  (package
    (name "haskell-9.2-wai-slack-middleware")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-slack-middleware/wai-slack-middleware-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0l2pd61vxnfjdjzkvmwqfgf07a3nir3mnbr8qw2nzqa767s84i6i"))))
    (properties `((upstream-name . "wai-slack-middleware") (hidden? . #f)))
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
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/psibi/wai-slack-middleware#readme")
    (synopsis "A Slack middleware for WAI")
    (description "Logs the request information into Slack through webhook from
a WAI application.")
    (license license:bsd-3)))

haskell-9.2-wai-slack-middleware

(define-public haskell-9.2-web-routes-boomerang
  (package
    (name "haskell-9.2-web-routes-boomerang")
    (version "0.28.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/web-routes-boomerang/web-routes-boomerang-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cdn29084i2bvsh7pa6d4dr5bgpixix36dhi49q8nbcbp02qycap"))))
    (properties `((upstream-name . "web-routes-boomerang") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-boomerang)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-web-routes)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/web-routes-boomerang")
    (synopsis "Use boomerang for type-safe URL parsers/printers")
    (description
     "This module add support for creating url parsers/printers using a single unified grammar specification")
    (license license:bsd-3)))

haskell-9.2-web-routes-boomerang

(define-public haskell-9.2-web-routes-happstack
  (package
    (name "haskell-9.2-web-routes-happstack")
    (version "0.23.12.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/web-routes-happstack/web-routes-happstack-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01ks9c8bln8yiff7dqfm3ai7scci304q94w1zaqvzph57m1whrd6"))))
    (properties `((upstream-name . "web-routes-happstack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-happstack-server)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-web-routes)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/web-routes-happstack")
    (synopsis "Adds support for using web-routes with Happstack")
    (description
     "Added Happstack class instances for RouteT. Provides a default router for Site.")
    (license license:bsd-3)))

haskell-9.2-web-routes-happstack

(define-public haskell-9.2-web-routes-hsp
  (package
    (name "haskell-9.2-web-routes-hsp")
    (version "0.24.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/web-routes-hsp/web-routes-hsp-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cmijyklkrakcwfmwfa70kbm619p1dfl900lx57mca23k8m2aksn"))))
    (properties `((upstream-name . "web-routes-hsp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-hsp)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-web-routes)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/web-routes-hsp")
    (synopsis "Adds XMLGenerator instance for RouteT monad")
    (description
     "The module makes it easy to use type-safe URLs in HSP templates")
    (license license:bsd-3)))

haskell-9.2-web-routes-hsp

(define-public haskell-9.2-web-routes-th
  (package
    (name "haskell-9.2-web-routes-th")
    (version "0.22.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/web-routes-th/web-routes-th-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0h3xaml18jgc66ylmwlymp1mqnf59lfvsd3xswdki8dk31ryaca4"))))
    (properties `((upstream-name . "web-routes-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-web-routes)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/happstack/web-routes-th")
    (synopsis "Support for deriving PathInfo using Template Haskell")
    (description
     "web-routes is a portable library for type-safe URLs. This module adds
support for creating the URL parsers/printers automatically using
Template Haskell.")
    (license license:bsd-3)))

haskell-9.2-web-routes-th

(define-public haskell-9.2-web-routes-wai
  (package
    (name "haskell-9.2-web-routes-wai")
    (version "0.24.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/web-routes-wai/web-routes-wai-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cdahkpw0194gdx11g4h4313ni0b6sdj9j5r666rgwwzr22wgql7"))))
    (properties `((upstream-name . "web-routes-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-web-routes)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/web-routes-wai")
    (synopsis
     "Library for maintaining correctness of URLs within an application.")
    (description
     "A collection of types and functions that ensure that URLs generated by an application are valid. Need more properties here.")
    (license license:bsd-3)))

haskell-9.2-web-routes-wai

(define-public haskell-9.2-webdriver
  (package
    (name "haskell-9.2-webdriver")
    (version "0.10.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/webdriver/webdriver-" version
                    ".tar.gz"))
              (sha256
               (base32
                "02vm6wncjzcxmakabnjklkybcyylksfkpj1za541rrjv448zi7qj"))))
    (properties `((upstream-name . "webdriver") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-call-stack)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-directory-tree)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-lifted-base)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-zip-archive)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/codedownio/hs-webdriver#readme")
    (synopsis "a Haskell client for the Selenium WebDriver protocol")
    (description
     "A Selenium WebDriver client for Haskell.
You can use it to automate browser sessions
for testing, system administration, etc.

For more information about Selenium itself, see
<http://seleniumhq.org/>

To find out what's been changed in this version and others,
see the change log at
<https://github.com/kallisti-dev/hs-webdriver/blob/master/CHANGELOG.md>")
    (license license:bsd-3)))

haskell-9.2-webdriver

(define-public haskell-9.2-withdependencies
  (package
    (name "haskell-9.2-withdependencies")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/withdependencies/withdependencies-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hjld3ndafnaxwx1c6s88dc3bimbc5vwfdf6lcsq22apzh1gmdm6"))))
    (properties `((upstream-name . "withdependencies") (hidden? . #f)))
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
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/bartavelle/withdependencies")
    (synopsis
     "Run computations that depend on one or more elements in a stream.")
    (description
     "Run computations that depend on one or more elements in a stream. It lets you model dependencies as an applicative functor.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-withdependencies

(define-public haskell-9.2-world-peace
  (package
    (name "haskell-9.2-world-peace")
    (version "1.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/world-peace/world-peace-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05r4ils0imcv31sx6h82mwcwcrasrfs6kkip3frdsbf0aizgzcdb"))))
    (properties `((upstream-name . "world-peace") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cdepillabout/world-peace")
    (synopsis "Open Union and Open Product Types")
    (description
     "Please see <https://github.com/cdepillabout/world-peace#readme README.md>.")
    (license license:bsd-3)))

haskell-9.2-world-peace

(define-public haskell-9.2-wuss
  (package
    (name "haskell-9.2-wuss")
    (version "2.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/wuss/wuss-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04jqq3blzyxqyymhcjsm5z89whk5y7cvnd9dw6nlc40vq4w4v802"))))
    (properties `((upstream-name . "wuss") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pedantic")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-connection)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-websockets)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/wuss")
    (synopsis "Secure WebSocket (WSS) clients")
    (description
     "Wuss is a library that lets you easily create secure WebSocket clients over
the WSS protocol. It is a small addition to
<https://hackage.haskell.org/package/websockets the websockets package> and
is adapted from existing solutions by
<https://gist.github.com/jaspervdj/7198388 @@jaspervdj>,
<https://gist.github.com/mpickering/f1b7ba3190a4bb5884f3 @@mpickering>, and
<https://gist.github.com/elfenlaid/7b5c28065e67e4cf0767 @@elfenlaid>.")
    (license license:expat)))

haskell-9.2-wuss

(define-public haskell-9.2-xeno
  (package
    (name "haskell-9.2-xeno")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/xeno/xeno-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "07l3wv4x56j6gl3pkcvpfszz7a0rhsw35i6mh222j1dcqx3hxn9v"))))
    (properties `((upstream-name . "xeno") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-libxml2" "-f-whitespace-around-equals")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-hexml)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-mutable-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ocramz/xeno")
    (synopsis "A fast event-based XML parser in pure Haskell")
    (description
     "A fast, low-memory use, event-based XML parser in pure Haskell.  ")
    (license license:bsd-3)))

haskell-9.2-xeno

