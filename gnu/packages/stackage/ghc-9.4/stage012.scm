;;; generated file
(define-module (gnu packages stackage ghc-9.4 stage012)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-9.4))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-9.4-BiobaseEnsembl
  (package
    (name "haskell-9.4-BiobaseEnsembl")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-either-unwrap)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-word8)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/eggzilla/BiobaseEnsembl")
    (synopsis "Ensembl related datastructures and functions")
    (description
     "This library contains high through put sequencing and Ensembl-related functionality:
- Datastructures to query Ensembl REST interface

- Parser for GFF3

- Datastructure for GFF3")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-BiobaseEnsembl

(define-public haskell-9.4-ENIG
  (package
    (name "haskell-9.4-ENIG")
    (version "0.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ENIG/ENIG-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1zv6dybsnj3kssiyyg69lxyj5wvi5qjx0xp7skg362xzqmi97ch3"))))
    (properties `((upstream-name . "ENIG") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unicode-transforms)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://github.com/QuietJoon/ENIG#readme")
    (synopsis "Auto Korean conjugator/adjustor/adopter/converter")
    (description
     "Please see the README on GitHub at <https://github.com/QuietJoon/ENIG#readme>")
    (license license:bsd-3)))

haskell-9.4-ENIG

(define-public haskell-9.4-HTF
  (package
    (name "haskell-9.4-HTF")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Diff)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-cpphs)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-haskell-src)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-lifted-base)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-old-time)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-regex-compat)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-xmlgen)))
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

haskell-9.4-HTF

(define-public haskell-9.4-HTTP
  (package
    (name "haskell-9.4-HTTP")
    (version "4000.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HTTP/HTTP-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0lyl5lpkk51xn3dfndh8ksgvwcdsviyigmsnp3d28lbpxkpxhcfz"))))
    (properties `((upstream-name . "HTTP") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-warn-as-error" "-f-conduit10" "-f-warp-tests" "-fnetwork-uri")
       #:cabal-revision
       ("1" "04y04vbxbnblpmqqmpl8km4bkcjaj96nbxkssdr1zgbhqisxay5q")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell/HTTP")
    (synopsis "A library for client-side HTTP")
    (description
     "The HTTP package supports client-side web programming in Haskell. It lets you set up
HTTP connections, transmitting requests and processing the responses coming back, all
from within the comforts of Haskell. It's dependent on the network package to operate,
but other than that, the implementation is all written in Haskell.

A basic API for issuing single HTTP requests + receiving responses is provided. On top
of that, a session-level abstraction is also on offer  (the @@BrowserAction@@ monad);
it taking care of handling the management of persistent connections, proxies,
state (cookies) and authentication credentials required to handle multi-step
interactions with a web server.

The representation of the bytes flowing across is extensible via the use of a type class,
letting you pick the representation of requests and responses that best fits your use.
Some pre-packaged, common instances are provided for you (@@ByteString@@, @@String@@).

Here's an example use:

>
>    do
>      rsp <- Network.HTTP.simpleHTTP (getRequest \"http://www.haskell.org/\")
>              -- fetch document and return it (as a 'String'.)
>      fmap (take 100) (getResponseBody rsp)
>
>    do
>      (_, rsp)
>         <- Network.Browser.browse $ do
>               setAllowRedirects True -- handle HTTP redirects
>               request $ getRequest \"http://www.haskell.org/\"
>      return (take 100 (rspBody rsp))

__Note:__ This package does not support HTTPS connections.
If you need HTTPS, take a look at the following packages:

* <http://hackage.haskell.org/package/http-streams http-streams>

* <http://hackage.haskell.org/package/http-client http-client> (in combination with
<http://hackage.haskell.org/package/http-client-tls http-client-tls>)

* <http://hackage.haskell.org/package/req req>

* <http://hackage.haskell.org/package/wreq wreq>
")
    (license license:bsd-3)))

haskell-9.4-HTTP

(define-public haskell-9.4-HaTeX
  (package
    (name "haskell-9.4-HaTeX")
    (version "3.22.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HaTeX/HaTeX-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1hxj661nkaylh46xrwddj8zm1gb64714yz7jk1afmy5n4yzsqdzj"))))
    (properties `((upstream-name . "HaTeX") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-bibtex)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-matrix)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.4-HaTeX

(define-public haskell-9.4-HsYAML-aeson
  (package
    (name "haskell-9.4-HsYAML-aeson")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-HsYAML)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
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

haskell-9.4-HsYAML-aeson

(define-public haskell-9.4-IPv6Addr
  (package
    (name "haskell-9.4-IPv6Addr")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-iproute)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-network-info)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/MichelBoucey/IPv6Addr")
    (synopsis "Library to deal with IPv6 address text representations.")
    (description
     "Library to deal with IPv6 address text representations, canonization and manipulations.")
    (license license:bsd-3)))

haskell-9.4-IPv6Addr

(define-public haskell-9.4-ShellCheck
  (package
    (name "haskell-9.4-ShellCheck")
    (version "0.9.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ShellCheck/ShellCheck-" version
                    ".tar.gz"))
              (sha256
               (base32
                "071k2gc8rzpg9lwq9g10c9xx0zm1wcgsf8v4n1csj9fm56vy7gmb"))))
    (properties `((upstream-name . "ShellCheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0gs8q9dijsxzz6chq1gwzn34b2l2iskh72j10n47qqf598dwbjgm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Diff)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-fgl)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-regex-tdfa)))
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

haskell-9.4-ShellCheck

(define-public haskell-9.4-ad
  (package
    (name "haskell-9.4-ad")
    (version "4.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ad/ad-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "08vcp760j6ay8k9zs4qzhvirf775vhni56923jbjzdxrs9mm5167"))))
    (properties `((upstream-name . "ad") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-herbie" "-f-ffi")
       #:cabal-revision
       ("2" "1pcsiaq1zgy13wdkambjkmmlggv04wdyzpq25my9rmdfi81yqara")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-adjunctions)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-data-reify)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-erf)
                  (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-free)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-nats)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-reflection)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)))
    (home-page "http://github.com/ekmett/ad")
    (synopsis "Automatic Differentiation")
    (description
     "Forward-, reverse- and mixed- mode automatic differentiation combinators with a common API.

Type-level \\\"branding\\\" is used to both prevent the end user from confusing infinitesimals
and to limit unsafe access to the implementation details of each Mode.

Each mode has a separate module full of combinators.

* @@Numeric.AD.Mode.Forward@@ provides basic forward-mode AD. It is good for computing simple derivatives.

* @@Numeric.AD.Mode.Reverse@@ uses benign side-effects to compute reverse-mode AD. It is good for computing gradients in one pass. It generates a Wengert list (linear tape) using @@Data.Reflection@@.

* @@Numeric.AD.Mode.Kahn@@ uses benign side-effects to compute reverse-mode AD. It is good for computing gradients in one pass. It generates a tree-like tape that needs to be topologically sorted in the end.

* @@Numeric.AD.Mode.Sparse@@ computes a sparse forward-mode AD tower. It is good for higher derivatives or large numbers of outputs.

* @@Numeric.AD.Mode.Tower@@ computes a dense forward-mode AD tower useful for higher derivatives of single input functions.

* @@Numeric.AD@@ computes using whichever mode or combination thereof is suitable to each individual combinator.

While not every mode can provide all operations, the following basic operations are supported, modified as
appropriate by the suffixes below:

* 'grad' computes the gradient (partial derivatives) of a function at a point.

* 'jacobian' computes the Jacobian matrix of a function at a point.

* 'diff' computes the derivative of a function at a point.

* 'du' computes a directional derivative of a function at a point.

* 'hessian' computes the Hessian matrix (matrix of second partial derivatives) of a function at a point.

The following suffixes alter the meanings of the functions above as follows:

* @@\\'@@ -- also return the answer

* @@With@@ lets the user supply a function to blend the input with the output

* @@F@@ is a version of the base function lifted to return a 'Traversable' (or 'Functor') result

* @@s@@ means the function returns all higher derivatives in a list or f-branching 'Stream'

* @@T@@ means the result is transposed with respect to the traditional formulation.

* @@0@@ means that the resulting derivative list is padded with 0s at the end.

* @@NoEq@@ means that an infinite list of converging values is returned rather than truncating the list when they become constant")
    (license license:bsd-3)))

haskell-9.4-ad

(define-public haskell-9.4-aern2-mp
  (package
    (name "haskell-9.4-aern2-mp")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-cdar-mBound)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-collect-errors)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-integer-logarithms)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-mixed-types-num)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-reflection)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-regex-tdfa)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/michalkonecny/aern2#readme")
    (synopsis "Multi-precision ball (interval) arithmetic")
    (description
     "Please see the README on GitHub at <https://github.com/michalkonecny/aern2/#readme>")
    (license license:bsd-3)))

haskell-9.4-aern2-mp

(define-public haskell-9.4-aeson-attoparsec
  (package
    (name "haskell-9.4-aeson-attoparsec")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/athanclark/aeson-attoparsec#readme")
    (synopsis "Embed an Attoparsec text parser into an Aeson parser")
    (description "")
    (license license:bsd-3)))

haskell-9.4-aeson-attoparsec

(define-public haskell-9.4-aeson-combinators
  (package
    (name "haskell-9.4-aeson-combinators")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-fail)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-time-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-uuid-types)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/turboMaCk/aeson-combinators")
    (synopsis "Aeson combinators for dead simple JSON decoding")
    (description "Low overhead value space `Decoder`
on top of Aeson's Parser for combinator style decoding.")
    (license license:bsd-3)))

haskell-9.4-aeson-combinators

(define-public haskell-9.4-aeson-compat
  (package
    (name "haskell-9.4-aeson-compat")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "0h9ycmx7ad8m3iby8zgv33ql76zggnkiw8c8hnyrh98lm45jj1y0")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-attoparsec-iso8601)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-time-locale-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/phadej/aeson-compat#readme")
    (synopsis "Compatibility layer for aeson")
    (description "Compatibility layer for @@aeson@@")
    (license license:bsd-3)))

haskell-9.4-aeson-compat

(define-public haskell-9.4-aeson-extra
  (package
    (name "haskell-9.4-aeson-extra")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-base-compat-batteries)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-recursion-schemes)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-semialign)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-these)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/phadej/aeson-extra#readme")
    (synopsis "Extra goodies for aeson")
    (description
     "Package provides extra functionality on top of @@aeson@@ and @@aeson-compat@@")
    (license license:bsd-3)))

haskell-9.4-aeson-extra

(define-public haskell-9.4-aeson-generic-compat
  (package
    (name "haskell-9.4-aeson-generic-compat")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/aeson-generic-compat")
    (synopsis "Compatible generic class names of Aeson")
    (description
     "This package includes compatible generic class names of Aeson package.")
    (license license:bsd-3)))

haskell-9.4-aeson-generic-compat

(define-public haskell-9.4-aeson-iproute
  (package
    (name "haskell-9.4-aeson-iproute")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-iproute)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/greydot/aeson-iproute")
    (synopsis "Aeson instances for iproute types")
    (description "Aeson instances for iproute types.")
    (license license:bsd-3)))

haskell-9.4-aeson-iproute

(define-public haskell-9.4-aeson-optics
  (package
    (name "haskell-9.4-aeson-optics")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-optics-core)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-optics-extra)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-text-short)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/phadej/aeson-optics")
    (synopsis "Law-abiding optics for aeson")
    (description "Law-abiding optics for aeson.")
    (license license:expat)))

haskell-9.4-aeson-optics

(define-public haskell-9.4-aeson-pretty
  (package
    (name "haskell-9.4-aeson-pretty")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cmdargs)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
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

haskell-9.4-aeson-pretty

(define-public haskell-9.4-aeson-value-parser
  (package
    (name "haskell-9.4-aeson-value-parser")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
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

haskell-9.4-aeson-value-parser

(define-public haskell-9.4-aeson-yak
  (package
    (name "haskell-9.4-aeson-yak")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)))
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

haskell-9.4-aeson-yak

(define-public haskell-9.4-algebra
  (package
    (name "haskell-9.4-algebra")
    (version "4.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/algebra/algebra-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "090jaipyx5pcav2wqcqzds51fwx49l4c9cpp9nnk16bgkf92z615"))))
    (properties `((upstream-name . "algebra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1yrqg6p9p7vfzv8gjbcvln5gd221kslg6zvn5d1722wfa06g4g1j")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-adjunctions)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-distributive)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-nats)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-void)))
    (home-page "http://github.com/ekmett/algebra/")
    (synopsis "Constructive abstract algebra")
    (description "Constructive abstract algebra")
    (license license:bsd-3)))

haskell-9.4-algebra

(define-public haskell-9.4-ascii-caseless
  (package
    (name "haskell-9.4-ascii-caseless")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-caseless/ascii-caseless-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00v05dzs47d638fbnkhb2kv3as5jkzrq33w8skh45srbjabc5w42"))))
    (properties `((upstream-name . "ascii-caseless") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-ascii-case)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-ascii-char)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/typeclasses/ascii-caseless")
    (synopsis "ASCII character without an upper/lower case distinction")
    (description "This package defines a @@Char@@ type that has
102 constructors: 128 ASCII characters minus 26 letters.")
    (license license:asl2.0)))

haskell-9.4-ascii-caseless

(define-public haskell-9.4-astro
  (package
    (name "haskell-9.4-astro")
    (version "0.4.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/astro/astro-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1zbraw0l40r190vw9dc7bwwcrac4p6yqwng5qa8n277v6cwy5kv5"))))
    (properties `((upstream-name . "astro") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-matrix)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/aligusnet/astro")
    (synopsis "Amateur astronomical computations")
    (description
     "Amateur astronomical computations: rise and set times and azimuths,
coordinates, distances, angular sizes and other parameters
of the Sun, the Moon, planets and stars.")
    (license license:bsd-3)))

haskell-9.4-astro

(define-public haskell-9.4-atom-basic
  (package
    (name "haskell-9.4-atom-basic")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/atom-basic/atom-basic-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vkm5wfsgprs42qjzxchgrpxj3xalpg2zd79n9isvlxsp1krdgi4"))))
    (properties `((upstream-name . "atom-basic") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/atom-basic")
    (synopsis "Basic Atom feed construction")
    (description
     "<https://hackage.haskell.org/package/atom-basic atom-basic> provides a
relatively type-safe <http://tools.ietf.org/html/rfc4287 RFC4287> Atom feed
that can be used to generate feed or entry XML using the types of any
Haskell XML library. Please see the 'Web.Atom' module documentation for
more information.")
    (license license:bsd-3)))

haskell-9.4-atom-basic

(define-public haskell-9.4-autodocodec
  (package
    (name "haskell-9.4-autodocodec")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-validity-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/autodocodec#readme")
    (synopsis "Self-documenting encoder and decoder")
    (description "")
    (license license:expat)))

haskell-9.4-autodocodec

(define-public haskell-9.4-base32string
  (package
    (name "haskell-9.4-base32string")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://www.leonmergen.com/opensource.html")
    (synopsis "Fast and safe representation of a Base-32 string")
    (description
     "Provides an interface for converting any object that has a 'Binary' instance
to and from a base-32 Text representation.")
    (license license:expat)))

haskell-9.4-base32string

(define-public haskell-9.4-base58string
  (package
    (name "haskell-9.4-base58string")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://www.leonmergen.com/opensource.html")
    (synopsis "Fast and safe representation of a Base-58 string")
    (description
     "Provides an interface for converting any object that has a 'Binary' instance
to and from a base-58 Text representation.")
    (license license:expat)))

haskell-9.4-base58string

(define-public haskell-9.4-bech32
  (package
    (name "haskell-9.4-bech32")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bech32/bech32-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1iyjnyy7l0jf2azbgg6lc5k7n25h1r41fyyqfagyaz79vhi1k7j8"))))
    (properties `((upstream-name . "bech32") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-release" "-f-static")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-base58-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/input-output-hk/bech32")
    (synopsis
     "Implementation of the Bech32 cryptocurrency address format (BIP 0173).")
    (description
     "Implementation of the Bech32 cryptocurrency address format documented in the
BIP (Bitcoin Improvement Proposal) 0173.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.4-bech32

(define-public haskell-9.4-benri-hspec
  (package
    (name "haskell-9.4-benri-hspec")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/benri-hspec/benri-hspec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11x7dsp6hmz1an1nm8076lgdvgd8r67hl54p81jprpi8m0lh6mqa"))))
    (properties `((upstream-name . "benri-hspec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-build-the-readme" "-f-use-doc-tests")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-markdown-unlit)))
    (home-page "https://github.com/adetokunbo/benri-hspec#readme")
    (synopsis
     "Simplify tests where Either or Maybe types are returned from monadic code")
    (description
     "A small library of __convenient__ functions for writing hspec tests.

It simplifies tests where `Either`, `Maybe` and other types are returned from
monadic code.

The [README](https://github.com/adetokunbo/benri-hspec#readme) provides usage examples.")
    (license license:bsd-3)))

haskell-9.4-benri-hspec

(define-public haskell-9.4-binary-instances
  (package
    (name "haskell-9.4-binary-instances")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-binary-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-text-binary)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-time-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-vector-binary-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskellari/binary-instances#readme")
    (synopsis "Orphan instances for binary")
    (description
     "`binary-instances` defines orphan instances for types in some popular packages.")
    (license license:bsd-3)))

haskell-9.4-binary-instances

(define-public haskell-9.4-blanks
  (package
    (name "haskell-9.4-blanks")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/blanks/blanks-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1a38cwk65zkzhq8yc95v4kamyp9k1y1vnfii84yqzvrrlbfzxbqf"))))
    (properties `((upstream-name . "blanks") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-adjunctions)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-distributive)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)))
    (home-page "https://github.com/ejconlon/blanks#readme")
    (synopsis
     "Fill-in-the-blanks - A library factoring out substitution from ASTs")
    (description
     "Please see the README on GitHub at <https://github.com/ejconlon/blanks#readme>")
    (license license:bsd-3)))

haskell-9.4-blanks

(define-public haskell-9.4-brotli-streams
  (package
    (name "haskell-9.4-brotli-streams")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/brotli-streams/brotli-streams-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14jc1nhm50razsl99d95amdf4njf75dnzx8vqkihgrgp7qisyz3z"))))
    (properties `((upstream-name . "brotli-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "01w72wyvfyf8d5wb88ds1m8mrk7xik8y4kzj1025jxh45li2w4dr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-brotli)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-io-streams)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-hvr/brotli-streams")
    (synopsis "IO-Streams interface for Brotli (RFC7932) compression")
    (description
     "<http://brotli.org Brotli> (<https://tools.ietf.org/html/rfc7932 RFC7932>) is a generic-purpose lossless compression algorithm suitable for <https://en.wikipedia.org/wiki/HTTP_compression HTTP compression> that compresses data using a combination of a modern variant of the LZ77 algorithm, Huffman coding and 2nd order context modeling.

This package provides an IO-Streams interface for the Brotli compression algorithm.

Decompressing Brotli 'InputStreams' and compressing 'OutputStreams'
to Brotli streams with tunable (de)compression parameters is supported.
")
    (license license:bsd-3)))

haskell-9.4-brotli-streams

(define-public haskell-9.4-bz2
  (package
    (name "haskell-9.4-bz2")
    (version "1.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bz2/bz2-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1kskfgdfjpg2nn807298m605lc7jafnsi1phz3bp6jds48zwrfhq"))))
    (properties `((upstream-name . "bz2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-cross" "-f-with-bzlib")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage004) haskell-9.4-c2hs)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-tasty-golden)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)))
    (home-page "https://hackage.haskell.org/package/bz2")
    (synopsis "Bindings to libbz2")
    (description "High-level bindings to libbz2 via ByteString")
    (license license:bsd-3)))

haskell-9.4-bz2

(define-public haskell-9.4-cabal-clean
  (package
    (name "haskell-9.4-cabal-clean")
    (version "0.2.20220819")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal-clean/cabal-clean-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17zrny2wyqfvyjdsqj6z18cdq66ycj66i6mpr122paa08608kyrn"))))
    (properties `((upstream-name . "cabal-clean") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-filemanip)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-pretty-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-silently)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-string-qq)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/andreasabel/cabal-clean")
    (synopsis "Remove outdated cabal build artefacts from `dist-newstyle`.")
    (description "Simple command line tool to remove cabal build artefacts
from `dist-newstyle/build` that are superseded by newer
versions of the built package or the Haskell compiler.")
    (license license:bsd-3)))

haskell-9.4-cabal-clean

(define-public haskell-9.4-cabal-plan
  (package
    (name "haskell-9.4-cabal-plan")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-optics-core)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-semialign)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-singleton-bool)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-these)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-topograph)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
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

haskell-9.4-cabal-plan

(define-public haskell-9.4-cardano-coin-selection
  (package
    (name "haskell-9.4-cardano-coin-selection")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cardano-coin-selection/cardano-coin-selection-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1nvnkd5g0vq4vqj1w55hd1b1v7rwzhb3anhavablw9wy3w230qja"))))
    (properties `((upstream-name . "cardano-coin-selection") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-release")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-fmt)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-quiet)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/input-output-hk/cardano-coin-selection#readme")
    (synopsis "Algorithms for coin selection and fee balancing.")
    (description
     "Please see the README on GitHub at <https://github.com/input-output-hk/cardano-coin-selection>")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.4-cardano-coin-selection

(define-public haskell-9.4-cborg
  (package
    (name "haskell-9.4-cborg")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-half)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
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

haskell-9.4-cborg

(define-public haskell-9.4-cfenv
  (package
    (name "haskell-9.4-cfenv")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/tomphp/haskell-cfenv#readme")
    (synopsis
     "A library getting the environment when running on Cloud Foundry")
    (description
     "This is a port of go-cfenv for Golang. The purpose of this library is to assist you in writing Haskell apps that run on Cloud Foundry. It provides convenience functions and structures that map to Cloud Foundry environment variable primitives.")
    (license license:bsd-3)))

haskell-9.4-cfenv

(define-public haskell-9.4-cgi
  (package
    (name "haskell-9.4-cgi")
    (version "3001.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cgi/cgi-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "044gfqfdw5xdr6mzp5i3956a5fcj15j32zwzzd6ym15nxgrvjqh3"))))
    (properties `((upstream-name . "cgi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-install-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-multipart)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cheecheeo/haskell-cgi")
    (synopsis "A library for writing CGI programs")
    (description "This is a Haskell library for writing CGI programs.")
    (license license:bsd-3)))

haskell-9.4-cgi

(define-public haskell-9.4-chimera
  (package
    (name "haskell-9.4-chimera")
    (version "0.3.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/chimera/chimera-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1cy38pgdlgz4f1fglm70w3dlqbnd0lzpckr7j065nnpp0ljlwlpx"))))
    (properties `((upstream-name . "chimera") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-frepresentable")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-adjunctions)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-distributive)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/chimera#readme")
    (synopsis
     "Lazy infinite streams with O(1) indexing and applications for memoization")
    (description
     "There are plenty of memoizing libraries on Hackage, but they
usually fall into two categories:

* Store cache as a flat array, enabling us
to obtain cached values in O(1) time, which is nice.
The drawback is that one must specify the size
of the array beforehand,
limiting an interval of inputs,
and actually allocate it at once.
* Store cache as a lazy binary tree.
Thanks to laziness, one can freely use the full range of inputs.
The drawback is that obtaining values from a tree
takes logarithmic time and is unfriendly to CPU cache,
which kinda defeats the purpose.

This package intends to tackle both issues,
providing a data type 'Chimera' for
lazy infinite compact streams with cache-friendly O(1) indexing.

Additional features include:

* memoization of recursive functions and recurrent sequences,
* memoization of functions of several, possibly signed arguments,
* efficient memoization of boolean predicates.")
    (license license:bsd-3)))

haskell-9.4-chimera

(define-public haskell-9.4-chronologique
  (package
    (name "haskell-9.4-chronologique")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hourglass)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
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

haskell-9.4-chronologique

(define-public haskell-9.4-circular
  (package
    (name "haskell-9.4-circular")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/dschrempf/circular#readme")
    (synopsis "Circular fixed-sized mutable vectors")
    (description
     "Please see the README at <https://github.com/dschrempf/circular#readme>")
    (license license:bsd-3)))

haskell-9.4-circular

(define-public haskell-9.4-cleff
  (package
    (name "haskell-9.4-cleff")
    (version "0.3.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cleff/cleff-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0fnpk28nhafypp7p1ay1760sin9hh06dz23r68gmm93i879ayl9b"))))
    (properties `((upstream-name . "cleff") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dynamic-ioe")
       #:cabal-revision
       ("3" "1dampx9zdpj14g6a7xhsyk9xg3zq2chpv0h43jb85pyyh6ig7rb4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-atomic-primops)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-th-abstraction)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)))
    (home-page "https://github.com/re-xyr/cleff#readme")
    (synopsis "Fast and concise extensible effects")
    (description
     "Please see the README on GitHub at <https://github.com/re-xyr/cleff#readme>")
    (license license:bsd-3)))

haskell-9.4-cleff

(define-public haskell-9.4-commonmark
  (package
    (name "haskell-9.4-commonmark")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/commonmark/commonmark-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0kmjc9xgzy33kxz842mw5rdywip3lmk7v3ambrs87nakawgl42xp"))))
    (properties `((upstream-name . "commonmark") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-unicode-data)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unicode-transforms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jgm/commonmark-hs")
    (synopsis "Pure Haskell commonmark parser.")
    (description
     "This library provides the core data types and functions
for parsing commonmark (<https://spec.commonmark.org>).
The parser is fully commonmark-compliant and passes the test
suite.  It is designed to be customizable and easily extensible.
To customize the output, create an AST, or support a new output
format, one need only define some new typeclass instances.
It is also easy to add new syntax elements or modify existing ones.

Accurate information about source positions is available
for all block and inline elements.  Thus the library can be
used to create an accurate syntax highlighter or
an editor with live preview.

The parser has been designed for robust performance
even in pathological cases that tend to cause stack overflows or
exponential slowdowns in other parsers, with parsing speed that
varies linearly with input length.

Related packages:

- commonmark-extensions (which defines a number of syntax extensions)
- commonmark-pandoc (which allows using this parser to create a Pandoc
structure)
- commonmark-cli (a command-line tool for converting and
syntax-highlighting commonmark documents)")
    (license license:bsd-3)))

haskell-9.4-commonmark

(define-public haskell-9.4-configurator-export
  (package
    (name "haskell-9.4-configurator-export")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-configurator)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.4-configurator-export

(define-public haskell-9.4-constraints-extras
  (package
    (name "haskell-9.4-constraints-extras")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/constraints-extras/constraints-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1irf4kd7a5h1glczbc73c3590m58azn4s68nfrjfg1h96i7mjfgn"))))
    (properties `((upstream-name . "constraints-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fbuild-readme")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-constraints)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/obsidiansystems/constraints-extras")
    (synopsis "Utility package for constraints")
    (description
     "Convenience functions and TH for working with constraints. See <https://github.com/obsidiansystems/constraints-extras/blob/develop/README.md README.md> for example usage.")
    (license license:bsd-3)))

haskell-9.4-constraints-extras

(define-public haskell-9.4-core-data
  (package
    (name "haskell-9.4-core-data")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-core-text)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hourglass)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-uuid)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
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

haskell-9.4-core-data

(define-public haskell-9.4-countable
  (package
    (name "haskell-9.4-countable")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/countable/countable-" version
                    ".tar.gz"))
              (sha256
               (base32
                "119v5ms4nyxikfwlmz71qk9gqp53zkpyxc6wm3qp5bm9b6n1ff47"))))
    (properties `((upstream-name . "countable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-silently)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-tasty-golden)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)))
    (home-page "https://github.com/AshleyYakeley/countable")
    (synopsis "Countable, Searchable, Finite, Empty classes")
    (description
     "* @@class Countable@@, for countable types

* @@class AtLeastOneCountable@@, for countable types that have at least one value

* @@class InfiniteCountable@@, for infinite countable types

* @@class Searchable@@, for types that can be searched over. This turns out to include some infinite types, see <http://math.andrej.com/2007/09/28/seemingly-impossible-functional-programs/>.

* @@class Finite@@, for finite types

* @@class Singular@@, for singular (n = 1) types

* @@class Empty@@, for empty (n = 0) types

Some orphan instances (in their own modules):

* @@(Searchable a,Eq b) => Eq (a -> b)@@ / /

* @@Finite t => Foldable ((->) t)@@ / /

* @@Finite a => Traversable ((->) a)@@ / /

* @@(Show a,Finite a,Show b) => Show (a -> b)@@ / /")
    (license license:bsd-3)))

haskell-9.4-countable

(define-public haskell-9.4-crackNum
  (package
    (name "haskell-9.4-crackNum")
    (version "3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/crackNum/crackNum-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1q9isxg65s9bsafqlcwpl82xypra4cxf935wxi5npbxi6dw5w13i"))))
    (properties `((upstream-name . "crackNum") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-libBF)
                  (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-sbv)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-tasty-golden)))
    (home-page "http://github.com/LeventErkok/CrackNum")
    (synopsis "Crack various integer and floating-point data formats")
    (description
     "Crack IEEE-754 float formats and arbitrary sized words and integers, showing the layout.

For details, please see: <http://github.com/LeventErkok/crackNum/>")
    (license license:bsd-3)))

haskell-9.4-crackNum

(define-public haskell-9.4-criterion-measurement
  (package
    (name "haskell-9.4-criterion-measurement")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/criterion-measurement/criterion-measurement-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cyanb4w3p2nr5vfqdl8s3abqh0avnpqxnjhfanj7vj18gbm06ja"))))
    (properties `((upstream-name . "criterion-measurement") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-fast")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell/criterion")
    (synopsis "Criterion measurement functionality and associated types")
    (description
     "Measurement-related functionality extracted from Criterion, with minimal dependencies. The rationale for this is to enable alternative analysis front-ends.")
    (license license:bsd-3)))

haskell-9.4-criterion-measurement

(define-public haskell-9.4-cryptostore
  (package
    (name "haskell-9.4-cryptostore")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cryptostore/cryptostore-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s6r7pjdp2jqqxq0b1f1ks23h1dh8hh4vqzbqm8irgvmsz445pwh"))))
    (properties `((upstream-name . "cryptostore") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-asn1-encoding)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-asn1-types)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-basement)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hourglass)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-pem)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage009) haskell-9.4-x509)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ocheron/cryptostore")
    (synopsis "Serialization of cryptographic data types")
    (description "Haskell implementation of PKCS \\#8, PKCS \\#12 and CMS
(Cryptographic Message Syntax).")
    (license license:bsd-3)))

haskell-9.4-cryptostore

(define-public haskell-9.4-cursor
  (package
    (name "haskell-9.4-cursor")
    (version "0.3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cursor/cursor-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "092wybyn97cyf2077w0y23ypkkq02b1w5filpgza0ygilgqprsag"))))
    (properties `((upstream-name . "cursor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-validity-containers)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-validity-text)))
    (home-page "https://github.com/NorfairKing/cursor")
    (synopsis "Purely Functional Cursors")
    (description "Purely Functional Cursors for common data structures

See https://cs-syd.eu/tags/cursors for more information.")
    (license license:expat)))

haskell-9.4-cursor

(define-public haskell-9.4-deriveJsonNoPrefix
  (package
    (name "haskell-9.4-deriveJsonNoPrefix")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://gitlab.com/igrep/deriveJsonNoPrefix")
    (synopsis
     "Derive ToJSON/FromJSON instances in a more prefix-friendly manner.")
    (description
     "Please see the README on GitLab at <https://gitlab.com/igrep/deriveJsonNoPrefix#readme>")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.4-deriveJsonNoPrefix

(define-public haskell-9.4-deriving-aeson
  (package
    (name "haskell-9.4-deriving-aeson")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/deriving-aeson")
    (synopsis "Type driven generic aeson instance customisation")
    (description
     "This package provides a newtype wrapper with
FromJSON/ToJSON instances customisable via a phantom type parameter.
The instances can be rendered to the original type using DerivingVia.")
    (license license:bsd-3)))

haskell-9.4-deriving-aeson

(define-public haskell-9.4-di-handle
  (package
    (name "haskell-9.4-di-handle")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/di-handle/di-handle-" version
                    ".tar.gz"))
              (sha256
               (base32
                "070gxs75f3wvvalw81y3af5dm76hnv89rwlh6j5dks9m8mm9pgqq"))))
    (properties `((upstream-name . "di-handle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-di-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0001/di")
    (synopsis "IO support for file handles in di-core")
    (description "IO support for file handles in di-core")
    (license license:bsd-3)))

haskell-9.4-di-handle

(define-public haskell-9.4-di-monad
  (package
    (name "haskell-9.4-di-monad")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-di-core)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-pipes)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0001/di")
    (synopsis
     "mtl flavoured typeful hierarchical structured logging for di-core.")
    (description
     "mtl flavoured typeful hierarchical structured logging for di-core.")
    (license license:bsd-3)))

haskell-9.4-di-monad

(define-public haskell-9.4-discover-instances
  (package
    (name "haskell-9.4-discover-instances")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/discover-instances/discover-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ncmvc9xc4xynsjymw3i61p6310pfi41kkkmqi2dmbagfv7n2xl6"))))
    (properties `((upstream-name . "discover-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-some-dict-of)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-th-compat)))
    (home-page "https://github.com/parsonsmatt/discover-instances#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/parsonsmatt/discover-instances#readme>")
    (license license:bsd-3)))

haskell-9.4-discover-instances

(define-public haskell-9.4-distribution-opensuse
  (package
    (name "haskell-9.4-distribution-opensuse")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Diff)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-foldl)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-hsemail)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-parsec-class)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-turtle)))
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

haskell-9.4-distribution-opensuse

(define-public haskell-9.4-doclayout
  (package
    (name "haskell-9.4-doclayout")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/doclayout/doclayout-" version
                    ".tar.gz"))
              (sha256
               (base32
                "18xkzywfw0hl3hgbq9z36hs040vb0iz9yygx33cybxfi4i0dwbkx"))))
    (properties `((upstream-name . "doclayout") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0djwb7nrdablc0iy1qakrxpd4m7nn0w94vhb78il3jhjbj2ji179")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-emojis)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-tasty-golden)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jgm/doclayout")
    (synopsis "A prettyprinting library for laying out text documents.")
    (description "doclayout is a prettyprinting library for laying out
text documents, with several features not present
in prettyprinting libraries designed for code.  It
was designed for use in pandoc.")
    (license license:bsd-3)))

haskell-9.4-doclayout

(define-public haskell-9.4-doctest-discover
  (package
    (name "haskell-9.4-doctest-discover")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/karun012/doctest-discover")
    (synopsis "Easy way to run doctests via cabal")
    (description
     "doctest-discover provides an easy way to run doctests via cabal")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.4-doctest-discover

(define-public haskell-9.4-effectful
  (package
    (name "haskell-9.4-effectful")
    (version "2.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/effectful/effectful-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1j6p28d5701v0a5fhgra1mhnzsqbxj44mpnixrh8jy34rcbq02bi"))))
    (properties `((upstream-name . "effectful") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-benchmark-foreign-libraries")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-effectful-core)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-lifted-base)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)))
    (home-page "https://hackage.haskell.org/package/effectful")
    (synopsis "An easy to use, performant extensible effects library.")
    (description
     "An easy to use, performant extensible effects library with seamless
integration with the existing Haskell ecosystem.

This is the \"batteries-included\" variant. See the
@@<https://hackage.haskell.org/package/effectful-core effectful-core>@@ package
if you need a more limited dependency footprint or want to browse
documentation of core modules.")
    (license license:bsd-3)))

haskell-9.4-effectful

(define-public haskell-9.4-elm-bridge
  (package
    (name "haskell-9.4-elm-bridge")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/agrafix/elm-bridge")
    (synopsis
     "Derive Elm types and Json code from Haskell types, using aeson's options")
    (description
     "Building the bridge from Haskell to Elm and back. Define types once,
and derive the aeson and elm functions at the same time, using any aeson
option you like. Cheers!")
    (license license:bsd-3)))

haskell-9.4-elm-bridge

(define-public haskell-9.4-elynx-tools
  (package
    (name "haskell-9.4-elynx-tools")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-hmatrix)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-zlib)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/dschrempf/elynx#readme")
    (synopsis "Tools for ELynx")
    (description
     "Please see the README on GitHub at <https://github.com/dschrempf/elynx>.")
    (license license:gpl3+)))

haskell-9.4-elynx-tools

(define-public haskell-9.4-emacs-module
  (package
    (name "haskell-9.4-emacs-module")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/emacs-module/emacs-module-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j66b4r4zhqc2j1fqihzqdc0zacjy3fpgf54b7z55n2wqa6x9lgw"))))
    (properties `((upstream-name . "emacs-module") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-assertions" "-f-module-assertions")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hsc2hs)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-safe-exceptions-checked)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-void)))
    (home-page "https://github.com/sergv/emacs-module")
    (synopsis "Utilities to write Emacs dynamic modules")
    (description
     "This package provides a full set of bindings to emacs-module.h that
allows to develop Emacs modules in Haskell. Bindings are based on
Emacs 25 version of the interface and thus should work in all
subsequent versions of Emacs.

For pointers on how to write minimal Emacs module, please refer
to https://github.com/sergv/emacs-module/blob/master/test/src/Emacs/TestsInit.hs")
    (license license:asl2.0)))

haskell-9.4-emacs-module

(define-public haskell-9.4-enum-text
  (package
    (name "haskell-9.4-enum-text")
    (version "0.5.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/enum-text/enum-text-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0cxk46s20wwcq68rpy3skx6ap0mlmmsgfrq0n4s2rnv1gf6gsccx"))))
    (properties `((upstream-name . "enum-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-fmt)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-possibly)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "https://github.com/cdornan/enum-text#readme")
    (synopsis "A text rendering and parsing toolkit for enumerated types")
    (description
     "A text rendering and parsing toolkit for enumerated types. Please see the README on GitHub at <https://github.com/cdornan/enum-text#readme>")
    (license license:bsd-3)))

haskell-9.4-enum-text

(define-public haskell-9.4-enummapset
  (package
    (name "haskell-9.4-enummapset")
    (version "0.7.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/enummapset/enummapset-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1zhfl1qrm7r124v0xphh50lnll7cgmlacdmxwwlwhmzyrp1bwf69"))))
    (properties `((upstream-name . "enummapset") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Mikolaj/enummapset")
    (synopsis "IntMap and IntSet with Enum keys/elements.")
    (description
     "This package contains simple wrappers around 'Data.IntMap' and
'Data.IntSet' with 'Enum' keys and elements respectively.
Especially useful for 'Int's wrapped with `newtype`.")
    (license license:bsd-3)))

haskell-9.4-enummapset

(define-public haskell-9.4-exp-pairs
  (package
    (name "haskell-9.4-exp-pairs")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/exp-pairs/exp-pairs-" version
                    ".tar.gz"))
              (sha256
               (base32
                "01s3g34b08qcvzlzhp5vpswj5c6v8pc2rx8z5xzjlrawxlbnzdnp"))))
    (properties `((upstream-name . "exp-pairs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-matrix)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-smallcheck)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-tasty-smallcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/exp-pairs")
    (synopsis "Linear programming over exponent pairs")
    (description
     "Package implements an algorithm to minimize rational objective function over the set of exponent pairs")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-exp-pairs

(define-public haskell-9.4-fixed-vector
  (package
    (name "haskell-9.4-fixed-vector")
    (version "1.2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fixed-vector/fixed-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kp747v67x1ija33nyqmyh6g178pqn2c7glynrpzcv733lalp00z"))))
    (properties `((upstream-name . "fixed-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-filemanip)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/fixed-vector")
    (synopsis "Generic vectors with statically known size.")
    (description
     "Generic library for vectors with statically known
size. Implementation is based on
<http://unlines.wordpress.com/2010/11/15/generics-for-small-fixed-size-vectors/>
Same functions could be used to work with both ADT based vector like

> data Vec3 a = a a a

Tuples are vectors too:

>>> sum (1,2,3)
6

Vectors which are represented internally by arrays are provided by
library. Both boxed and unboxed arrays are supported.

Library is structured as follows:

* Data.Vector.Fixed
Generic API. It's suitable for both ADT-based vector like Complex
and array-based ones.

* Data.Vector.Fixed.Cont
Continuation based vectors. Internally all functions use them.

* Data.Vector.Fixed.Mutable
Type classes for array-based implementation and API for working with
mutable state.

* Data.Vector.Fixed.Unboxed
Unboxed vectors.

* Data.Vector.Fixed.Boxed
Boxed vector which can hold elements of any type.

* Data.Vector.Fixed.Storable
Unboxed vectors of Storable  types.

* Data.Vector.Fixed.Primitive
Unboxed vectors based on pritimive package.")
    (license license:bsd-3)))

haskell-9.4-fixed-vector

(define-public haskell-9.4-flac-picture
  (package
    (name "haskell-9.4-flac-picture")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-flac)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)))
    (propagated-inputs (list (@ (gnu packages xiph) flac)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mrkkrp/flac-picture")
    (synopsis
     "Support for writing picture to FLAC metadata blocks with JuicyPixels")
    (description
     "Support for writing picture to FLAC metadata blocks with JuicyPixels.")
    (license license:bsd-3)))

haskell-9.4-flac-picture

(define-public haskell-9.4-fuzzy-time
  (package
    (name "haskell-9.4-fuzzy-time")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fuzzy-time/fuzzy-time-" version
                    ".tar.gz"))
              (sha256
               (base32
                "13n2insf02d80jc4rrfgsj0ivb9lz9hfifz9796hz0cmbm1wxr2y"))))
    (properties `((upstream-name . "fuzzy-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-validity-time)))
    (home-page "https://github.com/NorfairKing/fuzzy-time")
    (synopsis "")
    (description "Fuzzy time types, parsing and resolution")
    (license license:expat)))

haskell-9.4-fuzzy-time

(define-public haskell-9.4-genvalidity-property
  (package
    (name "haskell-9.4-genvalidity-property")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-property/genvalidity-property-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1nxcdq04rkckrb3v49pjx378n5s828k24x7hix6manyxqmd3hplw"))))
    (properties `((upstream-name . "genvalidity-property") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-pretty-show)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Standard properties for functions on `Validity` types")
    (description "")
    (license license:expat)))

haskell-9.4-genvalidity-property

(define-public haskell-9.4-genvalidity-text
  (package
    (name "haskell-9.4-genvalidity-text")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-text/genvalidity-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qrvalpk5r5bwx9x0p7g5w4wa9lpdn55h0a8g64wnxjxwi9r9qcn"))))
    (properties `((upstream-name . "genvalidity-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-validity-text)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for Text")
    (description "")
    (license license:expat)))

haskell-9.4-genvalidity-text

(define-public haskell-9.4-ghcid
  (package
    (name "haskell-9.4-ghcid")
    (version "0.8.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ghcid/ghcid-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1y2qr1g0jy1jd8lh6bqwhzad15jgz0psq5qx31hbgq6ikm1nxjcj"))))
    (properties `((upstream-name . "ghcid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cmdargs)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-fsnotify)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-terminal-size)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ndmitchell/ghcid#readme")
    (synopsis "GHCi based bare bones IDE")
    (description
     "Either \\\"GHCi as a daemon\\\" or \\\"GHC + a bit of an IDE\\\". A very simple Haskell development tool which shows you the errors in your project and updates them whenever you save. Run @@ghcid --topmost --command=ghci@@, where @@--topmost@@ makes the window on top of all others (Windows only) and @@--command@@ is the command to start GHCi on your project (defaults to @@ghci@@ if you have a @@.ghci@@ file, or else to @@cabal repl@@).")
    (license license:bsd-3)))

haskell-9.4-ghcid

(define-public haskell-9.4-github-types
  (package
    (name "haskell-9.4-github-types")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/github-types")
    (synopsis "Type definitions for objects used by the GitHub v3 API")
    (description "This package includes (some) type definitions for objects
which are consumed or produced by the GitHub v3 API.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.4-github-types

(define-public haskell-9.4-github-webhooks
  (package
    (name "haskell-9.4-github-webhooks")
    (version "0.17.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/github-webhooks/github-webhooks-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06dh28yqhjmh4gks0r20x6cn1974a0cx1yr3n55l3slr1w9j46bv"))))
    (properties `((upstream-name . "github-webhooks") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-ci")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-deepseq-generics)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cuedo/github-webhooks#readme")
    (synopsis "Aeson instances for GitHub Webhook payloads.")
    (description
     "Complete instances for decoding GitHub Webhook payloads (using @@aeson@@). See the README at <https://github.com/cuedo/github-webhooks#readme> for examples. Sponsored by <https://cuedo.com.au>.")
    (license license:expat)))

haskell-9.4-github-webhooks

(define-public haskell-9.4-hackage-db
  (package
    (name "haskell-9.4-hackage-db")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-tar)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)))
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

haskell-9.4-hackage-db

(define-public haskell-9.4-hackage-security
  (package
    (name "haskell-9.4-hackage-security")
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
       (list "-fbase48" "-fuse-network-uri" "-fcabal-syntax" "-f-old-directory" "-f-mtl21" "-flukko")
       #:cabal-revision
       ("2" "07i8f4sappqphh39jj9268a6ci7l972qi33p4zydsdrvh5s58h0q")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-ed25519)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-lukko)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-tar)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-zlib)))
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

haskell-9.4-hackage-security

(define-public haskell-9.4-happstack-server
  (package
    (name "haskell-9.4-happstack-server")
    (version "7.8.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/happstack-server/happstack-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bxgnsd0qawbd0yllrshdxm89g1vm4znrn5jwhbs86pmh205w3xy"))))
    (properties `((upstream-name . "happstack-server") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")
       #:cabal-revision
       ("1" "1bx1hhv79vajzqdc4vfg0plx9w2fvfaxkrg0vzl73rjryl02qsmz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-extensible-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-hslogger)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-html)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-old-locale)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-sendfile)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-system-filepath)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-threads)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://happstack.com")
    (synopsis "Web related tools and services.")
    (description
     "Happstack Server provides an HTTP server and a rich set of functions for routing requests, handling query parameters, generating responses, working with cookies, serving files, and more. For in-depth documentation see the Happstack Crash Course <http://happstack.com/docs/crashcourse/index.html>")
    (license license:bsd-3)))

haskell-9.4-happstack-server

(define-public haskell-9.4-haskell-src-exts
  (package
    (name "haskell-9.4-haskell-src-exts")
    (version "1.23.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-src-exts/haskell-src-exts-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01bcrxs9af4yqpclw43aijmsd1g19qhyzb47blz7vzwz2r3k11b7"))))
    (properties `((upstream-name . "haskell-src-exts") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-happy)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-pretty-show)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-smallcheck)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-tasty-golden)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-tasty-smallcheck)))
    (home-page "https://github.com/haskell-suite/haskell-src-exts")
    (synopsis
     "Manipulating Haskell source: abstract syntax, lexer, parser, and pretty-printer")
    (description
     "Haskell-Source with Extensions (HSE, haskell-src-exts)
is a standalone parser for Haskell. In addition to
standard Haskell, all extensions implemented in GHC are supported.

Apart from these standard extensions,
it also handles regular patterns as per the HaRP extension
as well as HSX-style embedded XML syntax.")
    (license license:bsd-3)))

haskell-9.4-haskell-src-exts

(define-public haskell-9.4-heatshrink
  (package
    (name "haskell-9.4-heatshrink")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage004) haskell-9.4-c2hs)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-pcre-heavy)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-tasty-golden)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fpinsight/heatshrink#readme")
    (synopsis "Compression and decompression using heatshrink")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.4-heatshrink

(define-public haskell-9.4-heist
  (package
    (name "haskell-9.4-heist")
    (version "1.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/heist/heist-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "17ba0jmzs4wk4303ydcr1p2k2kcjfs11mrhlglaz40z61z3vm1yl"))))
    (properties `((upstream-name . "heist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-directory-tree)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-lifted-base)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-map-syntax)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-xmlhtml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://snapframework.com/")
    (synopsis "An Haskell template system supporting both HTML5 and XML.")
    (description
     "Heist is a powerful template system that supports both HTML5 and XML.
Some of Heist's features are:

* Designer-friendly HTML5 (or XML) syntax

* Templates can be reloaded to make changes visible without recompiling
your Haskell code

* Enforces near-perfect separation of business logic and view

* Powerful abstraction primitives allowing you to eliminate repetition

* Easy creation of domain-specific markup languages

* Built-in support for including JSON and Markdown content in templates

* Simple mechanism for designer-specified template caching

* Optional merging of multiple \\<head\\> tags defined anywhere in the
document")
    (license license:bsd-3)))

haskell-9.4-heist

(define-public haskell-9.4-hkd-default
  (package
    (name "haskell-9.4-hkd-default")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/versioncloud/hkd-default#readme")
    (synopsis "Apply default value for optional field of HKD")
    (description "Please see http://hackage.haskell.org/package/hkd-default")
    (license license:bsd-3)))

haskell-9.4-hkd-default

(define-public haskell-9.4-hourglass-orphans
  (package
    (name "haskell-9.4-hourglass-orphans")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hourglass)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-hspec-expectations)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/psibi/hourglass-orphans#readme")
    (synopsis "Orphan Aeson instances to hourglass")
    (description "Orphan Aeson instances to hourglass")
    (license license:bsd-3)))

haskell-9.4-hourglass-orphans

(define-public haskell-9.4-hpqtypes
  (package
    (name "haskell-9.4-hpqtypes")
    (version "1.10.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hpqtypes/hpqtypes-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0rrsd16cxh8p0ssayxla99svapkbbl2sn5n9hi8vcf9hazfh8nlw"))))
    (properties `((upstream-name . "hpqtypes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hsc2hs)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-lifted-base)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-resource-pool)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-text-show)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-uuid-types)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages databases) postgresql-15)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/scrive/hpqtypes")
    (synopsis "Haskell bindings to libpqtypes")
    (description
     "Efficient and easy-to-use bindings to (slightly modified)
@@libpqtypes@@, a @@libpq@@ extension that adds support
for a binary transport format and composite types.

Source code of libpqtypes is bundled along with the bindings.

Examples can be found in the
<https://github.com/scrive/hpqtypes/tree/master/examples examples>
directory.")
    (license license:bsd-3)))

haskell-9.4-hpqtypes

(define-public haskell-9.4-hruby
  (package
    (name "haskell-9.4-hruby")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages ruby) ruby-3.2)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/hruby")
    (synopsis "Embed a Ruby intepreter in your Haskell program !")
    (description
     "This works with Ruby 2.2+. Everything you need should be in Foreign.Ruby.Safe.")
    (license license:bsd-3)))

haskell-9.4-hruby

(define-public haskell-9.4-hslua-aeson
  (package
    (name "haskell-9.4-hslua-aeson")
    (version "2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-aeson/hslua-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0igmkay5bf3wg1n6rqm20kjv1xq36x552lgdvr1vlpwikgsiq8mb"))))
    (properties `((upstream-name . "hslua-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hslua-core)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hslua.org/")
    (synopsis "Allow aeson data types to be used with Lua.")
    (description "This package provides instances to push and receive any
datatype encodable as JSON to and from the Lua stack.")
    (license license:expat)))

haskell-9.4-hslua-aeson

(define-public haskell-9.4-hslua-classes
  (package
    (name "haskell-9.4-hslua-classes")
    (version "2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-classes/hslua-classes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1z7ym3whcq16k2cm9jf7sf0vwmp52iv1f0iicvv4jk6xks9d6ia1"))))
    (properties `((upstream-name . "hslua-classes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hslua-core)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-lua-arbitrary)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-tasty-hslua)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hslua.org/")
    (synopsis "Type classes for HsLua")
    (description "Type classes for convenient marshalling and calling of
Lua functions.")
    (license license:expat)))

haskell-9.4-hslua-classes

(define-public haskell-9.4-hslua-objectorientation
  (package
    (name "haskell-9.4-hslua-objectorientation")
    (version "2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-objectorientation/hslua-objectorientation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13011yzz6lrgl2gasn9w5ggdqgrdz49hhqk1h259qd9gq29jnq3y"))))
    (properties `((upstream-name . "hslua-objectorientation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hslua-core)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-lua-arbitrary)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-tasty-hslua)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hslua.org/")
    (synopsis "Object orientation tools for HsLua")
    (description "Expose Haskell objects to Lua with an object oriented
interface.")
    (license license:expat)))

haskell-9.4-hslua-objectorientation

(define-public haskell-9.4-http-api-data
  (package
    (name "haskell-9.4-http-api-data")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-api-data/http-api-data-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gxpfrkr83gq5kndfbyg03ps0g421bn4vafdqng7wmnn5hhb9vgp"))))
    (properties `((upstream-name . "http-api-data") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-use-text-show")
       #:cabal-revision
       ("1" "1gcqa0lm804cqv1xdaxz87mg0fv7d98i57px8al7qgdzpldma17k")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-attoparsec-iso8601)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-cookie)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-time-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-uuid-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/fizruk/http-api-data")
    (synopsis
     "Converting to/from HTTP API data like URL pieces, headers and query parameters.")
    (description
     "This package defines typeclasses used for converting Haskell data types to and from HTTP API data.

Please see README.md")
    (license license:bsd-3)))

haskell-9.4-http-api-data

(define-public haskell-9.4-http-client
  (package
    (name "haskell-9.4-http-client")
    (version "0.7.13.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-client/http-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09qfmakjk285jz2rnb53c1m9c764fg8vngfq43ipga1g72h8d3n9"))))
    (properties `((upstream-name . "http-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")
       #:cabal-revision
       ("1" "168nbb80kcxyz59sz4mnaydpag5flq32y9ikfxa1jygj8j8p9034")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-cookie)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-iproute)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-mime-types)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-streaming-commons)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/http-client")
    (synopsis "An HTTP client engine")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/http-client>.")
    (license license:expat)))

haskell-9.4-http-client

(define-public haskell-9.4-httpd-shed
  (package
    (name "haskell-9.4-httpd-shed")
    (version "0.4.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/httpd-shed/httpd-shed-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19dgdimpzr7pxk7pqvyin6j87gmvnf0rm35gzhmna8qr835wy3sr"))))
    (properties `((upstream-name . "httpd-shed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-buildexamples" "-fnetwork-uri" "-fnetwork-bsd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-network-bsd)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/httpd-shed")
    (synopsis "A simple web-server with an interact style API")
    (description
     "This web server promotes a Request to IO Response function
into a local web server. The user can decide how to interpret
the requests, and the library is intended for implementing Ajax APIs.")
    (license license:bsd-3)))

haskell-9.4-httpd-shed

(define-public haskell-9.4-hxt
  (package
    (name "haskell-9.4-hxt")
    (version "9.3.1.22")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hxt/hxt-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1n9snbdl46x23ka7bbsls1vsn0plpmfmbpbl0msjfm92fkk2yq7g"))))
    (properties `((upstream-name . "hxt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fnetwork-uri" "-f-profile")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hxt-charproperties)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-hxt-regex-xmlschema)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-hxt-unicode)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/UweSchmidt/hxt")
    (synopsis "A collection of tools for processing XML with Haskell.")
    (description
     "The Haskell XML Toolbox bases on the ideas of HaXml and HXML,
but introduces a more general approach for processing XML with Haskell.
The Haskell XML Toolbox uses a generic data model for representing XML documents,
including the DTD subset and the document subset, in Haskell.
It contains a validating XML parser, a HTML parser, namespace support,
an XPath expression evaluator, an XSLT library, a RelaxNG schema validator
and funtions for serialization and deserialization of user defined data.
The library makes extensive use of the arrow approach for processing XML.
Since version 9 the toolbox is partitioned into various (sub-)packages.
This package contains the core functionality,
hxt-curl, hxt-tagsoup, hxt-relaxng, hxt-xpath, hxt-xslt,
hxt-regex-xmlschema contain the extensions.
hxt-unicode contains encoding and decoding functions,
hxt-charproperties char properties for unicode and XML.
Changes from 9.3.1.21: ghc-9.0 compatibility

Changes from 9.3.1.20: ghc 8.10 and 9.0 compatibility, tuple picker up to 24-tuples, Either instance for xpickle

Changes from 9.3.1.19: ghc-8.8.2 compatibility

Changes from 9.3.1.15: Bug in quoting PI instructions in showXmlTrees fixed

Changes from 9.3.1.14: For ghc-7.10 network-uri is automatically selected

Changes from 9.3.1.13: ghc-7.10 compatibility

Changes from 9.3.1.12: Bug when unpickling an empty attribute value removed

Changes from 9.3.1.11: Bug fix in haddock comments

Changes from 9.3.1.10: Bug in DTD validation, space and time leak in delta removed

Changes from 9.3.1.9: lower bound of mtl dependency lowered to 2.0.1

Changes from 9.3.1.8: Bug in hread removed

Changes from 9.3.1.7: Foldable and Traversable instances for NTree added
Control.Except used instead of deprecated Control.Error

Changes from 9.3.1.6: canonicalize added in hread and hreadDoc

Changes from 9.3.1.4: conditionally (no default)
dependency from networt changed to network-uri with flag \"network-uri\"

Changes from 9.3.1.3: warnings from ghc-7.8.1 removed

Changes from 9.3.1.2: https as protocol added

Changes from 9.3.1.1: new parser xreadDoc

Changes from 9.3.1.0: in readString all input decoding switched off

Changes from 9.3.0.1: lower bound for network set to be >= 2.4

Changes from 9.3.0: upper bound for network set to be < 2.4
(URI signatures changed in 2.4)

Changes from 9.2.2: XMLSchema validation integrated

Changes from 9.2.1: user defined mime type handlers added

Changes from 9.2.0: New warnings from ghc-7.4 removed")
    (license license:expat)))

haskell-9.4-hxt

(define-public haskell-9.4-incremental
  (package
    (name "haskell-9.4-incremental")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fumieval/incremental#readme")
    (synopsis "incremental update library")
    (description "Generic interface for incremental updates")
    (license license:bsd-3)))

haskell-9.4-incremental

(define-public haskell-9.4-io-streams-haproxy
  (package
    (name "haskell-9.4-io-streams-haproxy")
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
       ("7" "0wib2mz6ifnixrcp9s1pkd00v9q7dvyka1z7zqc3pgif47hr1dbw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-io-streams)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://snapframework.com/")
    (synopsis "HAProxy protocol 1.5 support for io-streams")
    (description
     "HAProxy protocol version 1.5 support (see
<http://haproxy.1wt.eu/download/1.5/doc/proxy-protocol.txt>) for applications
using io-streams. The proxy protocol allows information about a networked
peer (like remote address and port) to be propagated through a forwarding
proxy that is configured to speak this protocol.")
    (license license:bsd-3)))

haskell-9.4-io-streams-haproxy

(define-public haskell-9.4-ipython-kernel
  (package
    (name "haskell-9.4-ipython-kernel")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-uuid)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-zeromq4-haskell)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/gibiansky/IHaskell")
    (synopsis "A library for creating kernels for IPython frontends")
    (description
     "ipython-kernel is a library for communicating with frontends for the interactive IPython framework. It is used extensively in IHaskell, the interactive Haskell environment.")
    (license license:expat)))

haskell-9.4-ipython-kernel

(define-public haskell-9.4-jose-jwt
  (package
    (name "haskell-9.4-jose-jwt")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
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

haskell-9.4-jose-jwt

(define-public haskell-9.4-json-feed
  (package
    (name "haskell-9.4-json-feed")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-mime-types)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-tagsoup)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/json-feed")
    (synopsis "JSON Feed")
    (description
     "This is an implementation of the JSON Feed spec in Haskell. The spec is
available at <https://jsonfeed.org>. JSON Feed is similar to the Atom and RSS
feed formats, but it is serialized as JSON rather than XML.")
    (license license:expat)))

haskell-9.4-json-feed

(define-public haskell-9.4-json-stream
  (package
    (name "haskell-9.4-json-stream")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-quickcheck-unicode)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
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

haskell-9.4-json-stream

(define-public haskell-9.4-kan-extensions
  (package
    (name "haskell-9.4-kan-extensions")
    (version "5.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/kan-extensions/kan-extensions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08mddsk9v75mahp1jqn28vglygmdil1g37drcj3ivbqc0k6dq55r"))))
    (properties `((upstream-name . "kan-extensions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1rbcmvgkw714v3296pdkpk7726ghc43czsaxm8ygvanshzd87qi2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-adjunctions)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-contravariant)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-distributive)
                  (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-free)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-invariant)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)))
    (home-page "http://github.com/ekmett/kan-extensions/")
    (synopsis
     "Kan extensions, Kan lifts, the Yoneda lemma, and (co)density (co)monads")
    (description
     "Kan extensions, Kan lifts, various forms of the Yoneda lemma, and (co)density (co)monads.")
    (license license:bsd-3)))

haskell-9.4-kan-extensions

(define-public haskell-9.4-language-bash
  (package
    (name "haskell-9.4-language-bash")
    (version "0.9.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-bash/language-bash-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pkl0cvkxhlpx492qlklizc27xw3yax6n8h27xq3bw1vlk3c0a36"))))
    (properties `((upstream-name . "language-bash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-tasty-golden)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/knrafto/language-bash/")
    (synopsis "Parsing and pretty-printing Bash shell scripts")
    (description "A library for parsing, pretty-printing, and manipulating
Bash shell scripts.")
    (license license:bsd-3)))

haskell-9.4-language-bash

(define-public haskell-9.4-lentil
  (package
    (name "haskell-9.4-lentil")
    (version "1.5.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lentil/lentil-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "198ajay44aapyn8zw3416lhv7wdkb8p6y3a77w2m3p9ly9sj5hgc"))))
    (properties `((upstream-name . "lentil") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-developer")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-csv)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-filemanip)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-natural-sort)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-terminal-progress-bar)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://www.ariis.it/static/articles/lentil/page.html")
    (synopsis "frugal issue tracker")
    (description "minumum effort, cohesive issue tracker based on
ubiquitous @@TODO@@s and @@FIXME@@s conventions.
Check homepage for manual, tutorial, binaries,
examples.")
    (license license:gpl3)))

haskell-9.4-lentil

(define-public haskell-9.4-lucid-extras
  (package
    (name "haskell-9.4-lucid-extras")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-lucid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/diffusionkinetics/open/lucid-extras")
    (synopsis
     "Generate more HTML with Lucid - Bootstrap, Rdash, Vega-Lite, Leaflet JS, Email.")
    (description
     "Generate more HTML with Lucid - Bootstrap, Rdash, Vega-Lite, Leaflet JS, Email. Provides functions to generate rich web page elements for infographics, geographical maps, and more.")
    (license license:expat)))

haskell-9.4-lucid-extras

(define-public haskell-9.4-markov-chain-usage-model
  (package
    (name "haskell-9.4-markov-chain-usage-model")
    (version "0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/markov-chain-usage-model/markov-chain-usage-model-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14r73bvh6w7qz7rqb97ky2iyf2z2j7y14iy4fcr8mjyxag3mk3jc"))))
    (properties `((upstream-name . "markov-chain-usage-model") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-matrix)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-discover)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/advancedtelematic/markov-chain-usage-model#readme")
    (synopsis "Computations for Markov chain usage models")
    (description
     "Please see the README on GitHub at <https://github.com/advancedtelematic/markov-chain-usage-model#readme>")
    (license license:bsd-2)))

haskell-9.4-markov-chain-usage-model

(define-public haskell-9.4-matplotlib
  (package
    (name "haskell-9.4-matplotlib")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)))
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

haskell-9.4-matplotlib

(define-public haskell-9.4-matrix-as-xyz
  (package
    (name "haskell-9.4-matrix-as-xyz")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-matrix)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/narumij/matrix-as-xyz#readme")
    (synopsis
     "Read and Display Jones-Faithful notation for spacegroup and planegroup")
    (description
     "Please see the README on GitHub at <https://github.com/narumij/matrix-as-xyz#readme>")
    (license license:bsd-3)))

haskell-9.4-matrix-as-xyz

(define-public haskell-9.4-matrix-static
  (package
    (name "haskell-9.4-matrix-static")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-matrix)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/wchresta/matrix-static#readme")
    (synopsis "Type-safe matrix operations")
    (description
     "Please see the README on GitHub at <https://github.com/wchresta/matrix-static#readme>")
    (license license:bsd-3)))

haskell-9.4-matrix-static

(define-public haskell-9.4-microaeson
  (package
    (name "haskell-9.4-microaeson")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-alex)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-fail)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/microaeson")
    (synopsis "A tiny JSON library with light dependency footprint")
    (description
     "@@microaeson@@ aims to provide a [RFC 8259](https://tools.ietf.org/html/rfc8259) compliant JavaScript Object Notation (JSON) implementation.
The [microaeson](https://hackage.haskell.org/package/microaeson) package provides a smaller subset of the [aeson](https://hackage.haskell.org/package/aeson) API with less dependencies and a simpler implementation.

The API is designed in such a way to allow to easily convert client code written against @@microaeson@@'s API to use the full [aeson](https://hackage.haskell.org/package/aeson) API.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-microaeson

(define-public haskell-9.4-microlens-aeson
  (package
    (name "haskell-9.4-microlens-aeson")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/fosskers/microlens-aeson/")
    (synopsis "Law-abiding lenses for Aeson, using microlens.")
    (description "Law-abiding lenses for Aeson, using microlens.")
    (license license:expat)))

haskell-9.4-microlens-aeson

(define-public haskell-9.4-microstache
  (package
    (name "haskell-9.4-microstache")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskellari/microstache")
    (synopsis "Mustache templates for Haskell")
    (description
     "Mustache templates for Haskell.

Based on @@stache@@ library, which uses @@megaparsec@@.
This library uses @@parsec@@, thus the name: @@microstache@@.")
    (license license:bsd-3)))

haskell-9.4-microstache

(define-public haskell-9.4-netrc
  (package
    (name "haskell-9.4-netrc")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/netrc/netrc-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "11iax3ick0im397jyyjkny7lax9bgrlgk90a25dp2jsglkphfpls"))))
    (properties `((upstream-name . "netrc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbytestring_has_builder")
       #:cabal-revision
       ("9" "0srgxcgzzkrq96zg8vk61wnr4mrvgcxbgpdh2kklsfc2p6phzzp7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-tasty-golden)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hvr/netrc")
    (synopsis "Parser for .netrc files")
    (description
     "This package provides a parser and a printer for so-called @@.netrc@@ files.

See <http://linux.die.net/man/5/netrc netrc(5)> manual page for more
information about @@.netrc@@ files.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-netrc

(define-public haskell-9.4-nonce
  (package
    (name "haskell-9.4-nonce")
    (version "1.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/nonce/nonce-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1q9ph0aq51mvdvydnriqd12sfin36pfb8f588zgac1ybn8r64ksb"))))
    (properties `((upstream-name . "nonce") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "09xvg4lpmb1hw153afhbjrdg9v3npfwpdfhpv5y8b0qvb4zi3n9q")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-entropy)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)))
    (home-page "https://github.com/prowdsponsor/nonce")
    (synopsis "Generate cryptographic nonces.")
    (description
     "According to the Wikipedia, a nonce is an arbitrary number used
only once in a cryptographic communication.  This package
contain helper functions for generating nonces.

There are many kinds of nonces used in different situations.
It's not guaranteed that by using the nonces from this package
you won't have any security issues.  Please make sure that the
nonces generated via this package are usable on your design.")
    (license license:bsd-3)))

haskell-9.4-nonce

(define-public haskell-9.4-numhask-array
  (package
    (name "haskell-9.4-numhask-array")
    (version "0.10.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/numhask-array/numhask-array-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0c8zvlx5w6zjjxcnsc6jl7pbmfr1p4823jpcyzvx72kzzms16x5b"))))
    (properties `((upstream-name . "numhask-array") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-adjunctions)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-distributive)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-numhask)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://github.com/tonyday567/numhask-array#readme")
    (synopsis "Multi-dimensional arrays.")
    (description
     "This package provides an interface into the [numhask](https://hackage.haskell.org/package/numhask) API, and both type- and value-level shape manipulation routines.

== Usage

>>> @{-# LANGUAGE RebindableSyntax #-@}
>>> import NumHask.Prelude
>>> import NumHask.Array

In situations where shape is only known at runtime, a clear module configuration is:

>>> import NumHask.Array.Shape
>>> import qualified NumHask.Array.Fixed as F
>>> import qualified NumHask.Array.Dynamic as D")
    (license license:bsd-3)))

haskell-9.4-numhask-array

(define-public haskell-9.4-openssl-streams
  (package
    (name "haskell-9.4-openssl-streams")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0vfawnfcjrw29qg1n7k6z6bk4bmnk869gjlr9mxw4mzxgl80b2vp")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-HsOpenSSL)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-io-streams)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/openssl-streams")
    (synopsis "OpenSSL network support for io-streams.")
    (description
     "The openssl-streams library contains io-streams routines for secure
networking using OpenSSL (by way of HsOpenSSL).")
    (license license:bsd-3)))

haskell-9.4-openssl-streams

(define-public haskell-9.4-opentelemetry-wai
  (package
    (name "haskell-9.4-opentelemetry-wai")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-opentelemetry)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/opentelemetry-wai")
    (synopsis "")
    (description "OpenTelemetry middleware for wai")
    (license license:asl2.0)))

haskell-9.4-opentelemetry-wai

(define-public haskell-9.4-optparse-simple
  (package
    (name "haskell-9.4-optparse-simple")
    (version "0.1.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/optparse-simple/optparse-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0y3qgab8csiwyv60cnpzpv65n3c0ikvdx5b5mfkfahkv8xfdh08x"))))
    (properties `((upstream-name . "optparse-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-example")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-githash)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-th-compat)))
    (home-page "https://github.com/fpco/optparse-simple#readme")
    (synopsis "Simple interface to optparse-applicative")
    (description
     "Please see the README at <https://www.stackage.org/package/optparse-simple>")
    (license license:bsd-3)))

haskell-9.4-optparse-simple

(define-public haskell-9.4-pandoc-types
  (package
    (name "haskell-9.4-pandoc-types")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-string-qq)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-quickcheck2)))
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

haskell-9.4-pandoc-types

(define-public haskell-9.4-parser-combinators-tests
  (package
    (name "haskell-9.4-parser-combinators-tests")
    (version "1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/parser-combinators-tests/parser-combinators-tests-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sw6ws7za93y3lbmxp6jp1k17zi3wdg7698ab133kcw82f6mzba2"))))
    (properties `((upstream-name . "parser-combinators-tests") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list "-f-dev")))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-megaparsec-tests)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-parser-combinators)))
    (home-page "https://github.com/mrkkrp/parser-combinators")
    (synopsis "Test suite of parser-combinators")
    (description "Test suite of parser-combinators.")
    (license license:bsd-3)))

haskell-9.4-parser-combinators-tests

(define-public haskell-9.4-pdf-toolbox-core
  (package
    (name "haskell-9.4-pdf-toolbox-core")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pdf-toolbox-core/pdf-toolbox-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1d5bk7qbcgz99xa61xi17z0hgr3w2by3d5mr2vgd0hpcdi5ygskz"))))
    (properties `((upstream-name . "pdf-toolbox-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fzlib")
       #:cabal-revision
       ("1" "1h5nh360zaql29lw3mcykip7bvnnjjcxmpaaz3s842a227m9wflz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-cipher-aes)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-cipher-rc4)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-crypto-api)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-cryptohash)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-io-streams)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/Yuras/pdf-toolbox")
    (synopsis "A collection of tools for processing PDF files.")
    (description
     "Low level tools for processing PDF files.

Level of abstraction: cross reference, trailer, indirect object, object

The API is based on random access input streams, and is designed to be memory efficient.
We don't need to parse the entire PDF file and store it in memory when you need just one page or two.
Usually it is also leads to time efficiency, but we don't try optimize performance
by e.g. maintaining xref or object cache. Higher level layers should take care of it.

The library is low level. It may mean that you need to be familiar with PDF file internals to
actually use it.")
    (license license:bsd-3)))

haskell-9.4-pdf-toolbox-core

(define-public haskell-9.4-pipes-wai
  (package
    (name "haskell-9.4-pipes-wai")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-pipes)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/iand675/pipes-wai")
    (synopsis "A port of wai-conduit for the pipes ecosystem")
    (description
     "A light-weight wrapper around Network.Wai to provide easy pipes support.")
    (license license:expat)))

haskell-9.4-pipes-wai

(define-public haskell-9.4-plotlyhs
  (package
    (name "haskell-9.4-plotlyhs")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-blaze-markup)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-lucid)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-microlens-th)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/JonathanReeve/plotlyhs")
    (synopsis "Haskell bindings to Plotly.js")
    (description
     "Generate web-based plots with the Plotly.js library.
For examples, see <https://JonathanReeve.github.io/plotlyhs/>")
    (license license:expat)))

haskell-9.4-plotlyhs

(define-public haskell-9.4-polysemy-uncontrolled
  (package
    (name "haskell-9.4-polysemy-uncontrolled")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/polysemy-uncontrolled/polysemy-uncontrolled-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01z19dy9gb78iwanszyipszq05piaa3n4qjmyj0yg22a1xsm02mi"))))
    (properties `((upstream-name . "polysemy-uncontrolled") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-polysemy)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-polysemy-methodology)))
    (home-page "https://hackage.haskell.org/package/polysemy-uncontrolled")
    (synopsis "Uncontrolled toy effect for polysemy.")
    (description "")
    (license license:expat)))

haskell-9.4-polysemy-uncontrolled

(define-public haskell-9.4-posix-paths
  (package
    (name "haskell-9.4-posix-paths")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/posix-paths/posix-paths-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ljphynpaaibs9zjxwk1b774q66s3biinfx2sgdzxyzssbl9va42"))))
    (properties `((upstream-name . "posix-paths") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)))
    (home-page "https://hackage.haskell.org/package/posix-paths")
    (synopsis "POSIX filepath/directory functionality")
    (description
     "This package gives access to certain POSIX-based Filepath/Directory
services.

The package is not supported under Windows (except under Cygwin).")
    (license license:bsd-3)))

haskell-9.4-posix-paths

(define-public haskell-9.4-postgresql-binary
  (package
    (name "haskell-9.4-postgresql-binary")
    (version "0.13.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-binary/postgresql-binary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0l8rnsjmxskhlry1p34y1mfcrzwm382v4y2zcwsjhj5r09ihzkm2"))))
    (properties `((upstream-name . "postgresql-binary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-binary-parser)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-bytestring-strict-builder)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-ip)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-uuid)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/postgresql-binary ")
    (synopsis "Encoders and decoders for the PostgreSQL's binary format")
    (description "An API for dealing with PostgreSQL's binary data format.

It can be used to implement performant bindings to Postgres.
E.g., <http://hackage.haskell.org/package/hasql hasql>
is based on this library.

It supports all Postgres versions starting from 8.3
and is tested against 8.3, 9.3 and 9.5
with the @@integer_datetimes@@ setting off and on.")
    (license license:expat)))

haskell-9.4-postgresql-binary

(define-public haskell-9.4-postgresql-simple
  (package
    (name "haskell-9.4-postgresql-simple")
    (version "0.6.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-simple/postgresql-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15jy8lp9200whyxk421yw3m671cjz41cnv2j8wll1giblyr3m9gx"))))
    (properties `((upstream-name . "postgresql-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-Only)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-bytestring-builder)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-postgresql-libpq)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-time-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-uuid-types)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://hackage.haskell.org/package/postgresql-simple")
    (synopsis "Mid-Level PostgreSQL client library")
    (description
     "Mid-Level PostgreSQL client library, forked from mysql-simple.")
    (license license:bsd-3)))

haskell-9.4-postgresql-simple

(define-public haskell-9.4-pptable
  (package
    (name "haskell-9.4-pptable")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-boxes)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-generic-deriving)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/gdevanla/pptable#readme")
    (synopsis "Pretty Print containers in a tabular format")
    (description
     "When you are faced with tens of records data types contained in a list or similar structure if becomes difficult to view all records during iterative development. This library provides a generic funciton to print any such record types in a tabular format that makes visualizing the data more pleasing. Please see README.md for examples of this.")
    (license license:expat)))

haskell-9.4-pptable

(define-public haskell-9.4-pretty-simple
  (package
    (name "haskell-9.4-pretty-simple")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Glob)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-prettyprinter-ansi-terminal)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cdepillabout/pretty-simple")
    (synopsis "pretty printer for data types with a 'Show' instance.")
    (description
     "Please see <https://github.com/cdepillabout/pretty-simple#readme README.md>.")
    (license license:bsd-3)))

haskell-9.4-pretty-simple

(define-public haskell-9.4-pretty-sop
  (package
    (name "haskell-9.4-pretty-sop")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-generics-sop)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-pretty-show)))
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

haskell-9.4-pretty-sop

(define-public haskell-9.4-pvar
  (package
    (name "haskell-9.4-pvar")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pvar/pvar-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0f28wb89zlddgmh0302x73lphmd6kmx1829yh6kwsz7a6asq79ln"))))
    (properties `((upstream-name . "pvar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0r3r7w9x31pimrzmp5fjabgcx8caxf1g0mk9izksw2wnn1anhjix")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)))
    (home-page "https://github.com/lehins/pvar#readme")
    (synopsis "Mutable variable with primitive values")
    (description
     "Mutable variable `PVar` that is backed by a single value `MutableByteArray`")
    (license license:bsd-3)))

haskell-9.4-pvar

(define-public haskell-9.4-quickcheck-classes
  (package
    (name "haskell-9.4-quickcheck-classes")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-primitive-addr)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-quickcheck-classes-base)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-semirings)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
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

haskell-9.4-quickcheck-classes

(define-public haskell-9.4-ral
  (package
    (name "haskell-9.4-ral")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ral/ral-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1f6sks81g8zxkgnp7lc5n0aimnvbbvkazassc17z0prs56hs63si"))))
    (properties `((upstream-name . "ral") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fadjunctions" "-fdistributive" "-fsemigroupoids")
       #:cabal-revision
       ("1" "12hvk5cz97ljnwa4y8c47hhfg8v1j7n3zqhb99cmrvgm58ar5j4q")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-adjunctions)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-bin)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-boring)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-distributive)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-fin)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)))
    (home-page "https://github.com/phadej/vec")
    (synopsis "Random access lists")
    (description
     "This package provides ordinary random access list, 'RAList', and also
a length indexed variant, 'RAVec'.

The data structure allows fast cons-operation (like ordinary list) but also fast random access (like non-functional arrays).

For @@lens@@ or @@optics@@ support see [ral-lens](https://hackage.haskell.org/package/ral-lens) and [ral-optics](https://hackage.haskell.org/package/ral-optics) packages respectively.

=== Similar packages

These packages don't provide length-indexed variants, and their 'RAList' has
opaque structure.

* https://hackage.haskell.org/package/ralist
* https://hackage.haskell.org/package/random-access-list")
    (license license:gpl2+)))

haskell-9.4-ral

(define-public haskell-9.4-rattle
  (package
    (name "haskell-9.4-rattle")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rattle/rattle-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1nd3knid238fa85rm2d0kavhyry6d6lilpk2p4ki9njgq2003bbk"))))
    (properties `((upstream-name . "rattle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cmdargs)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-filepattern)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-heaps)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-js-dgtable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-js-flot)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-js-jquery)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-shake)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-terminal-size)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ndmitchell/rattle#readme")
    (synopsis "Forward build system, with caching and speculation")
    (description
     "A forward build system like Fabrciate but with speculation and remote caching.")
    (license license:bsd-3)))

haskell-9.4-rattle

(define-public haskell-9.4-refined
  (package
    (name "haskell-9.4-refined")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-these-skinny)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/refined")
    (synopsis "Refinement types with static and runtime checking")
    (description
     "For an extensive introduction to the library please follow to
<http://nikita-volkov.github.io/refined this blog-post>.")
    (license license:expat)))

haskell-9.4-refined

(define-public haskell-9.4-relapse
  (package
    (name "haskell-9.4-relapse")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/relapse/relapse-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1wd5ng4kdwk66cla1s1l5xp7cm9ajmgr3kjh0dfzlim24qrfamfr"))))
    (properties `((upstream-name . "relapse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-include-file)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-tasty-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/iostat/relapse#readme")
    (synopsis "Sensible RLP encoding")
    (description
     "An implementation of RLP as specified in the Ethereum Wiki, using Attoparsec")
    (license license:expat)))

haskell-9.4-relapse

(define-public haskell-9.4-rg
  (package
    (name "haskell-9.4-rg")
    (version "1.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rg/rg-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1cnh3pmq80vziwr2rnz2zinlhak5abrkcpcrrs6x6jz0aq9npnj7"))))
    (properties `((upstream-name . "rg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-fmt)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-possibly)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://github.com/cdornan/rg#readme")
    (synopsis "A dynamic/unbounded alternative to Bounded Enum")
    (description
     "Please see the README on GitHub at <https://github.com/cdornan/rg#readme>")
    (license license:bsd-3)))

haskell-9.4-rg

(define-public haskell-9.4-rio
  (package
    (name "haskell-9.4-rio")
    (version "0.1.22.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rio/rio-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0rpc4f2yvw0y6mqz9ykm3778j6srya7ssww691kpf9nb8vddgjb6"))))
    (properties `((upstream-name . "rio") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-microlens-mtl)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-typed-process)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://github.com/commercialhaskell/rio#readme")
    (synopsis "A standard library for Haskell")
    (description
     "See README and Haddocks at <https://www.stackage.org/package/rio>")
    (license license:expat)))

haskell-9.4-rio

(define-public haskell-9.4-rocksdb-haskell-jprupp
  (package
    (name "haskell-9.4-rocksdb-haskell-jprupp")
    (version "2.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rocksdb-haskell-jprupp/rocksdb-haskell-jprupp-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0c647kahnglwf881hd3ksan1p7j4m65s84wyw8i4jvikm4jzgqsh"))))
    (properties `((upstream-name . "rocksdb-haskell-jprupp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-string-conversions)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) rocksdb)))
    (home-page "https://github.com/jprupp/rocksdb-haskell#readme")
    (synopsis "Haskell bindings for RocksDB")
    (description
     "See README at <https://github.com/jprupp/rocksdb-haskell#readme>")
    (license license:bsd-3)))

haskell-9.4-rocksdb-haskell-jprupp

(define-public haskell-9.4-rss
  (package
    (name "haskell-9.4-rss")
    (version "3000.2.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rss/rss-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0z48xb610k1h29rg03q19y08fp78agxp2gr48innw5y3rz00s6ym"))))
    (properties `((upstream-name . "rss") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-old-locale" "-fnetwork-uri")
       #:cabal-revision
       ("6" "1zhkfkvlbisk5qa7fccpwknblzk1m4kyyfcdhj436p2q5kx8dd8v")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-HaXml)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-hvr/rss")
    (synopsis "A library for generating RSS 2.0 feeds.")
    (description
     "This library allows you to generate [RSS 2.0](http://www.rssboard.org/rss-specification) feeds.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.4-rss

(define-public haskell-9.4-safe-coloured-text
  (package
    (name "haskell-9.4-safe-coloured-text")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safe-coloured-text/safe-coloured-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0n8pkdy7v1c3c14fpbwkrib5vmmviqv9ysl7bcm6g3p23qi4lq5i"))))
    (properties `((upstream-name . "safe-coloured-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-validity-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-validity-text)))
    (home-page "https://github.com/NorfairKing/safe-coloured-text#readme")
    (synopsis "Safely output coloured text")
    (description "")
    (license license:expat)))

haskell-9.4-safe-coloured-text

(define-public haskell-9.4-safe-json
  (package
    (name "haskell-9.4-safe-json")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-uuid)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-uuid-types)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
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

haskell-9.4-safe-json

(define-public haskell-9.4-say
  (package
    (name "haskell-9.4-say")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/say/say-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1r5kffjfwpas45g74sip8glrj1m9nygrnxjm7xgw898rq9pnafgn"))))
    (properties `((upstream-name . "say") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)))
    (home-page "https://github.com/fpco/say#readme")
    (synopsis "Send textual messages to a Handle in a thread-friendly way")
    (description
     "Please see the README and documentation at <https://www.stackage.org/package/say>")
    (license license:expat)))

haskell-9.4-say

(define-public haskell-9.4-scientist
  (package
    (name "haskell-9.4-scientist")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/scientist/scientist-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ni55fm2132js1zbqw6sl47asv50xp24a463zhw093p4m5x4yydz"))))
    (properties `((upstream-name . "scientist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-MonadRandom)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-clock)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-random-shuffle)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)))
    (home-page "https://github.com/freckle/scientist-hs#readme")
    (synopsis "A Haskell library for carefully refactoring critical paths.")
    (description "Please see README.md")
    (license license:expat)))

haskell-9.4-scientist

(define-public haskell-9.4-seqid-streams
  (package
    (name "haskell-9.4-seqid-streams")
    (version "0.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/seqid-streams/seqid-streams-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dd0vxs216ri0hdkz49hzzrryil7hhqb55cc9z6ca8f337imanm8"))))
    (properties `((upstream-name . "seqid-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-io-streams)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-seqid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/bitnomial/seqid-streams")
    (synopsis "Sequence ID IO-Streams")
    (description "Uniquely identify elements in a sequenced stream")
    (license license:bsd-3)))

haskell-9.4-seqid-streams

(define-public haskell-9.4-shakespeare
  (package
    (name "haskell-9.4-shakespeare")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-blaze-markup)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-file-embed)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-th-lift)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
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

haskell-9.4-shakespeare

(define-public haskell-9.4-shelltestrunner
  (package
    (name "haskell-9.4-shelltestrunner")
    (version "1.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shelltestrunner/shelltestrunner-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1a5kzqbwg6990249ypw0cx6cqj6663as1kbj8nzblcky8j6kbi6b"))))
    (properties `((upstream-name . "shelltestrunner") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Diff)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cmdargs)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-filemanip)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-pretty-show)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/simonmichael/shelltestrunner")
    (synopsis "Easy, repeatable testing of CLI programs/commands")
    (description
     "shelltestrunner (executable: shelltest) is a portable
command-line tool for testing command-line programs, or general shell
commands, released under GPLv3+.  It reads simple test specifications
defining a command to run, some input, and the expected output,
stderr, and exit status.  It can run tests in parallel, selectively,
with a timeout, in color, etc.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-shelltestrunner

(define-public haskell-9.4-shower
  (package
    (name "haskell-9.4-shower")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/shower/shower-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0bxg88jbg5pj1nm48c1s04dl7l5psq35jsw60y3v1xpnszx95r1r"))))
    (properties `((upstream-name . "shower") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-tasty-golden)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://monadfix.com/shower")
    (synopsis "Clean up the formatting of 'show' output")
    (description "")
    (license license:bsd-3)))

haskell-9.4-shower

(define-public haskell-9.4-snap-core
  (package
    (name "haskell-9.4-snap-core")
    (version "1.0.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/snap-core/snap-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hf671g7h4nikfvi05q3mmcxhfcsh874dkansssn0mc68k9fsak4"))))
    (properties `((upstream-name . "snap-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-portable" "-f-debug" "-fnetwork-uri")
       #:cabal-revision
       ("3" "02r6plphl4vqig3xap9amdib0qjd98nqpn5jhy6hsbiwh3p7cy9b")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-bytestring-builder)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-io-streams)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-lifted-base)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-old-locale)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-parallel)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-readable)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-regex-posix)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-unix-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-9.4-snap-core

(define-public haskell-9.4-sourcemap
  (package
    (name "haskell-9.4-sourcemap")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/sourcemap")
    (synopsis
     "Implementation of source maps as proposed by Google and Mozilla.")
    (description
     "Implementation of source maps, revision 3, proposed by Google and Mozilla here
<https://wiki.mozilla.org/DevTools/Features/SourceMap> and here
<https://docs.google.com/document/d/1U1RGAehQwRypUTovF1KRlpiOFze0b-_2gc6fAH0KY0k/edit>")
    (license license:bsd-3)))

haskell-9.4-sourcemap

(define-public haskell-9.4-stack-clean-old
  (package
    (name "haskell-9.4-stack-clean-old")
    (version "0.4.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stack-clean-old/stack-clean-old-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ymzri4pxs0dvqbs3nyrc6hq2lp6y6glva1kbjzpkzgk9r93x3kn"))))
    (properties `((upstream-name . "stack-clean-old") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-filemanip)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-simple-cmd)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-simple-cmd-args)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/juhp/stack-clean-old")
    (synopsis "Clean away old stack build artifacts")
    (description "A tool for removing old .stack-work/install builds and
.stack/snapshots & programs for older ghc versions
to recover diskspace.")
    (license license:bsd-3)))

haskell-9.4-stack-clean-old

(define-public haskell-9.4-static-text
  (package
    (name "haskell-9.4-static-text")
    (version "0.2.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/static-text/static-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mphxd0wpr4qwyznff96qn5b1xb2x9k956aghap6nnabnyhgvqr4"))))
    (properties `((upstream-name . "static-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbytestring" "-ftext" "-fvector")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-doctest-driver-gen)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://github.com/dzhus/static-text#readme")
    (synopsis
     "Lists, Texts, ByteStrings and Vectors of statically known length")
    (description
     "static-text provides type-level safety for basic operations on string-like types (finite lists of elements), such as Data.Text, String (and all lists), Data.ByteString and Data.Vector. Use it when you need static guarantee on lengths of strings produced in your code.")
    (license license:bsd-3)))

haskell-9.4-static-text

(define-public haskell-9.4-streaming-wai
  (package
    (name "haskell-9.4-streaming-wai")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-bytestring-builder)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-streaming)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/jb55/streaming-wai")
    (synopsis "Streaming Wai utilities")
    (description "Please see README.md")
    (license license:expat)))

haskell-9.4-streaming-wai

(define-public haskell-9.4-streams
  (package
    (name "haskell-9.4-streams")
    (version "3.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/streams/streams-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "11aggnf2pcjhhm8h69dhgysg64kyzpw9d493mh2lkcc7w4v4wcig"))))
    (properties `((upstream-name . "streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-adjunctions)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-boring)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-distributive)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)))
    (home-page "http://github.com/ekmett/streams")
    (synopsis "Various Haskell 2010 stream comonads")
    (description
     "Various Haskell 2010 stream comonads.
* \"Data.Stream.Future\" provides a coinductive anti-causal stream, or non-empty 'ZipList'. The comonad provides access to only the
tail of the stream. Like a conventional 'ZipList', this is /not/ a monad.

> data Future a = Last a | a :< Future a

* \"Data.Stream.Future.Skew\" provides a non-empty skew-binary random-access-list with the semantics of @@Data.Stream.Future@@. As with
\"Data.Stream.Future\" this stream is not a 'Monad', since the 'Applicative' instance zips streams of potentially differing lengths.
The random-access-list structure provides a number of operations logarithmic access time, but makes 'Data.Stream.Future.Skew.cons'
less productive. Where applicable \"Data.Stream.Infinite.Skew\" may be more efficient, due to a lazier and more efficient 'Applicative'
instance.

>

* \"Data.Stream.Infinite\" provides a coinductive infinite anti-causal stream. The 'Comonad' provides access to the tail of the
stream and the 'Applicative' zips streams together. Unlike 'Future', infinite stream form a 'Monad'. The monad diagonalizes
the 'Stream', which is consistent with the behavior of the 'Applicative', and the view of a 'Stream' as a isomorphic to the reader
monad from the natural numbers. Being infinite in length, there is no 'Alternative' instance.

> data Stream a = a :< Stream a

* \"Data.Stream.Infinite.Skew\" provides an infinite skew-binary random-access-list with the semantics of \"Data.Stream.Infinite\"
Since every stream is infinite, the 'Applicative' instance can be considerably less strict than the corresponding instance for
\"Data.Stream.Future.Skew\" and performs asymptotically better.

>

* \"Data.Stream.Infinite.Functional.Zipper\" provides a bi-infinite sequence, represented as a pure function with an accumulating
parameter added to optimize moving the current focus.

> data Zipper a = !Integer :~ (Integer -> a)

* \"Data.Stream.Supply\" provides a comonadic supply of unique values, which are
generated impurely as the tree is explored.")
    (license license:bsd-3)))

haskell-9.4-streams

(define-public haskell-9.4-string-random
  (package
    (name "haskell-9.4-string-random")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-pcre-heavy)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hiratara/hs-string-random#readme")
    (synopsis
     "A library for generating random string from a regular experession")
    (description "With this package you can generate random strings from
regular expressions. If you are using QuickCheck, you can
also check the quickcheck-string-random package.")
    (license license:bsd-3)))

haskell-9.4-string-random

(define-public haskell-9.4-structured
  (package
    (name "haskell-9.4-structured")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-time-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-uuid-types)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/structured")
    (synopsis "Structure (hash) of your data types")
    (description
     "Calculate the hash of a data structure.
It can be used as a magic number for the serialization formats.
See <https://hackage.haskell.org/package/binary-tagged binary-tagged>
for a @@binary@@ bindings.")
    (license license:bsd-3)))

haskell-9.4-structured

(define-public haskell-9.4-tasty-lua
  (package
    (name "haskell-9.4-tasty-lua")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-lua/tasty-lua-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vnyvgcjsvqhwwyqkbgqksr9ppj5whiihpwcqkg33sl7jj3ysdwv"))))
    (properties `((upstream-name . "tasty-lua") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-file-embed)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hslua-core)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-lua-arbitrary)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hslua/hslua")
    (synopsis "Write tests in Lua, integrate into tasty.")
    (description "Allow users to define tasty tests from Lua.")
    (license license:expat)))

haskell-9.4-tasty-lua

(define-public haskell-9.4-tasty-silver
  (package
    (name "haskell-9.4-tasty-silver")
    (version "3.3.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-silver/tasty-silver-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13j0zs0ciijv9q2nncna1gbgsgw2g7xc228hzmqic1750n3ybz9m"))))
    (properties `((upstream-name . "tasty-silver") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-process-extras)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-silently)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)))
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

haskell-9.4-tasty-silver

(define-public haskell-9.4-tasty-tap
  (package
    (name "haskell-9.4-tasty-tap")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-tap/tasty-tap-" version
                    ".tar.gz"))
              (sha256
               (base32
                "16i7pd0xis1fyqgmsy4mq04y87ny61dh2lddnjijcf1s9jz9b6x8"))))
    (properties `((upstream-name . "tasty-tap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-tasty-golden)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)))
    (home-page "https://github.com/michaelxavier/tasty-tap")
    (synopsis "TAP (Test Anything Protocol) Version 13 formatter for tasty")
    (description "A tasty ingredient to output test results in TAP 13 format.")
    (license license:expat)))

haskell-9.4-tasty-tap

(define-public haskell-9.4-text-show-instances
  (package
    (name "haskell-9.4-text-show-instances")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-bifunctors)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-generic-deriving)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-haskeline)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-old-locale)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-old-time)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-text-short)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-text-show)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-th-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-uuid-types)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
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

haskell-9.4-text-show-instances

(define-public haskell-9.4-th-desugar
  (package
    (name "haskell-9.4-th-desugar")
    (version "1.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-desugar/th-desugar-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1b57v15xx0z0xjlijv61dh07p6rvfkdpxnxiaaa1iv7zyg2x7cnz"))))
    (properties `((upstream-name . "th-desugar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "16i6x4w286mhhkxzjid5pfbnn51dzyxq6brawlppqb15qbnvs744")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-ordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-th-abstraction)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-th-lift)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-th-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)))
    (home-page "https://github.com/goldfirere/th-desugar")
    (synopsis "Functions to desugar Template Haskell")
    (description
     "This package provides the Language.Haskell.TH.Desugar module, which desugars
Template Haskell's rich encoding of Haskell syntax into a simpler encoding.
This desugaring discards surface syntax information (such as the use of infix
operators) but retains the original meaning of the TH code. The intended use
of this package is as a preprocessor for more advanced code manipulation
tools. Note that the input to any of the ds... functions should be produced
from a TH quote, using the syntax [| ... |]. If the input to these functions
is a hand-coded TH syntax tree, the results may be unpredictable. In
particular, it is likely that promoted datatypes will not work as expected.")
    (license license:bsd-3)))

haskell-9.4-th-desugar

(define-public haskell-9.4-th-env
  (package
    (name "haskell-9.4-th-env")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/th-env/th-env-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "01gmycna12sg2f0zslhjnjx8s86shsvmw5jpw5n5z93bvxkb20gw"))))
    (properties `((upstream-name . "th-env") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-th-compat)))
    (home-page "https://github.com/dzhus/th-env#readme")
    (synopsis
     "Template Haskell splices that expand to an environment variable")
    (description
     "TH splices that expand to an environment variable value. Can be used to embed build-time parameters in your application.")
    (license license:bsd-3)))

haskell-9.4-th-env

(define-public haskell-9.4-th-nowq
  (package
    (name "haskell-9.4-th-nowq")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-markdown-unlit)))
    (home-page "https://github.com/dzhus/th-nowq#readme")
    (synopsis "Template Haskell splice that expands to current time")
    (description
     "TH splice that expands to current time as a string literal in ISO-8601 format. Can be used to embed the compilation timestamp in your application.")
    (license license:bsd-3)))

haskell-9.4-th-nowq

(define-public haskell-9.4-th-test-utils
  (package
    (name "haskell-9.4-th-test-utils")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-test-utils/th-test-utils-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vk5fj66w7smq4yc614ixh7s78n3djggpzcxmakyxfz01vz20gay"))))
    (properties `((upstream-name . "th-test-utils") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-tasty-golden)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-th-orphans)))
    (home-page "https://github.com/LeapYear/th-test-utils#readme")
    (synopsis "Utility functions for testing Template Haskell code")
    (description
     "Utility functions for testing Template Haskell code, including
functions for testing failures in the Q monad.")
    (license license:bsd-3)))

haskell-9.4-th-test-utils

(define-public haskell-9.4-th-utilities
  (package
    (name "haskell-9.4-th-utilities")
    (version "0.2.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-utilities/th-utilities-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qcp3f9q4b9p372vdngy7bzcxp9b669vddpijg4j5vz04njl41sa"))))
    (properties `((upstream-name . "th-utilities") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-th-abstraction)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-th-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://github.com/fpco/th-utilities#readme")
    (synopsis "Collection of useful functions for use with Template Haskell")
    (description "")
    (license license:expat)))

haskell-9.4-th-utilities

(define-public haskell-9.4-thread-supervisor
  (package
    (name "haskell-9.4-thread-supervisor")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/thread-supervisor/thread-supervisor-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1k42k6c2h0xs7h4gcfsjghr5jp1q2w7ay1drlfw2ghl8zmfh2pnv"))))
    (properties `((upstream-name . "thread-supervisor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-clock)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)))
    (home-page "https://github.com/nshimaza/thread-supervisor#readme")
    (synopsis
     "A simplified implementation of Erlang/OTP like supervisor over thread")
    (description
     "Please see the README on Github at <https://github.com/nshimaza/thread-supervisor#readme>")
    (license license:expat)))

haskell-9.4-thread-supervisor

(define-public haskell-9.4-tls
  (package
    (name "haskell-9.4-tls")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tls/tls-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1674i73dwha42ia1wlngi346lnfbag46w1wvqfim5f61q6pj17fj"))))
    (properties `((upstream-name . "tls") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fcompat" "-fnetwork" "-f-hans")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-asn1-encoding)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-asn1-types)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hourglass)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage009) haskell-9.4-x509)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-x509-store)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/vincenthz/hs-tls")
    (synopsis "TLS/SSL protocol native implementation (Server and Client)")
    (description
     "Native Haskell TLS and SSL protocol implementation for server and client.

This provides a high-level implementation of a sensitive security protocol,
eliminating a common set of security issues through the use of the advanced
type system, high level constructions and common Haskell features.

Currently implement the TLS1.0, TLS1.1, TLS1.2 and TLS 1.3 protocol,
and support RSA and Ephemeral (Elliptic curve and regular) Diffie Hellman key exchanges,
and many extensions.

Some debug tools linked with tls, are available through the
<http://hackage.haskell.org/package/tls-debug/>.")
    (license license:bsd-3)))

haskell-9.4-tls

(define-public haskell-9.4-toml-reader
  (package
    (name "haskell-9.4-toml-reader")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-parser-combinators)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-tasty-golden)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/brandonchinn178/toml-reader#readme")
    (synopsis "TOML format parser compliant with v1.0.0.")
    (description
     "TOML format parser compliant with v1.0.0. See README.md for more details.")
    (license license:bsd-3)))

haskell-9.4-toml-reader

(define-public haskell-9.4-twitter-types
  (package
    (name "haskell-9.4-twitter-types")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/himura/twitter-types")
    (synopsis "Twitter JSON parser and types")
    (description
     "Please see the README on Github at <https://github.com/himura/twitter-types#readme>")
    (license license:bsd-3)))

haskell-9.4-twitter-types

(define-public haskell-9.4-unicode-collation
  (package
    (name "haskell-9.4-unicode-collation")
    (version "0.1.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unicode-collation/unicode-collation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0imcdsk0qqwj31zwgpick4s2nbxlyxwa64lq6r212jd0y0hrrvvl"))))
    (properties `((upstream-name . "unicode-collation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-doctests" "-f-executable")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-th-lift-instances)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unicode-transforms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jgm/unicode-collation")
    (synopsis "Haskell implementation of the Unicode Collation Algorithm")
    (description "This library provides a pure Haskell implementation of
the Unicode Collation Algorithm described at
<http://www.unicode.org/reports/tr10/>.  It is not
as fully-featured or as performant as @@text-icu@@, but
it avoids a dependency on a large C library.
Locale-specific tailorings are also provided.")
    (license license:bsd-2)))

haskell-9.4-unicode-collation

(define-public haskell-9.4-universe-instances-extended
  (package
    (name "haskell-9.4-universe-instances-extended")
    (version "1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universe-instances-extended/universe-instances-extended-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02fxra5g76dk2jpbvmj0mj5bylj4400fcp3np3s5d31qgsjh2sn6"))))
    (properties `((upstream-name . "universe-instances-extended")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0jkrfx0r5j5azaknlbkn7xskyyfjisifddvlpwirfzzmm068yk9g")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-adjunctions)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-universe-base)))
    (home-page "https://github.com/dmwit/universe")
    (synopsis "Universe instances for types from selected extra packages")
    (description
     "A class for finite and recursively enumerable types and some helper functions for enumerating them
defined in @@universe-base@@ package:

@@
class Universe a where universe :: [a]
class Universe a => Finite a where universeF :: [a]; universeF = universe
@@")
    (license license:bsd-3)))

haskell-9.4-universe-instances-extended

(define-public haskell-9.4-unjson
  (package
    (name "haskell-9.4-unjson")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-free)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-invariant)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/scrive/unjson")
    (synopsis "Bidirectional JSON parsing and generation.")
    (description "Bidirectional JSON parsing and generation
with automatic documentation support.")
    (license license:bsd-3)))

haskell-9.4-unjson

(define-public haskell-9.4-uri-encode
  (package
    (name "haskell-9.4-uri-encode")
    (version "1.5.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uri-encode/uri-encode-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0lj2h701af12539p957rw24bxr07mfqd5r4h52i42f43ax165767"))))
    (properties `((upstream-name . "uri-encode") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-tools" "-fnetwork-uri")
       #:cabal-revision
       ("2" "03pmvbi56gmg1z2wr3glncc7dbyh666bqp565inh31qzsp9zwmgj")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/uri-encode")
    (synopsis "Unicode aware uri-encoding")
    (description "This package allows you to uri encode and uri decode
Strings, Texts and ByteString values.")
    (license license:bsd-3)))

haskell-9.4-uri-encode

(define-public haskell-9.4-users
  (package
    (name "haskell-9.4-users")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-bcrypt)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-path-pieces)))
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

haskell-9.4-users

(define-public haskell-9.4-validate-input
  (package
    (name "haskell-9.4-validate-input")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-pcre-heavy)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-string-conversions)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/agrafix/validate-input")
    (synopsis "Input validation combinator library")
    (description
     "A small Haskell combinator library that provides a simple way of
validating user provided data structures.")
    (license license:expat)))

haskell-9.4-validate-input

(define-public haskell-9.4-validity-aeson
  (package
    (name "haskell-9.4-validity-aeson")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-validity-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-validity-text)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-validity-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-validity-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for aeson")
    (description "")
    (license license:expat)))

haskell-9.4-validity-aeson

(define-public haskell-9.4-vec
  (package
    (name "haskell-9.4-vec")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/vec/vec-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "01v5zd4lak76ymlhi3zjpsy3g01vcchwx1b7cavc4rdzpdjqw58b"))))
    (properties `((upstream-name . "vec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fadjunctions" "-fdistributive" "-fsemigroupoids")
       #:cabal-revision
       ("1" "156w28mz6d1gdp907j14v5xvj5y786h5pi4bfgvri592zwd2p46b")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-adjunctions)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-boring)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-distributive)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-fin)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)))
    (home-page "https://github.com/phadej/vec")
    (synopsis "Vec: length-indexed (sized) list")
    (description
     "This package provides length-indexed (sized) lists, also known as vectors.

@@
data Vec n a where
\\    VNil  :: Vec 'Nat.Z a
\\    (:::) :: a -> Vec n a -> Vec ('Nat.S n) a
@@

The functions are implemented in four flavours:

* __naive__: with explicit recursion. It's simple, constraint-less, yet slow.

* __pull__: using @@Fin n -> a@@ representation, which fuses well,
but makes some programs hard to write. And

* __data-family__: which allows lazy pattern matching

* __inline__: which exploits how GHC dictionary inlining works, unrolling
recursion if the size of 'Vec' is known statically.

As best approach depends on the application, @@vec@@ doesn't do any magic
transformation. Benchmark your code.

This package uses [fin](https://hackage.haskell.org/package/fin), i.e. not @@GHC.TypeLits@@, for indexes.

For @@lens@@ or @@optics@@ support see [vec-lens](https://hackage.haskell.org/package/vec-lens) and [vec-optics](https://hackage.haskell.org/package/vec-optics) packages respectively.

See [Hasochism: the pleasure and pain of dependently typed haskell programming](https://doi.org/10.1145/2503778.2503786)
by Sam Lindley and Conor McBride for answers to /how/ and /why/.
Read [APLicative Programming with Naperian Functors](https://doi.org/10.1007/978-3-662-54434-1_21)
by Jeremy Gibbons for (not so) different ones.

=== Similar packages

* [linear](https://hackage.haskell.org/package/linear) has 'V' type,
which uses 'Vector' from @@vector@@ package as backing store.
@@Vec@@ is a real GADT, but tries to provide as many useful instances (upto @@lens@@).

* [vector-sized](https://hackage.haskell.org/package/vector-sized)
Great package using @@GHC.TypeLits@@. Current version (0.6.1.0) uses
@@finite-typelits@@ and @@Int@@ indexes.

* [sized-vector](https://hackage.haskell.org/package/sized-vector) depends
on @@singletons@@ package. @@vec@@ isn't light on dependencies either,
but try to provide wide GHC support.

* [fixed-vector](https://hackage.haskell.org/package/fixed-vector)

* [sized](https://hackage.haskell.org/package/sized) also depends
on a @@singletons@@ package. The @@Sized f n a@@ type is generalisation of
@@linear@@'s @@V@@ for any @@ListLike@@.

* [clash-prelude](https://hackage.haskell.org/package/clash-prelude)
is a kitchen sink package, which has @@CLaSH.Sized.Vector@@ module.
Also depends on @@singletons@@.")
    (license license:bsd-3)))

haskell-9.4-vec

(define-public haskell-9.4-vector-sized
  (package
    (name "haskell-9.4-vector-sized")
    (version "1.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-sized/vector-sized-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13h4qck1697iswd9f8w17fpjc6yhl2pgrvay7pb22j2h3mgaxpjl"))))
    (properties `((upstream-name . "vector-sized") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0y088b8fdhjrghi203n11ip4x2j4632c8rz6a5hx8azmdz2giiph")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-adjunctions)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-distributive)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-finite-typelits)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-indexed-list-literals)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://github.com/expipiplus1/vector-sized#readme")
    (synopsis "Size tagged vectors")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.4-vector-sized

(define-public haskell-9.4-vector-space
  (package
    (name "haskell-9.4-vector-space")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-Boolean)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-MemoTrie)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-NumInstances)))
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

haskell-9.4-vector-space

(define-public haskell-9.4-wai-cors
  (package
    (name "haskell-9.4-wai-cors")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-unicode-symbols)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/larskuhtz/wai-cors")
    (synopsis "CORS for WAI")
    (description "This package provides an implemenation of
Cross-Origin resource sharing (CORS) for
<http://hackage.haskell.org/package/wai Wai>
that aims to be compliant with <http://www.w3.org/TR/cors>.")
    (license license:expat)))

haskell-9.4-wai-cors

(define-public haskell-9.4-wai-eventsource
  (package
    (name "haskell-9.4-wai-eventsource")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://www.yesodweb.com/book/web-application-interface")
    (synopsis "WAI support for server-sent events (deprecated)")
    (description "Since WAI 3.0, this code has been merged into wai-extra.")
    (license license:expat)))

haskell-9.4-wai-eventsource

(define-public haskell-9.4-wai-middleware-caching
  (package
    (name "haskell-9.4-wai-middleware-caching")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "http://github.com/yogsototh/wai-middleware-caching/tree/master/wai-middleware-caching#readme")
    (synopsis "WAI Middleware to cache things")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.4-wai-middleware-caching

(define-public haskell-9.4-wai-rate-limit
  (package
    (name "haskell-9.4-wai-rate-limit")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-time-units)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mbg/wai-rate-limit#readme")
    (synopsis "Rate limiting as WAI middleware")
    (description
     "A Haskell library which implements rate limiting as WAI middleware")
    (license license:expat)))

haskell-9.4-wai-rate-limit

(define-public haskell-9.4-wai-session
  (package
    (name "haskell-9.4-wai-session")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-StateVar)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-bytestring-builder)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-cookie)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-entropy)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-vault)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)))
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

haskell-9.4-wai-session

(define-public haskell-9.4-web-routes-boomerang
  (package
    (name "haskell-9.4-web-routes-boomerang")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-boomerang)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-web-routes)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/web-routes-boomerang")
    (synopsis "Use boomerang for type-safe URL parsers/printers")
    (description
     "This module add support for creating url parsers/printers using a single unified grammar specification")
    (license license:bsd-3)))

haskell-9.4-web-routes-boomerang

(define-public haskell-9.4-web-routes-hsp
  (package
    (name "haskell-9.4-web-routes-hsp")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-hsp)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-web-routes)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/web-routes-hsp")
    (synopsis "Adds XMLGenerator instance for RouteT monad")
    (description
     "The module makes it easy to use type-safe URLs in HSP templates")
    (license license:bsd-3)))

haskell-9.4-web-routes-hsp

(define-public haskell-9.4-web-routes-wai
  (package
    (name "haskell-9.4-web-routes-wai")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-web-routes)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/web-routes-wai")
    (synopsis
     "Library for maintaining correctness of URLs within an application.")
    (description
     "A collection of types and functions that ensure that URLs generated by an application are valid. Need more properties here.")
    (license license:bsd-3)))

haskell-9.4-web-routes-wai

(define-public haskell-9.4-world-peace
  (package
    (name "haskell-9.4-world-peace")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cdepillabout/world-peace")
    (synopsis "Open Union and Open Product Types")
    (description
     "Please see <https://github.com/cdepillabout/world-peace#readme README.md>.")
    (license license:bsd-3)))

haskell-9.4-world-peace

(define-public haskell-9.4-xss-sanitize
  (package
    (name "haskell-9.4-xss-sanitize")
    (version "0.3.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xss-sanitize/xss-sanitize-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lmmyh28mb1k44m63m7qx6iy4x2fgqq5srmky47dsm0fby9iag1h"))))
    (properties `((upstream-name . "xss-sanitize") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-css-text)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-tagsoup)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/yesodweb/haskell-xss-sanitize#readme")
    (synopsis "sanitize untrusted HTML to prevent XSS attacks")
    (description
     "run untrusted HTML through Text.HTML.SanitizeXSS.sanitizeXSS to prevent XSS attacks. see README.md <http://github.com/yesodweb/haskell-xss-sanitize> for more details")
    (license license:bsd-2)))

haskell-9.4-xss-sanitize

