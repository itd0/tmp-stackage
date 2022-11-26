;;; generated file
(define-module (gnu packages stackage ghc-9.0 stage010)
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
(define-public haskell-9.0-ALUT
  (package
    (name "haskell-9.0-ALUT")
    (version "2.4.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ALUT/ALUT-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04nrh7vribs4jvg99hj3fmshzcw6kkf45r842iys19ln3l51p2bi"))))
    (properties `((upstream-name . "ALUT") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fusenativewindowslibraries" "-f-buildexamples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-OpenAL)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-StateVar)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages audio) freealut)
                             (@ (gnu packages gl) freeglut)
                             (@ (gnu packages audio) openal)))
    (home-page "https://github.com/haskell-openal/ALUT")
    (synopsis "A binding for the OpenAL Utility Toolkit")
    (description
     "A Haskell binding for the OpenAL Utility Toolkit, which makes
managing of OpenAL contexts, loading sounds in various formats
and creating waveforms very easy. For more information about the
C library on which this binding is based, please see:
<http://distro.ibiblio.org/rootlinux/rootlinux-ports/more/freealut/freealut-1.1.0/doc/alut.html>.")
    (license license:bsd-3)))

haskell-9.0-ALUT

(define-public haskell-9.0-ConfigFile
  (package
    (name "haskell-9.0-ConfigFile")
    (version "1.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ConfigFile/ConfigFile-" version
                    ".tar.gz"))
              (sha256
               (base32
                "057mw146bip9wzs7j4b5xr1x24d8w0kr4i3inri5m57jkwspn25f"))))
    (properties `((upstream-name . "ConfigFile") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildtests")
       #:cabal-revision
       ("1" "10qqg7x6pa2nryk3j56im65kvbh1v9psf6ic3nkabfxvigw83d2c")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-MissingH)))
    (home-page "http://software.complete.org/configfile")
    (synopsis "Configuration file reading & writing")
    (description
     "Parser and writer for handling sectioned config files in
Haskell.

The ConfigFile module works with configuration files in a standard
format that is easy for the user to edit, easy for the programmer
to work with, yet remains powerful and flexible.  It is inspired by,
and compatible with, Python's ConfigParser module.  It uses files
that resemble Windows .INI-style files, but with numerous
improvements.

ConfigFile provides simple calls to both read and write config files.
It's possible to make a config file parsable by this module,
the Unix shell, and make.")
    (license license:bsd-3)))

haskell-9.0-ConfigFile

(define-public haskell-9.0-file-modules
  (package
    (name "haskell-9.0-file-modules")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-MissingH)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-regex-compat)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-regex-pcre)))
    (home-page "https://github.com/yamadapc/stack-run-auto")
    (synopsis "Takes a Haskell source-code file and outputs its modules.")
    (description
     "Uses @@haskell-src-exts@@ to parse module imports and follows links
. to local modules in order to build a list of module dependencies.")
    (license license:expat)))

haskell-9.0-file-modules

(define-public haskell-9.0-gloss-rendering
  (package
    (name "haskell-9.0-gloss-rendering")
    (version "1.13.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gloss-rendering/gloss-rendering-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pkzm7zzfdya8cz3h66akx8785h3vxbnyb815liw4nilvwg01d9x"))))
    (properties `((upstream-name . "gloss-rendering") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "10x83cpxp6yrmamjg4kjm3pzlhh6zj2rdw686py0vcx0jrjy3qg7")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009) haskell-9.0-GLUT)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-OpenGL)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-bmp)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "https://hackage.haskell.org/package/gloss-rendering")
    (synopsis "Gloss picture data types and rendering functions.")
    (description
     "Gloss picture data types and rendering functions. These functions
don't do any window management. If you want gloss to setup your window as
well then use the plain @@gloss@@ package.")
    (license license:expat)))

haskell-9.0-gloss-rendering

(define-public haskell-9.0-tasty-bench
  (package
    (name "haskell-9.0-tasty-bench")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-bench/tasty-bench-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j92ggsg3fqwkq9zgx94wqqi11yim4b7d1b2s1s24rdv6wy3sfn8"))))
    (properties `((upstream-name . "tasty-bench") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftasty" "-f-debug")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)))
    (home-page "https://github.com/Bodigrim/tasty-bench")
    (synopsis "Featherlight benchmark framework")
    (description
     "Featherlight framework (only one file!)
for performance measurement with API mimicking
@@criterion@@ and @@gauge@@, featuring built-in comparison
against previous runs and between benchmarks. Our benchmarks are just
regular @@tasty@@ tests.")
    (license license:expat)))

haskell-9.0-tasty-bench

(define-public haskell-9.0-tasty-dejafu
  (package
    (name "haskell-9.0-tasty-dejafu")
    (version "2.0.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-dejafu/tasty-dejafu-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cqm88aihaf2y25m129r4dg80a7h9q1gj6pjbg1yd6wb2lxd6zga"))))
    (properties `((upstream-name . "tasty-dejafu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-dejafu)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)))
    (home-page "https://github.com/barrucadu/dejafu")
    (synopsis "Deja Fu support for the Tasty test framework.")
    (description
     "Integration between the <https://hackage.haskell.org/package/dejafu dejafu>
library for concurrency testing and
<https://hackage.haskell.org/package/tasty tasty>. This lets you
easily incorporate concurrency testing into your existing test
suites.")
    (license license:expat)))

haskell-9.0-tasty-dejafu

(define-public haskell-9.0-tasty-discover
  (package
    (name "haskell-9.0-tasty-discover")
    (version "4.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-discover/tasty-discover-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1v6ndsvz9f04gv3m41a2yqprpa7xz8d00vkws25a9n7b7h3wvj4x"))))
    (properties `((upstream-name . "tasty-discover") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Glob)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)))
    (home-page "https://github.com/haskell-works/tasty-discover")
    (synopsis "Test discovery for the tasty framework.")
    (description
     "Automatic test discovery and runner for the tasty framework.
Prefix your test case names and tasty-discover will discover, collect and run them.
All popular test libraries are covered. Configure once and then just write your tests.
Avoid forgetting to add test modules to your Cabal/Hpack files.
Tasty ingredients are included along with various configuration options for different
use cases.
Please see the `README.md` below for how to get started.")
    (license license:expat)))

haskell-9.0-tasty-discover

(define-public haskell-9.0-tasty-expected-failure
  (package
    (name "haskell-9.0-tasty-expected-failure")
    (version "0.12.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-expected-failure/tasty-expected-failure-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zlgxs24d54byfhvwdg85xk1572zpjs71bjlxxrxcvralrfcq1yb"))))
    (properties `((upstream-name . "tasty-expected-failure") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unbounded-delays)))
    (home-page "http://github.com/nomeata/tasty-expected-failure")
    (synopsis "Mark tasty tests as failure expected")
    (description
     "With the function 'Test.Tasty.ExpectedFailure.expectFail' in the provided module
\"Test.Tasty.ExpectedFailure\", you can mark that you expect test cases to fail,
and not to pass.

This can for example be used for test-driven development: Create the tests,
mark them with 'Test.Tasty.ExpectedFailure.expectFail', and you can still push
to the main branch, without your continuous integration branch failing.

Once someone implements the feature or fixes the bug (maybe unknowingly), the
test suite will tell him so, due to the now unexpectedly passing test, and he
can remove the 'Test.Tasty.ExpectedFailure.expectFail' marker.

The module also provides 'Test.Tasty.ExpectedFailure.ignoreTest' to avoid
running a test. Both funtions are implemented via the more general
'Test.Tasty.ExpectedFailure.wrapTest', which is also provided.")
    (license license:expat)))

haskell-9.0-tasty-expected-failure

(define-public haskell-9.0-tasty-fail-fast
  (package
    (name "haskell-9.0-tasty-fail-fast")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-fail-fast/tasty-fail-fast-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pkqa3b1jglmy6g2sx9pyw2f6dlsg2crmgvy039xiyldl985g9w4"))))
    (properties `((upstream-name . "tasty-fail-fast") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)))
    (home-page "http://github.com/MichaelXavier/tasty-fail-fast#readme")
    (synopsis
     "Adds the ability to fail a tasty test suite on first test failure")
    (description
     "tasty-fail-fast wraps any ingredient to fail as soon as the first test fails. For example:

@@
defaultMainWithIngredients (map failFast defaultIngredients) tests
@@

Your test suite will now get a @@--fail-fast@@ flag.")
    (license license:bsd-3)))

haskell-9.0-tasty-fail-fast

(define-public haskell-9.0-tasty-hunit
  (package
    (name "haskell-9.0-tasty-hunit")
    (version "0.10.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-hunit/tasty-hunit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gz6zz3w7s44pymw33xcxnawryl27zk33766sab96nz2xh91kvxp"))))
    (properties `((upstream-name . "tasty-hunit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-call-stack)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)))
    (home-page "https://github.com/feuerbach/tasty")
    (synopsis "HUnit support for the Tasty test framework.")
    (description "HUnit support for the Tasty test framework.

Note that this package does not depend on HUnit but
implements the relevant subset of its API. The name is a
legacy of the early versions of tasty-hunit and of
test-framework-hunit, which did depend on HUnit.")
    (license license:expat)))

haskell-9.0-tasty-hunit

(define-public haskell-9.0-tasty-inspection-testing
  (package
    (name "haskell-9.0-tasty-inspection-testing")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-inspection-testing/tasty-inspection-testing-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0p46w44f19w7lvdzyg3vq6qzix0rjp8p23ilxz82dviq38lgmifp"))))
    (properties `((upstream-name . "tasty-inspection-testing") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-inspection-testing)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)))
    (home-page "https://github.com/Bodigrim/tasty-inspection-testing")
    (synopsis "Inspection testing support for tasty")
    (description
     "Integrate @@inspection-testing@@ into @@tasty@@ test suites.")
    (license license:expat)))

haskell-9.0-tasty-inspection-testing

(define-public haskell-9.0-tasty-leancheck
  (package
    (name "haskell-9.0-tasty-leancheck")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-leancheck/tasty-leancheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1083xs3pvvwfindhkvd7g4bbiaa4g293vi7l2r25adbxz13snpdz"))))
    (properties `((upstream-name . "tasty-leancheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-leancheck)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)))
    (home-page "https://github.com/rudymatela/tasty-leancheck#readme")
    (synopsis "LeanCheck support for the Tasty test framework.")
    (description
     "LeanCheck support for the Tasty test framework.

This package can be used to incorporate LeanCheck tests into Tasty test
suites.

Please see the Haddock documentation and README for more details.")
    (license license:bsd-3)))

haskell-9.0-tasty-leancheck

(define-public haskell-9.0-tasty-program
  (package
    (name "haskell-9.0-tasty-program")
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-program/tasty-program-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1i19b1pps1hwqs7djx859ddcdmqfzgyzyi72db62jw03bynmbcjc"))))
    (properties `((upstream-name . "tasty-program") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)))
    (home-page "https://github.com/jstolarek/tasty-program")
    (synopsis
     "Use tasty framework to test whether a program executes correctly")
    (description
     "This package provides a function that extends
<http://hackage.haskell.org/package/tasty tasty> testing
framework with capability to test whether an external
program runs successfully. This package is inspired by
<http://hackage.haskell.org/package/test-framework-program test-framework-program>
package by Adam Wick.
tasty-program provides basic functionality of
running a program with specified set of command
line parameters, and optionally a working
directory, and checking the exit code. Program's
output and error streams are ignored.")
    (license license:bsd-3)))

haskell-9.0-tasty-program

(define-public haskell-9.0-tasty-rerun
  (package
    (name "haskell-9.0-tasty-rerun")
    (version "1.1.18")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-rerun/tasty-rerun-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sccp5zx9v2rx741nbmgd8mzjhy5m4v74hk26d23xz93ph8aqx7s"))))
    (properties `((upstream-name . "tasty-rerun") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0091arn90cx5rzn5n2bpb9alzybwraf9yj7hb0bwdfyamzpf3pkb")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)))
    (home-page "http://github.com/ocharles/tasty-rerun")
    (synopsis "Rerun only tests which failed in a previous test run")
    (description
     "This ingredient
for the <https://hackage.haskell.org/package/tasty tasty> testing framework
allows filtering a test tree depending
on the outcome of the previous run.
This may be useful in many scenarios,
especially when a test suite grows large.")
    (license license:bsd-3)))

haskell-9.0-tasty-rerun

