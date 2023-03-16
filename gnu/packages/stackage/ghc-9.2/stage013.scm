;;; generated file
(define-module (gnu packages stackage ghc-9.2 stage013)
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
(define-public haskell-9.2-ad
  (package
    (name "haskell-9.2-ad")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-adjunctions)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-data-reify)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-erf)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-free)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-nats)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-reflection)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.2-ad

(define-public haskell-9.2-aeson
  (package
    (name "haskell-9.2-aeson")
    (version "2.0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/aeson/aeson-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "09dk0j33n262dm75vff3y3i9fm6lh06dyqswwv7a6kvnhhmhlxhr"))))
    (properties `((upstream-name . "aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-cffi" "-fordered-keymap")
       #:cabal-revision
       ("1" "1zrgn63jzrpk3n3vd44zkzgw7kb5qxlvhx4nk6g3sswwrsz5j32i")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-OneTuple)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-base-compat-batteries)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-data-fix)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-semialign)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-strict)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-text-short)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-th-abstraction)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-these)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-time-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-uuid-types)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-witherable)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell/aeson")
    (synopsis "Fast JSON parsing and encoding")
    (description
     "A JSON parsing and encoding library optimized for ease of use
and high performance.

To get started, see the documentation for the @@Data.Aeson@@ module
below.

(A note on naming: in Greek mythology, Aeson was the father of Jason.)")
    (license license:bsd-3)))

haskell-9.2-aeson

(define-public haskell-9.2-algebra
  (package
    (name "haskell-9.2-algebra")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-adjunctions)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-distributive)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-nats)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/algebra/")
    (synopsis "Constructive abstract algebra")
    (description "Constructive abstract algebra")
    (license license:bsd-3)))

haskell-9.2-algebra

(define-public haskell-9.2-apply-refact
  (package
    (name "haskell-9.2-apply-refact")
    (version "0.10.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/apply-refact/apply-refact-"
                    version ".tar.gz"))
              (sha256
               (base32
                "129bf8n66kpwh5420rxprngg43bqr2agyd8q8d7l49k2rxsjl1fb"))))
    (properties `((upstream-name . "apply-refact") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-filemanip)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-ghc-exactprint)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ghc-paths)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-refact)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-silently)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-uniplate)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unix-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mpickering/apply-refact")
    (synopsis "Perform refactorings specified by the refact library.")
    (description
     "Perform refactorings specified by the refact library. It is primarily used with HLint's --refactor flag.")
    (license license:bsd-3)))

haskell-9.2-apply-refact

(define-public haskell-9.2-bech32
  (package
    (name "haskell-9.2-bech32")
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
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-base58-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/input-output-hk/bech32")
    (synopsis
     "Implementation of the Bech32 cryptocurrency address format (BIP 0173).")
    (description
     "Implementation of the Bech32 cryptocurrency address format documented in the
BIP (Bitcoin Improvement Proposal) 0173.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-bech32

(define-public haskell-9.2-blanks
  (package
    (name "haskell-9.2-blanks")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-adjunctions)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-distributive)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ejconlon/blanks#readme")
    (synopsis
     "Fill-in-the-blanks - A library factoring out substitution from ASTs")
    (description
     "Please see the README on GitHub at <https://github.com/ejconlon/blanks#readme>")
    (license license:bsd-3)))

haskell-9.2-blanks

(define-public haskell-9.2-bytestring-lexing
  (package
    (name "haskell-9.2-bytestring-lexing")
    (version "0.5.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bytestring-lexing/bytestring-lexing-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14nx7sfs75g57mlfiwgzm5sc3wm4va58zryjp27m5lmfdp30873c"))))
    (properties `((upstream-name . "bytestring-lexing") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-tasty-smallcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://wrengr.org/software/hackage.html")
    (synopsis
     "Efficiently parse and produce common integral and fractional numbers.")
    (description
     "The bytestring-lexing package offers extremely efficient `ByteString`
parsers for some common lexemes: namely integral and fractional
numbers. In addition, it provides efficient serializers for (some
of) the formats it parses.

As of version 0.3.0, bytestring-lexing offers the best-in-show
parsers for integral values. (According to the Warp web server's
benchmark of parsing the Content-Length field of HTTP headers.) And
as of version 0.5.0 it offers (to my knowledge) the best-in-show
parser for fractional/floating numbers.

Some benchmarks for this package can be found at:
<https://github.com/wrengr/bytestring-lexing/tree/master/bench/html>")
    (license license:bsd-3)))

haskell-9.2-bytestring-lexing

(define-public haskell-9.2-bytestring-trie
  (package
    (name "haskell-9.2-bytestring-trie")
    (version "0.2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bytestring-trie/bytestring-trie-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fyrgnyxvdyj69w4m460a2iyqga9v2c46i3pmnif72r5rl6fc70d"))))
    (properties `((upstream-name . "bytestring-trie") (hidden? . #f)))
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
                     haskell-9.2-smallcheck)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-tasty-smallcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://wrengr.org/software/hackage.html")
    (synopsis "An efficient finite map from bytestrings to values.")
    (description
     "An efficient finite map from bytestrings to values.

The implementation is based on big-endian patricia trees, like
\"Data.IntMap\".  We first trie on the elements of \"Data.ByteString\"
and then trie on the big-endian bit representation of those
elements.  Patricia trees have efficient algorithms for union
and other merging operations, but they're also quick for lookups
and insertions.

If you are only interested in being able to associate strings
to values, then you may prefer the @@hashmap@@ package which is
faster for those only needing a map-like structure.  This package
is intended for those who need the extra capabilities that a
trie-like structure can offer (e.g., structure sharing to reduce
memory costs for highly redundant keys, taking the submap of
all keys with a given prefix, contextual mapping, extracting
the minimum and maximum keys, etc.)")
    (license license:bsd-3)))

haskell-9.2-bytestring-trie

(define-public haskell-9.2-cdar-mBound
  (package
    (name "haskell-9.2-cdar-mBound")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cdar-mBound/cdar-mBound-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1p7ri7vfvj3ym0038aq12szs6jgdkq8a4730i67appv9lmxgycfn"))))
    (properties `((upstream-name . "cdar-mBound") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-smallcheck)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-tasty-smallcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/cdar-mBound")
    (synopsis "Exact real arithmetic using Centred Dyadic Approximations")
    (description
     "Please see https://github.com/michalkonecny/cdar/tree/mBound#readme")
    (license license:bsd-3)))

haskell-9.2-cdar-mBound

(define-public haskell-9.2-cheapskate
  (package
    (name "haskell-9.2-cheapskate")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cheapskate/cheapskate-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17n6laihqrjn62l8qw4565nf77zkvrl68bjmc3vzr4ckqfblhdzd"))))
    (properties `((upstream-name . "cheapskate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dingus")
       #:cabal-revision
       ("1" "15hdlp062gv8x7giwcfbj1kfmhpj1bg7y2w4wr2yl436haxkrbmq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-uniplate)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-xss-sanitize)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/jgm/cheapskate")
    (synopsis "Experimental markdown processor.")
    (description "This is an experimental Markdown processor in pure
Haskell.  It aims to process Markdown efficiently and in
the most forgiving possible way.  It is designed to deal
with any input, including garbage, with linear
performance.  Output is sanitized by default for
protection against XSS attacks.

Several markdown extensions are implemented, including
fenced code blocks, significant list start numbers, and
autolinked URLs.  See README.markdown for details.")
    (license license:bsd-3)))

haskell-9.2-cheapskate

(define-public haskell-9.2-chimera
  (package
    (name "haskell-9.2-chimera")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-adjunctions)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-distributive)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
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

haskell-9.2-chimera

(define-public haskell-9.2-cleff-plugin
  (package
    (name "haskell-9.2-cleff-plugin")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cleff-plugin/cleff-plugin-"
                    version ".tar.gz"))
              (sha256
               (base32
                "092lwskcwhgylzx1a02fjjgd15v0ipvx4mxnmdii2r782v697g37"))))
    (properties `((upstream-name . "cleff-plugin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-cleff)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ghc-tcplugins-extra)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/re-xyr/cleff#readme")
    (synopsis "Automatic disambiguation for extensible effects")
    (description
     "Please see the README on GitHub at <https://github.com/re-xyr/cleff/tree/master/cleff-plugin#readme>")
    (license license:bsd-3)))

haskell-9.2-cleff-plugin

(define-public haskell-9.2-commonmark-extensions
  (package
    (name "haskell-9.2-commonmark-extensions")
    (version "0.2.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/commonmark-extensions/commonmark-extensions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "009yrsb2xxna73q6nnijfx5ngffaz369mildvqvn91qbrkrzq7pl"))))
    (properties `((upstream-name . "commonmark-extensions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-commonmark)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-emojis)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jgm/commonmark-hs")
    (synopsis "Pure Haskell commonmark parser.")
    (description
     "This library provides some useful extensions to core commonmark
syntax: smart quotes, definition lists, tables, footnotes, math,
and more.")
    (license license:bsd-3)))

haskell-9.2-commonmark-extensions

(define-public haskell-9.2-conduit
  (package
    (name "haskell-9.2-conduit")
    (version "1.3.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/conduit/conduit-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0zchhxcpciq4nr7ll4z4c7wshlngphr0dz0y3xfml1pfls3a18mc"))))
    (properties `((upstream-name . "conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0fsvnlx8gd9d8f70f6gl68ljhmff790anrifrixcflz0j2kfxwjh")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-mono-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/snoyberg/conduit")
    (synopsis "Streaming data processing library.")
    (description
     "`conduit` is a solution to the streaming data problem, allowing for production,
transformation, and consumption of streams of data in constant memory. It is an
alternative to lazy I\\/O which guarantees deterministic resource handling.

For more information about conduit in general, and how this package in
particular fits into the ecosystem, see [the conduit
homepage](https://github.com/snoyberg/conduit#readme).

Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/conduit>.")
    (license license:expat)))

haskell-9.2-conduit

(define-public haskell-9.2-connection
  (package
    (name "haskell-9.2-connection")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-basement)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-socks)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-tls)
                  (@ (gnu packages stackage ghc-9.2 stage009) haskell-9.2-x509)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-x509-store)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-x509-system)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/vincenthz/hs-connection")
    (synopsis "Simple and easy network connections API")
    (description "Simple network library for all your connection need.

Features: Really simple to use, SSL/TLS, SOCKS.

This library provides a very simple api to create sockets
to a destination with the choice of SSL/TLS, and SOCKS.")
    (license license:bsd-3)))

haskell-9.2-connection

(define-public haskell-9.2-cubicbezier
  (package
    (name "haskell-9.2-cubicbezier")
    (version "0.6.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cubicbezier/cubicbezier-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s7s1ak0x89jy3q4yxrcvjzsq9w4yh23ycjcja6i7klj5gggqwss"))))
    (properties `((upstream-name . "cubicbezier") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")
       #:cabal-revision
       ("1" "084inqa0mpm6m958fmjwsnn2fn46mcdpfin482mzs5fk6c9fwywl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-fast-math)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-integration)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-matrices)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-microlens-mtl)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-microlens-th)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-vector-space)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/cubicbezier")
    (synopsis "Efficient manipulating of 2D cubic bezier curves.")
    (description
     "This library supports efficient manipulating of 2D cubic bezier curves, for use in graphics or typography.  Supported features are:

Evaluating bezier curves and derivatives, affine transformations on bezier curves, arclength and inverse arclength, intersections between two curves, intersection between a curve and a line, curvature and radius of curvature, finding tangents parallel to a vector, finding inflection points and cusps.

It also supports polynomial root finding with Bernstein polynomials.

The module \"Geom2D.CubicBezier\" exports all the cubic bezier functions.  The module \"Geom2D\"
contains general 2D geometry functions and transformations.")
    (license license:bsd-3)))

haskell-9.2-cubicbezier

(define-public haskell-9.2-cursor-fuzzy-time
  (package
    (name "haskell-9.2-cursor-fuzzy-time")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cursor-fuzzy-time/cursor-fuzzy-time-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xx0npvjjr574f7ksswwzi8yrqsrhlg3arhpvahm8z2zz6a995gs"))))
    (properties `((upstream-name . "cursor-fuzzy-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-cursor)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-fuzzy-time)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-validity-time)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/fuzzy-time")
    (synopsis "")
    (description "Cursors for the fuzzy-time parser and resolver")
    (license license:expat)))

haskell-9.2-cursor-fuzzy-time

(define-public haskell-9.2-data-serializer
  (package
    (name "haskell-9.2-data-serializer")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-serializer/data-serializer-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hzxdz8kr094qdx1rq5ma671r7pfykfnmi42cq07g33wxzgbz85l"))))
    (properties `((upstream-name . "data-serializer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-endian)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-parsers)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mvv/data-serializer")
    (synopsis "Common API for serialization libraries")
    (description
     "This package provides a common API for serialization libraries like
<http://hackage.haskell.org/package/binary binary> and
<http://hackage.haskell.org/package/cereal cereal>.")
    (license license:bsd-3)))

haskell-9.2-data-serializer

(define-public haskell-9.2-data-textual
  (package
    (name "haskell-9.2-data-textual")
    (version "0.3.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-textual/data-textual-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16pcfpr5y66q6cga1hs5ggqg03qqcymgjyrhv4yj091zs36fi7jb"))))
    (properties `((upstream-name . "data-textual") (hidden? . #f)))
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
                     haskell-9.2-parsers)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-text-latin1)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-text-printer)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-type-hint)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mvv/data-textual")
    (synopsis "Human-friendly textual representations.")
    (description
     "This package provides an interface for converting between data and its
(human-friendly) textual representation.")
    (license license:bsd-3)))

haskell-9.2-data-textual

(define-public haskell-9.2-dawg-ord
  (package
    (name "haskell-9.2-dawg-ord")
    (version "0.5.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dawg-ord/dawg-ord-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1wsxlzljxydcvilkdf8xj21sac0y2ph18vmbznd7psvbwk2q45kf"))))
    (properties `((upstream-name . "dawg-ord") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-smallcheck)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/kawu/dawg-ord")
    (synopsis "Directed acyclic word graphs")
    (description
     "The library implements /directed acyclic word graphs/ (DAWGs) internally
represented as /minimal acyclic deterministic finite-state automata/.
The implemented version of DAWG can be seen as a map from
sequences of alphabet symbols (keys) to values.

The library allows to build DAWGs over any symbols and values
provided that they both have `Ord` instances (see the
\"Data.DAWG.Ord\" module).
It also provides a fast insert operation which can be used to
construct DAWGs on-the-fly.")
    (license license:bsd-3)))

haskell-9.2-dawg-ord

(define-public haskell-9.2-di-df1
  (package
    (name "haskell-9.2-di-df1")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/di-df1/di-df1-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0mlx74605k33ibkqdbr7iyb32alansb41g9w0wjagyw45fvczda2"))))
    (properties `((upstream-name . "di-df1") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-df1)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-di-core)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-di-handle)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-di-monad)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0001/di")
    (synopsis "Write logs in the df1 format using the di logging framework")
    (description
     "Write logs in the df1 format using the di logging framework.")
    (license license:bsd-3)))

haskell-9.2-di-df1

(define-public haskell-9.2-either-both
  (package
    (name "haskell-9.2-either-both")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-smallcheck)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-tasty-smallcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/either-both")
    (synopsis "Either or both")
    (description "")
    (license license:bsd-3)))

haskell-9.2-either-both

(define-public haskell-9.2-equational-reasoning
  (package
    (name "haskell-9.2-equational-reasoning")
    (version "0.7.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/equational-reasoning/equational-reasoning-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xp5vmz19idc29xidr7q65hsnhfnl3ca80hxxfllsqpyyh32qlhn"))))
    (properties `((upstream-name . "equational-reasoning") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0gi4whsdzlkpmqjpvlzv29jhxmia8xx1ni17ay9nw41lw4q5zg8v")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-th-desugar)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-void)))
    (home-page "https://hackage.haskell.org/package/equational-reasoning")
    (synopsis "Proof assistant for Haskell using DataKinds & PolyKinds")
    (description
     "A simple convenient library to write equational / preorder proof as in Agda.
Since 0.6.0.0, this no longer depends on @@singletons@@ package, and the @@Proof.Induction@@ module goes to @@equational-reasoning-induction@@ package.")
    (license license:bsd-3)))

haskell-9.2-equational-reasoning

(define-public haskell-9.2-exp-pairs
  (package
    (name "haskell-9.2-exp-pairs")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-matrix)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-smallcheck)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-tasty-smallcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/exp-pairs")
    (synopsis "Linear programming over exponent pairs")
    (description
     "Package implements an algorithm to minimize rational objective function over the set of exponent pairs")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-exp-pairs

(define-public haskell-9.2-explainable-predicates
  (package
    (name "haskell-9.2-explainable-predicates")
    (version "0.1.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/explainable-predicates/explainable-predicates-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ch86wb7bz9ydvrbdd2arskaj5pdc2x9vby4pbvnwv1r4d8n40la"))))
    (properties `((upstream-name . "explainable-predicates") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fregex" "-fcontainers" "-fquickcheck" "-fhunit" "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-doctest-exitcode-stdio)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-doctest-lib)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-mono-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cdsmith/explainable-predicates")
    (synopsis "Predicates that can explain themselves.")
    (description "Explainable predicates are essentially functions from types
to 'Bool' which can additionally describe themselves and
explain why an argument does or doesn't match.  They are
intended to be used during unit tests to provide better
error messages when tests fail.  For example, if a
collection is missing an element, an explainable predicate
can tell you which element is missing.")
    (license license:bsd-3)))

haskell-9.2-explainable-predicates

(define-public haskell-9.2-freer-simple
  (package
    (name "haskell-9.2-freer-simple")
    (version "1.2.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/freer-simple/freer-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11ypffdkpaxc03hlik6ymilhnk41fy7m92zzwqjma97g614vn0lw"))))
    (properties `((upstream-name . "freer-simple") (hidden? . #f)))
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
                     haskell-9.2-natural-transformation)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/lexi-lambda/freer-simple")
    (synopsis "A friendly effect system for Haskell.")
    (description
     "An implementation of an effect system for Haskell (a fork of
<http://hackage.haskell.org/package/freer-effects freer-effects>), which is
based on the work of Oleg Kiselyov et al.:

* <http://okmij.org/ftp/Haskell/extensible/more.pdf Freer Monads, More Extensible Effects>
* <http://okmij.org/ftp/Haskell/zseq.pdf Reflection without Remorse>
* <http://okmij.org/ftp/Haskell/extensible/exteff.pdf Extensible Effects>

The key features are:

* An efficient effect system for Haskell - as a library!
* Reimplementations of several common Haskell monad transformers as effects.
* Core components for defining your own Effects.")
    (license license:bsd-3)))

haskell-9.2-freer-simple

(define-public haskell-9.2-fuzzy
  (package
    (name "haskell-9.2-fuzzy")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fuzzy/fuzzy-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "16pl4ba9f3wlx69pg8va1c2qg4zb9c0w50d7f6d84x9b5ysaza5w"))))
    (properties `((upstream-name . "fuzzy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-monoid-subclasses)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/joom/fuzzy")
    (synopsis "Filters a list based on a fuzzy string search.")
    (description "")
    (license license:expat)))

haskell-9.2-fuzzy

(define-public haskell-9.2-genvalidity-hspec
  (package
    (name "haskell-9.2-genvalidity-hspec")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec/genvalidity-hspec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00sv0mzlvny5ch7c9fnd19szqd0pjrkvi080x1i62qa5fdzs5yc4"))))
    (properties `((upstream-name . "genvalidity-hspec") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-genvalidity-property)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hspec-core)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Standard spec's for GenValidity instances")
    (description
     "Note: There are companion packages for this library:

* <https://hackage.haskell.org/package/genvalidity-hspec-aeson genvalidity-hspec-aeson>

* <https://hackage.haskell.org/package/genvalidity-hspec-binary genvalidity-hspec-binary>

* <https://hackage.haskell.org/package/genvalidity-hspec-cereal genvalidity-hspec-cereal>

* <https://hackage.haskell.org/package/genvalidity-hspec-hashable genvalidity-hspec-hashable>")
    (license license:expat)))

haskell-9.2-genvalidity-hspec

(define-public haskell-9.2-gloss-examples
  (package
    (name "haskell-9.2-gloss-examples")
    (version "1.13.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gloss-examples/gloss-examples-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jbll6dch864fba7x49iw7m5f4qhdff4wdpr8i38qwikbf7bmaf1"))))
    (properties `((upstream-name . "gloss-examples") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-llvm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-bmp)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-gloss)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-gloss-algorithms)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-gloss-raster)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-repa)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-repa-algorithms)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-repa-io)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "http://gloss.ouroborus.net")
    (synopsis "Examples using the gloss library")
    (description
     "Examples using the gloss graphics library.
A mixed bag of fractals, particle simulations and cellular automata.")
    (license license:expat)))

haskell-9.2-gloss-examples

(define-public haskell-9.2-gravatar
  (package
    (name "haskell-9.2-gravatar")
    (version "0.8.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gravatar/gravatar-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ijcv15kihy6125fm2kyxi997fxii3hvr62lx25nri5aa0qy6vkw"))))
    (properties `((upstream-name . "gravatar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Glob)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-HTTP)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-pureMD5)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/pbrisbin/gravatar#readme")
    (synopsis "Generate Gravatar image URLs")
    (description "Generate Gravatar image URLs")
    (license license:expat)))

haskell-9.2-gravatar

(define-public haskell-9.2-gridtables
  (package
    (name "haskell-9.2-gridtables")
    (version "0.0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gridtables/gridtables-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1akix9flnax6dx3s9c7yyzb19nw13y8rmh0kz7y3hpjlkaz659xy"))))
    (properties `((upstream-name . "gridtables") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0m2651z81n8s6hb8id7y6k2kprsgwnj7pcd6p8lmdpkzzz3wwd0c")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-doclayout)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/tarleb/gridtables")
    (synopsis "Parser for reStructuredText-style grid tables.")
    (description "Provides a parser for plain-text representations of
tables. This package supports table headers, cells
spanning multiple columns or rows, as well as a way
to specfiy column alignments.")
    (license license:expat)))

haskell-9.2-gridtables

(define-public haskell-9.2-gtk
  (package
    (name "haskell-9.2-gtk")
    (version "0.15.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gtk/gtk-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "063gfqpz8l4g2d1dy2iabdh2z350z82krgav9rypwi1vws92z9pn"))))
    (properties `((upstream-name . "gtk") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fdeprecated" "-fhave-gio" "-f-have-quartz-gtk" "-ffmode-binary")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages glib) glib-with-documentation)
                  (@ (gnu packages gtk) gtk+-2)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-cairo)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-gio)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-glib)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-gtk2hs-buildtools)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-pango)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://projects.haskell.org/gtk2hs/")
    (synopsis "Binding to the Gtk+ graphical user interface library.")
    (description
     "This is the core library of the Gtk2Hs suite of libraries for Haskell
based on Gtk+. Gtk+ is an extensive and mature multi-platform toolkit
for creating graphical user interfaces.")
    (license (license "FSDG-compatible" "LGPL_2_1_only" ""))))

haskell-9.2-gtk

(define-public haskell-9.2-gtk3
  (package
    (name "haskell-9.2-gtk3")
    (version "0.15.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gtk3/gtk3-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0f8gpmm52hzy8zszy2qdd3a30ssr6zdv4r09vqdkq8p5yrc419j4"))))
    (properties `((upstream-name . "gtk3") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags
       (list "-fhave-gio" "-f-build-demos" "-ffmode-binary")))
    (inputs (list (@ (gnu packages glib) glib-with-documentation)
                  (@ (gnu packages gtk) gtk+)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-cairo)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-gio)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-glib)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-gtk2hs-buildtools)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-pango)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://projects.haskell.org/gtk2hs/")
    (synopsis "Binding to the Gtk+ 3 graphical user interface library")
    (description
     "This is the core library of the Gtk2Hs suite of libraries for Haskell
based on Gtk+. Gtk+ is an extensive and mature multi-platform toolkit
for creating graphical user interfaces.")
    (license (license "FSDG-compatible" "LGPL_2_1_only" ""))))

haskell-9.2-gtk3

(define-public haskell-9.2-hall-symbols
  (package
    (name "haskell-9.2-hall-symbols")
    (version "0.1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hall-symbols/hall-symbols-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gf0whwmwlrnir01zi5v6bsp0864nh0qjvy59hql27hv12yypdwa"))))
    (properties `((upstream-name . "hall-symbols") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-matrix)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-matrix-as-xyz)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/narumij/hall-symbols#readme")
    (synopsis "Symmetry operations generater of Hall Symbols")
    (description
     "Please see the README on GitHub at <https://github.com/narumij/hall-symbols#readme>")
    (license license:bsd-3)))

haskell-9.2-hall-symbols

(define-public haskell-9.2-happstack-server-tls
  (package
    (name "haskell-9.2-happstack-server-tls")
    (version "7.2.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/happstack-server-tls/happstack-server-tls-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11prqx74dkv38dyg1yh419ckbi5hbyv6ncm9y9inqnabl84qyam1"))))
    (properties `((upstream-name . "happstack-server-tls") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-HsOpenSSL)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-extensible-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-happstack-server)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hslogger)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-sendfile)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.happstack.com/")
    (synopsis "extend happstack-server with https:// support (TLS/SSL)")
    (description
     "Allows you to use https:// without relying on apache, nginx, etc")
    (license license:bsd-3)))

haskell-9.2-happstack-server-tls

(define-public haskell-9.2-haskell-src-exts
  (package
    (name "haskell-9.2-haskell-src-exts")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-happy)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-pretty-show)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-smallcheck)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-tasty-smallcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.2-haskell-src-exts

(define-public haskell-9.2-hi-file-parser
  (package
    (name "haskell-9.2-hi-file-parser")
    (version "0.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hi-file-parser/hi-file-parser-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04rrdyga6abml3d3bn1amd955g9k0jj4pczh659bimw8hwccp2pw"))))
    (properties `((upstream-name . "hi-file-parser") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-rio)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/commercialhaskell/hi-file-parser#readme")
    (synopsis "Parser for GHC's hi files")
    (description
     "Please see the README on Github at <https://github.com/commercialhaskell/hi-file-parser/blob/master/README.md>")
    (license license:bsd-3)))

haskell-9.2-hi-file-parser

(define-public haskell-9.2-http-api-data
  (package
    (name "haskell-9.2-http-api-data")
    (version "0.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-api-data/http-api-data-"
                    version ".tar.gz"))
              (sha256
               (base32
                "171bw2a44pg50d3y77gw2y9vmx72laky7hnn5hw6r93pnjmlf9yz"))))
    (properties `((upstream-name . "http-api-data") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-use-text-show")
       #:cabal-revision
       ("6" "0q4rhz81r5v0z1mn7x9q0ldbfv1a2cp3dpw8s2j96halsq34l4zl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-attoparsec-iso8601)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-cookie)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-time-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-uuid-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/fizruk/http-api-data")
    (synopsis
     "Converting to/from HTTP API data like URL pieces, headers and query parameters.")
    (description
     "This package defines typeclasses used for converting Haskell data types to and from HTTP API data.

Please see README.md")
    (license license:bsd-3)))

haskell-9.2-http-api-data

(define-public haskell-9.2-http-client
  (package
    (name "haskell-9.2-http-client")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-cookie)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-iproute)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-mime-types)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-streaming-commons)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/http-client")
    (synopsis "An HTTP client engine")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/http-client>.")
    (license license:expat)))

haskell-9.2-http-client

(define-public haskell-9.2-http-io-streams
  (package
    (name "haskell-9.2-http-io-streams")
    (version "0.1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-io-streams/http-io-streams-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09ggsf9g8gf28d3d5z0rcdnl63d34al35z5d6v68k0n7r229ffb1"))))
    (properties `((upstream-name . "http-io-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbrotli" "-ffast-xor")
       #:cabal-revision
       ("1" "0v2xp9fhrw77vh4vz5qk9lip5mhbf9lz5nkdrfcvrilfjgg4s17b")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-HsOpenSSL)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-brotli-streams)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cryptohash-sha1)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-io-streams)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-openssl-streams)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-xor)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/http-io-streams")
    (synopsis "HTTP and WebSocket client based on io-streams")
    (description
     "An HTTP client with WebSocket (RFC 6455) support, using the Snap Framework's [io-streams](https://hackage.haskell.org/package/io-streams) library to
handle the streaming IO. The @@http-io-streams@@ API designed for ease of use when querying web services and dealing with the result as streaming I/O.

The main HTTP/1.1 part of the library is exported in a single module \"Network.Http.Client\"; the WebSocket specific functionality is available from the \"Network.Http.Client.WebSocket\" module.

__NOTE__: This package originally started as a fork of [http-streams](http://hackage.haskell.org/package/http-streams) with a lighter dependency footprint focusing on core HTTP functionality.")
    (license license:bsd-3)))

haskell-9.2-http-io-streams

(define-public haskell-9.2-hxt-css
  (package
    (name "haskell-9.2-hxt-css")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hxt-css/hxt-css-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1dv5xy0rhcs08zyfnmf752h026r2kfg9905d482xy8srblagqi02"))))
    (properties `((upstream-name . "hxt-css") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-hxt)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/redneb/hxt-css")
    (synopsis "CSS selectors for HXT")
    (description
     "This package makes it possible to easily traverse (X)HTML/XML documents
using CSS selectors. It supports all CSS level 3 selectors except the
ones that do not make sense outside a web browser (e.g. such as @@:hover@@
or @@::first-letter@@). Also, there is no support for namespaced selectors.")
    (license license:bsd-3)))

haskell-9.2-hxt-css

(define-public haskell-9.2-hxt-curl
  (package
    (name "haskell-9.2-hxt-curl")
    (version "9.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hxt-curl/hxt-curl-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1sn5ngzz5qszdb3anbpqbjdijz29gmrwjrg9vsmrqsdqz65wrhfd"))))
    (properties `((upstream-name . "hxt-curl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-curl)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-hxt)))
    (propagated-inputs (list (@ (gnu packages curl) curl)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/UweSchmidt/hxt")
    (synopsis "LibCurl interface for HXT")
    (description "LibCurl interface for HXT")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-hxt-curl

(define-public haskell-9.2-hxt-expat
  (package
    (name "haskell-9.2-hxt-expat")
    (version "9.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hxt-expat/hxt-expat-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1mi2f2i31nqjqzwl82iypm1qngrpxp7lz506pjgqfbn840yc9n8h"))))
    (properties `((upstream-name . "hxt-expat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-hexpat)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-hxt)))
    (propagated-inputs (list (@ (gnu packages xml) expat)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://www.fh-wedel.de/~si/HXmlToolbox/index.html")
    (synopsis "Expat parser for HXT")
    (description "The Expat interface for the HXT.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-hxt-expat

(define-public haskell-9.2-hxt-http
  (package
    (name "haskell-9.2-hxt-http")
    (version "9.1.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hxt-http/hxt-http-" version
                    ".tar.gz"))
              (sha256
               (base32
                "02yxvzczv89j518b94wh8m4dsmnymzxgv9158m7w6lqxk41rv8bg"))))
    (properties `((upstream-name . "hxt-http") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-HTTP)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-hxt)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/UweSchmidt/hxt")
    (synopsis "Interface to native Haskell HTTP package HTTP")
    (description
     "Interface to native Haskell HTTP package HTTP.
This package can be used as alternative for the hxt-curl package
for accessing documents via HTTP.

Changes from 9.1.3: Works with ghc-7.10

Changes to 9.1.3: New warnings from ghc-7.4 removed")
    (license license:expat)))

haskell-9.2-hxt-http

(define-public haskell-9.2-hxt-tagsoup
  (package
    (name "haskell-9.2-hxt-tagsoup")
    (version "9.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hxt-tagsoup/hxt-tagsoup-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10xj8jqxazfxzazc1ln9w2blp67rafbwdi87ba7arw5ccc6jjyyp"))))
    (properties `((upstream-name . "hxt-tagsoup") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-hxt)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hxt-charproperties)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-hxt-unicode)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-tagsoup)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/UweSchmidt/hxt")
    (synopsis "TagSoup parser for HXT")
    (description "The Tagsoup interface for the HXT lazy HTML parser.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-hxt-tagsoup

(define-public haskell-9.2-inline-c
  (package
    (name "haskell-9.2-inline-c")
    (version "0.9.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/inline-c/inline-c-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06az494fp2nh6fnibq28yw8jsrpj4jq1swyx53a328qv04cbhrym"))))
    (properties `((upstream-name . "inline-c") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-gsl-example")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-parsers)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-posix)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/inline-c")
    (synopsis
     "Write Haskell source files including C code inline. No FFI required.")
    (description
     "See <https://github.com/fpco/inline-c/blob/master/README.md>.")
    (license license:expat)))

haskell-9.2-inline-c

(define-public haskell-9.2-input-parsers
  (package
    (name "haskell-9.2-input-parsers")
    (version "0.2.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/input-parsers/input-parsers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0y643507p9grj8gkq722p4b9gbrkg8xyh6pi19qvrbmmadpn1r89"))))
    (properties `((upstream-name . "input-parsers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbinary" "-fparsec" "-fattoparsec")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-monoid-subclasses)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-parsers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/input-parsers")
    (synopsis
     "Extension of the parsers library with more capability and efficiency")
    (description
     "Extended version of the parsers library, with the additional classes providing more
capable and efficient methods.")
    (license license:bsd-3)))

haskell-9.2-input-parsers

(define-public haskell-9.2-integer-roots
  (package
    (name "haskell-9.2-integer-roots")
    (version "1.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/integer-roots/integer-roots-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15sn3jgm8axm8f9z02aj3xdf318qwwc5qfc8b4r0n7hfr1jgrqs5"))))
    (properties `((upstream-name . "integer-roots") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-smallcheck)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-tasty-smallcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/integer-roots")
    (synopsis "Integer roots and perfect powers")
    (description
     "Calculating integer roots and testing perfect powers of arbitrary precision. Originally part of <https://hackage.haskell.org/package/arithmoi arithmoi> package.")
    (license license:expat)))

haskell-9.2-integer-roots

(define-public haskell-9.2-kan-extensions
  (package
    (name "haskell-9.2-kan-extensions")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-adjunctions)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-contravariant)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-distributive)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-free)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-invariant)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/kan-extensions/")
    (synopsis
     "Kan extensions, Kan lifts, the Yoneda lemma, and (co)density (co)monads")
    (description
     "Kan extensions, Kan lifts, various forms of the Yoneda lemma, and (co)density (co)monads.")
    (license license:bsd-3)))

haskell-9.2-kan-extensions

(define-public haskell-9.2-mixed-types-num
  (package
    (name "haskell-9.2-mixed-types-num")
    (version "0.5.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mixed-types-num/mixed-types-num-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15r1lj39fkddlqfda41cp76xr8ck4fkannszxi32j7a8lkjr2f21"))))
    (properties `((upstream-name . "mixed-types-num") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-collect-errors)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-hspec-smallcheck)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-smallcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/michalkonecny/mixed-types-num#readme")
    (synopsis
     "Alternative Prelude with numeric and logic expressions typed bottom-up")
    (description
     "Please see the README on GitHub at <https://github.com/michalkonecny/mixed-types-num#readme>")
    (license license:bsd-3)))

haskell-9.2-mixed-types-num

(define-public haskell-9.2-mutable-containers
  (package
    (name "haskell-9.2-mutable-containers")
    (version "0.3.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mutable-containers/mutable-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1krndid8s8x0gklrzjaqfas1gl31qbhizpnidfa0ibclkk39whkr"))))
    (properties `((upstream-name . "mutable-containers") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-mono-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis "Abstactions and concrete implementations of mutable containers")
    (description
     "See docs and README at <http://www.stackage.org/package/mutable-containers>")
    (license license:expat)))

haskell-9.2-mutable-containers

(define-public haskell-9.2-numhask-array
  (package
    (name "haskell-9.2-numhask-array")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-adjunctions)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-distributive)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-numhask)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.2-numhask-array

(define-public haskell-9.2-numhask-space
  (package
    (name "haskell-9.2-numhask-space")
    (version "0.10.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/numhask-space/numhask-space-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09x53pmn2skbv1zhjmd4wq5wxhi7sshzg3ksjx1n0fy0x16d19lf"))))
    (properties `((upstream-name . "numhask-space") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-adjunctions)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-distributive)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-numhask)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-tdigest)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/tonyday567/numhask-space#readme")
    (synopsis "Numerical spaces.")
    (description
     "@@numhask-space@@ provides support for spaces where [space](https://en.wikipedia.org/wiki/Space_(mathematics\\)) is defined as a set of numbers with a lower and upper bound.

== Usage

>>> @{-# LANGUAGE RebindableSyntax #-@}
>>> import NumHask.Prelude
>>> import NumHask.Space
")
    (license license:bsd-3)))

haskell-9.2-numhask-space

(define-public haskell-9.2-optparse-enum
  (package
    (name "haskell-9.2-optparse-enum")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/optparse-enum/optparse-enum-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0d3wpfss1nm42hjn8l7x34ksa7yx5ccc4iglbfvln0rkbqdsjh13"))))
    (properties `((upstream-name . "optparse-enum") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-enum-text)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-fmt)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cdornan/optparse-enum#readme")
    (synopsis "An enum-text based toolkit for optparse-applicative")
    (description
     "Please see the README on GitHub at <https://github.com/cdornan/optparse-enum#readme>")
    (license license:bsd-3)))

haskell-9.2-optparse-enum

(define-public haskell-9.2-parser-combinators-tests
  (package
    (name "haskell-9.2-parser-combinators-tests")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-megaparsec-tests)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-parser-combinators)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mrkkrp/parser-combinators")
    (synopsis "Test suite of parser-combinators")
    (description "Test suite of parser-combinators.")
    (license license:bsd-3)))

haskell-9.2-parser-combinators-tests

(define-public haskell-9.2-password
  (package
    (name "haskell-9.2-password")
    (version "3.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/password/password-" version
                    ".tar.gz"))
              (sha256
               (base32
                "092cryk5xsmq86l9i7yyjxrq83mi9q61grwdkw2n8c1dxijbdi8l"))))
    (properties `((upstream-name . "password") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-base64)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-password-types)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-scrypt)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/cdepillabout/password/tree/master/password#readme")
    (synopsis "Hashing and checking of passwords")
    (description
     "A library providing functionality for working with plain-text and hashed passwords
with different types of algorithms.

== API

Every supported hashing algorithm has its own module (e.g. \"Data.Password.Bcrypt\")
which exports its own @@hashPassword@@ and @@checkPassword@@ functions, as well as all the
types and functions in this module. If you are not sure about the specifics of an
algorithm you want to use, you can rest assured that by using the @@hashPassword@@ function
of the respective algorithm you are not making any big mistakes, security-wise.

Of course, if you know what you're doing and you want more fine-grained control
over the hashing function, you can adjust it using the @@hashPasswordWithParams@@
function of the respective algorithm.

== Algorithms

Generally, the most \"secure\" algorithm is believed to be @@Argon2@@, then @@scrypt@@,
then @@bcrypt@@, and lastly @@PBKDF2@@.
@@bcrypt@@ and @@PBKDF2@@ are the most established algorithms, so they have been tried and
tested, though they both lack a memory cost, and therefore have a greater vulnerability
to specialized hardware attacks.

When choosing an algorithm, and you have no idea which to pick, just go for @@bcrypt@@ if
your password does not need the highest security possible.
It's still a fine way for hashing passwords, and the cost is easily adjustable if needed.
If your needs do require stronger protection, you should find someone who can advise you
on this topic. (And if you're already knowledgeable enough, you know what to do)")
    (license license:bsd-3)))

haskell-9.2-password

(define-public haskell-9.2-pcre-heavy
  (package
    (name "haskell-9.2-pcre-heavy")
    (version "1.0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pcre-heavy/pcre-heavy-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03wqr7q242j23g910l0qgagqyy8fi3b5gv7xsaym7m41zki1bw9y"))))
    (properties `((upstream-name . "pcre-heavy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0wa517agsib2q658bfsb9fdm12yz3pqzj204v9jf9rz4fm4y8q81")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-pcre-light)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-string-conversions)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://codeberg.org/valpackett/pcre-heavy")
    (synopsis
     "A regexp (regex) library on top of pcre-light you can actually use.")
    (description
     "A PCRE-based regular expressions library with support for multiple matches and replacements.
Based on <https://hackage.haskell.org/package/pcre-light pcre-light>.
Takes and returns <https://hackage.haskell.org/package/string-conversions convertible strings> everywhere.
Includes a QuasiQuoter for regexps that does compile time checking.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.2-pcre-heavy

(define-public haskell-9.2-pdf-toolbox-content
  (package
    (name "haskell-9.2-pdf-toolbox-content")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pdf-toolbox-content/pdf-toolbox-content-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bdcakhmazxim5npqkb13lh0b65p1xqv2a05c61zv0g64n1d6k5f"))))
    (properties `((upstream-name . "pdf-toolbox-content") (hidden? . #f)))
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
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-io-streams)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-pdf-toolbox-core)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/Yuras/pdf-toolbox")
    (synopsis "A collection of tools for processing PDF files")
    (description "Tools for processing PDF content streams")
    (license license:bsd-3)))

haskell-9.2-pdf-toolbox-content

(define-public haskell-9.2-pg-harness-client
  (package
    (name "haskell-9.2-pg-harness-client")
    (version "0.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pg-harness-client/pg-harness-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06gqra5q20sc13slh5vz95bi1vq0ai43qfh7npcyv258zwv40qnh"))))
    (properties `((upstream-name . "pg-harness-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-HTTP)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/BardurArantsson/pg-harness")
    (synopsis "Client library for pg-harness-server")
    (description
     "Client library for <https://hackage.haskell.org/package/pg-harness-server pg-harness-server>
for conveniently creating temporary PostgreSQL databases for use in tests.")
    (license license:bsd-2)))

haskell-9.2-pg-harness-client

(define-public haskell-9.2-pipes-bytestring
  (package
    (name "haskell-9.2-pipes-bytestring")
    (version "2.1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-bytestring/pipes-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ch7145pv4f56601ysdj5gqqwsh5ag2zh34ydswg62fqi8z8cxvc"))))
    (properties `((upstream-name . "pipes-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "09f3cavs592wwasiqr1sj09a1lkvksskv8cs0zhxj8nbf3jk3gqw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-pipes)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-pipes-group)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-pipes-parse)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-stringsearch)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/pipes-bytestring")
    (synopsis "ByteString support for pipes")
    (description
     "This library provides @@pipes@@ utilities for @@ByteString@@s")
    (license license:bsd-3)))

haskell-9.2-pipes-bytestring

(define-public haskell-9.2-plot
  (package
    (name "haskell-9.2-plot")
    (version "0.2.3.11")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/plot/plot-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0img30argzgxcgwam3iqc3xasgizbbcrghd2vkmqahmv7g3l36di"))))
    (properties `((upstream-name . "plot") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-cairo)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-colour)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-hmatrix)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-pango)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/amcphail/plot")
    (synopsis
     "A plotting library, exportable as eps/pdf/svg/png or renderable with gtk")
    (description
     "A package for creating plots, built on top of the Cairo rendering engine.

An ambitious attempt to replace gnuplot.

Monadic actions are used to configure a figure, which is a (rxc) array of subplots.
Each plot displays a graph with optional heading, labels, legend, and annotations.
The annotations themselves may be used to draw diagrams.

A figure is preprocessed in preparation for rendering by the Cairo renderer.
The Cairo library can be used to output the figure to PS, PDF, SVG, and PNG file formats,
or to display the figure in a GTK Drawable context.  (see package 'plot-gtk').

The preprocessed figure can be embedded as an arbitrary Cairo render, including in a diagram
created with the diagram package.  Conversely, arbitrary Cairo renders can be embedded in
the data region of a 'Figure'.

The data series are type \"Data.Packed.Vector\" from hmatrix, which, when hmatrix
is compiled with '-fvector', is a synonym for \"Data.Vector.Storable\" from the
vector package and are thus compatible with packages such as statistics.

The example in Graphics.Rendering.Plot can be viewed at
<http://code.haskell.org/plot/examples/perturbed-sine.png>

")
    (license license:bsd-3)))

haskell-9.2-plot

(define-public haskell-9.2-ral
  (package
    (name "haskell-9.2-ral")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-adjunctions)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-bin)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-boring)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-distributive)
                  (@ (gnu packages stackage ghc-9.2 stage009) haskell-9.2-fin)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.2-ral

(define-public haskell-9.2-reform-happstack
  (package
    (name "haskell-9.2-reform-happstack")
    (version "0.2.5.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/reform-happstack/reform-happstack-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0knsx790vf5xvnxhfdz48gz3352z98ghy1ld7yh3rmp1apciqd35"))))
    (properties `((upstream-name . "reform-happstack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-happstack-server)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-reform)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.happstack.com/")
    (synopsis "Happstack support for reform.")
    (description
     "Reform is a library for building and validating forms using applicative functors. This package add support for using reform with Happstack.")
    (license license:bsd-3)))

haskell-9.2-reform-happstack

(define-public haskell-9.2-regex-applicative
  (package
    (name "haskell-9.2-regex-applicative")
    (version "0.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-applicative/regex-applicative-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0di66pi2kq5rrsn0k6pwakzwa0bgi9jfb2csm72kp5gzqdws8s8p"))))
    (properties `((upstream-name . "regex-applicative") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-filtrable)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-smallcheck)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-tasty-smallcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/feuerbach/regex-applicative")
    (synopsis "Regex-based parsing with applicative interface")
    (description
     "regex-applicative is a Haskell library for parsing using regular expressions.
Parsers can be built using Applicative interface.")
    (license license:expat)))

haskell-9.2-regex-applicative

(define-public haskell-9.2-reorder-expression
  (package
    (name "haskell-9.2-reorder-expression")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/reorder-expression/reorder-expression-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01d83j3mq2gz6maqbkzpjrz6ppyhsqrj4rj72xw49fkl2w34pa9f"))))
    (properties `((upstream-name . "reorder-expression") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-optics)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/1Computer1/reorder-expression")
    (synopsis
     "Reorder expressions in a syntax tree according to operator fixities.")
    (description
     "A library for reordering expressions in a syntax tree generically according to operator associativity and precedence.
This is useful for languages with custom operators which require reordering expressions after collecting their fixities.")
    (license license:expat)))

haskell-9.2-reorder-expression

(define-public haskell-9.2-replace-attoparsec
  (package
    (name "haskell-9.2-replace-attoparsec")
    (version "1.4.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/replace-attoparsec/replace-attoparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mr7d6w5x6igsvl6mccchr2wbxxr5p86kpyxlbk7m17dplvwazcq"))))
    (properties `((upstream-name . "replace-attoparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-parsers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jamesdbrock/replace-attoparsec")
    (synopsis
     "Find, replace, and split string patterns with Attoparsec parsers (instead of regex)")
    (description
     "Find text patterns, replace the patterns, split on the patterns. Use
Attoparsec monadic parsers instead of regular expressions for pattern matching.")
    (license license:bsd-2)))

haskell-9.2-replace-attoparsec

(define-public haskell-9.2-result
  (package
    (name "haskell-9.2-result")
    (version "0.2.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/result/result-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1ibqc5h2vxy4h3sn94jxmjk099fkainnyd2y457g4ldqv9ydj9pm"))))
    (properties `((upstream-name . "result") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bifunctors)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-keys)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/srijs/haskell-result")
    (synopsis "Encode success or at least one error")
    (description "")
    (license license:expat)))

haskell-9.2-result

(define-public haskell-9.2-rocksdb-haskell-jprupp
  (package
    (name "haskell-9.2-rocksdb-haskell-jprupp")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-string-conversions)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) rocksdb)))
    (home-page "https://github.com/jprupp/rocksdb-haskell#readme")
    (synopsis "Haskell bindings for RocksDB")
    (description
     "See README at <https://github.com/jprupp/rocksdb-haskell#readme>")
    (license license:bsd-3)))

haskell-9.2-rocksdb-haskell-jprupp

(define-public haskell-9.2-s3-signer
  (package
    (name "haskell-9.2-s3-signer")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/s3-signer/s3-signer-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1r48j7ni8byzdi0girkj6lf2hp4q85ir2xnqpckzdxd0ppap2dnp"))))
    (properties `((upstream-name . "s3-signer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-byteable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-cryptohash)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/dmjio/s3-signer")
    (synopsis "Pre-signed Amazon S3 URLs")
    (description
     "
s3-signer creates cryptographically secure Amazon S3 URLs that expire within a user-defined
period. It allows uploading and downloading of content from Amazon S3.
Ideal for AJAX direct-to-s3 uploads via CORS and secure downloads.
Web framework agnostic with minimal dependencies.

> module Main where
> import           Network.S3
> main :: IO ()
> main = print =<< generateS3URL credentials request
>   where
>     credentials = S3Keys \"<public-key-goes-here>\" \"<secret-key-goes-here>\"
>     request     = S3Request S3GET \"application/extension\" \"bucket-name\" \"file-name.extension\" 3 -- three seconds until expiration

Result

> S3URL \"https://bucket-name.s3.amazonaws.com/file-name.extension?AWSAccessKeyId=<public-key-goes-here>&Expires=1402346638&Signature=1XraY%2Bhp117I5CTKNKPc6%2BiihRA%3D\"")
    (license license:bsd-3)))

haskell-9.2-s3-signer

(define-public haskell-9.2-safe-coloured-text-layout
  (package
    (name "haskell-9.2-safe-coloured-text-layout")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safe-coloured-text-layout/safe-coloured-text-layout-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11fbfqs96dlhyywkmy97b2fsws0fdsv3illdd61w3fckbxbdw6bw"))))
    (properties `((upstream-name . "safe-coloured-text-layout")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-safe-coloured-text)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)))
    (home-page "https://github.com/NorfairKing/safe-coloured-text#readme")
    (synopsis "Safely layout output coloured text")
    (description "")
    (license license:expat)))

haskell-9.2-safe-coloured-text-layout

(define-public haskell-9.2-safe-coloured-text-terminfo
  (package
    (name "haskell-9.2-safe-coloured-text-terminfo")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safe-coloured-text-terminfo/safe-coloured-text-terminfo-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qfs1y35sxabnlihfzbs5nhmhz5xb7fwiib4j2nhwwq70glyldcn"))))
    (properties `((upstream-name . "safe-coloured-text-terminfo")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-safe-coloured-text)))
    (home-page "https://github.com/NorfairKing/safe-coloured-text#readme")
    (synopsis "Safely output coloured text")
    (description "")
    (license license:expat)))

haskell-9.2-safe-coloured-text-terminfo

(define-public haskell-9.2-safe-money
  (package
    (name "haskell-9.2-safe-money")
    (version "0.9.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safe-money/safe-money-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03fizw68y87lyk6r1r2dmjpakgm1whi54avsb5k2krvmgwhy6fs5"))))
    (properties `((upstream-name . "safe-money") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-vector-space)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0001/safe-money")
    (synopsis "Type-safe and lossless encoding and manipulation of money, fiat
currencies, crypto currencies and precious metals.")
    (description
     "The Haskell @@safe-money@@ library offers type-safe and lossless encoding and
operations for monetary values in all world currencies, including fiat
currencies, precious metals and crypto-currencies.

Useful instances for the many types defined by @@safe-money@@ can be found
in these other libraries:

* [safe-money-aeson](https://hackage.haskell.org/package/safe-money-aeson):
@@FromJSON@@ and @@ToJSON@@ instances (from the [aeson](https://hackage.haskell.org/package/aeson) library).

* [safe-money-cereal](https://hackage.haskell.org/package/safe-money-cereal):
@@Serialize@@ instances (from the [cereal](https://hackage.haskell.org/package/cereal) library).

* [safe-money-serialise](https://hackage.haskell.org/package/safe-money-serialise):
@@Serialise@@ instances (from the [serialise](https://hackage.haskell.org/package/serialise) library).

* [safe-money-store](https://hackage.haskell.org/package/safe-money-store):
@@Store@@ instances (from the [store](https://hackage.haskell.org/package/store) library).

* [safe-money-xmlbf](https://hackage.haskell.org/package/safe-money-xmlbf):
@@FromXml@@ and @@ToXml@@ instances (from the [xmlbf](https://hackage.haskell.org/package/xmlbf) library).")
    (license license:bsd-3)))

haskell-9.2-safe-money

(define-public haskell-9.2-secp256k1-haskell
  (package
    (name "haskell-9.2-secp256k1-haskell")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/secp256k1-haskell/secp256k1-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0abxwmls4rvsnck7p5gpajmha2vc9fbcrr2q1alkpw8acmgfhr76"))))
    (properties `((upstream-name . "secp256k1-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-base16)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-entropy)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-string-conversions)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages crypto) libsecp256k1)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskoin/secp256k1-haskell#readme")
    (synopsis "Bindings for secp256k1")
    (description "Sign and verify signatures using the secp256k1 library.")
    (license license:expat)))

haskell-9.2-secp256k1-haskell

(define-public haskell-9.2-sets
  (package
    (name "haskell-9.2-sets")
    (version "0.0.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sets/sets-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0xgk04fvfrl8syyg2cf5s2jazmdasjqh3fdsgamxak2wvjpyvf9l"))))
    (properties `((upstream-name . "sets") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1qfkr0rcqvqqgnrsjq4blgwha3ylzchcbvhhz65mz44ql71m76g8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-commutative)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-composition)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-contravariant)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-keys)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-witherable)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/athanclark/sets#readme")
    (synopsis "Ducktyped set interface for Haskell containers.")
    (description
     "Please see the README on Github at <https://github.com/athanclark/sets#readme>")
    (license license:bsd-3)))

haskell-9.2-sets

(define-public haskell-9.2-sexp-grammar
  (package
    (name "haskell-9.2-sexp-grammar")
    (version "2.3.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sexp-grammar/sexp-grammar-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gcddb714k3lia3z1wa92ar16jl0bb1l3sal1j4as2k3ccfaq7m7"))))
    (properties `((upstream-name . "sexp-grammar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-alex)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-data-fix)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-happy)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-invertible-grammar)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-recursion-schemes)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/esmolanka/sexp-grammar")
    (synopsis "Invertible grammar combinators for S-expressions")
    (description
     "Serialisation to and deserialisation from S-expressions derived from
a single grammar definition.")
    (license license:bsd-3)))

haskell-9.2-sexp-grammar

(define-public haskell-9.2-singletons-th
  (package
    (name "haskell-9.2-singletons-th")
    (version "3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/singletons-th/singletons-th-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mhx7sadw7zxaf7qhryrhi4fiyf9v3jcaplkh1syaa7b4725dm7a"))))
    (properties `((upstream-name . "singletons-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "19ac6s4k6yv0lfrhkmgpf000k32rpm91lngs4955158792pa6fi6")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-singletons)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-th-desugar)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-th-orphans)))
    (home-page "http://www.github.com/goldfirere/singletons")
    (synopsis "A framework for generating singleton types")
    (description
     "@@singletons-th@@ defines Template Haskell functionality that allows
/promotion/ of term-level functions to type-level equivalents and
/singling/ functions to dependently typed equivalents. This library was
originally presented in /Dependently Typed Programming with Singletons/,
published at the Haskell Symposium, 2012.
(<https://richarde.dev/papers/2012/singletons/paper.pdf>)
See also the paper published at Haskell Symposium, 2014, which describes
how promotion works in greater detail:
<https://richarde.dev/papers/2014/promotion/promotion.pdf>.

@@singletons-th@@ generates code that relies on bleeding-edge GHC language
extensions. As such, @@singletons-th@@ only supports the latest major version
of GHC (currently GHC 9.2). For more information,
consult the @@singletons@@
@@<https://github.com/goldfirere/singletons/blob/master/README.md README>@@.

You may also be interested in the following related libraries:

* The @@singletons@@ library is a small, foundational library that defines
basic singleton-related types and definitions.

* The @@singletons-base@@ library uses @@singletons-th@@ to define promoted and
singled functions from the @@base@@ library, including the \"Prelude\".")
    (license license:bsd-3)))

haskell-9.2-singletons-th

(define-public haskell-9.2-store
  (package
    (name "haskell-9.2-store")
    (version "0.7.16")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/store/store-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "125n9jcqjcyk7ypky4i0fydy1msgn8ldrhyhclqp1w0p7s2wazsg"))))
    (properties `((upstream-name . "store") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-comparison-bench" "-f-integer-simple" "-f-small-bench")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-orphans)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bifunctors)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-contravariant)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-cryptohash)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-free)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-hspec-smallcheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-lifted-base)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-mono-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-nats)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-smallcheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-store-core)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-th-lift)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-th-lift-instances)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-th-orphans)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-th-reify-many)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-th-utilities)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-void)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mgsloan/store#readme")
    (synopsis "Fast binary serialization")
    (description "")
    (license license:expat)))

haskell-9.2-store

(define-public haskell-9.2-streaming-bytestring
  (package
    (name "haskell-9.2-streaming-bytestring")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/streaming-bytestring/streaming-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0iz4h5a1fd9bj2rkpwh5vk37j71frwqlbl2igfyxn4g7irpxipxh"))))
    (properties `((upstream-name . "streaming-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-mmorph)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-smallcheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-streaming)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.2-streaming-bytestring

(define-public haskell-9.2-streams
  (package
    (name "haskell-9.2-streams")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-adjunctions)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-boring)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-distributive)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.2-streams

(define-public haskell-9.2-string-transform
  (package
    (name "haskell-9.2-string-transform")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ncaq/string-transform#readme")
    (synopsis "simple and easy haskell string transform wrapper")
    (description "")
    (license license:expat)))

haskell-9.2-string-transform

(define-public haskell-9.2-symmetry-operations-symbols
  (package
    (name "haskell-9.2-symmetry-operations-symbols")
    (version "0.0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/symmetry-operations-symbols/symmetry-operations-symbols-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0y9m1z72kh8lhmig0lpp67p3s74s706y6lbzlr5hk47mpcw7fymh"))))
    (properties `((upstream-name . "symmetry-operations-symbols")
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
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-matrix)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-matrix-as-xyz)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/narumij/symmetry-operations-symbols#readme")
    (synopsis "Derivation of symbols and coordinate triplets Library")
    (description
     "Please see the README on GitHub at <https://github.com/narumij/symmetry-operations-symbols#readme>")
    (license license:bsd-3)))

haskell-9.2-symmetry-operations-symbols

(define-public haskell-9.2-tasty-hslua
  (package
    (name "haskell-9.2-tasty-hslua")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-hslua/tasty-hslua-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ibdxwaclghcgcyf9zx4b1dnp4b708ydwli4clmb0a0mp1lwdp98"))))
    (properties `((upstream-name . "tasty-hslua") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-hslua-core)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hslua.org/")
    (synopsis "Tasty helpers to test HsLua.")
    (description "Various tasty helpers and utilities to test HsLua
oparations. Built on top of tasty-hunit.")
    (license license:expat)))

haskell-9.2-tasty-hslua

(define-public haskell-9.2-tasty-hspec
  (package
    (name "haskell-9.2-tasty-hspec")
    (version "1.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-hspec/tasty-hspec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cfcpi25jmnmzfzsx364qsj68q6gyph5z112kl8ja222hnhhr2n2"))))
    (properties `((upstream-name . "tasty-hspec") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hspec-core)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-tasty-smallcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mitchellwrosen/tasty-hspec")
    (synopsis "Hspec support for the Tasty test framework.")
    (description "This package provides a Tasty provider for Hspec test
suites.")
    (license license:bsd-3)))

haskell-9.2-tasty-hspec

(define-public haskell-9.2-tcp-streams
  (package
    (name "haskell-9.2-tcp-streams")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-io-streams)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-pem)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-tls)
                  (@ (gnu packages stackage ghc-9.2 stage009) haskell-9.2-x509)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-x509-store)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-x509-system)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/didi-FP/tcp-streams")
    (synopsis "One stop solution for tcp client and server with tls support.")
    (description
     "One stop solution for tcp client and server with tls support.")
    (license license:bsd-3)))

haskell-9.2-tcp-streams

(define-public haskell-9.2-teardown
  (package
    (name "haskell-9.2-teardown")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/teardown/teardown-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ian64cbmw18n75p2jx8d856d3gz5lahvfxy1xbsh1isz56jzh2d"))))
    (properties `((upstream-name . "teardown") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-rio)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-typed-process)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/roman/Haskell-teardown#readme")
    (synopsis "Build safe and composable teardown sub-routines for resources")
    (description
     "The teardown library allows you to reliably execute cleanup sub-routines for
allocated resources. When a program is initialized, it:

* Ensures that teardown sub-routines are executed /exactly/ once

* Ensures that if errors occur on the execution of a Teardown sub-routine, the
error does not propagate to others; bulkheading failure on cleanup.

* Requires every sub-routine to be documented at creation time; thus helping
tracing your application structure.

* Allows tracing the teardown of your application, how is structured, how much
time it takes to execute, and what component (if any) failed to finalize.")
    (license license:expat)))

haskell-9.2-teardown

(define-public haskell-9.2-time-parsers
  (package
    (name "haskell-9.2-time-parsers")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/time-parsers/time-parsers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "102k6l9888kbgng045jk170qjbmdnwv2lbzlc12ncybfk2yk7wdv"))))
    (properties `((upstream-name . "time-parsers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "0dbqqlh98m06qj8jh1fs55lcxj4x4555x4p48xi3bjh5fdg4dkw0")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-parsers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/phadej/time-parsers#readme")
    (synopsis "Parsers for types in `time`.")
    (description
     "Parsers for types in `time` using 'parser' library.

Originally forked from aeson parsers.

See also <http://hackage.haskell.org/package/attoparsec-iso8601 attoparsec-iso-8601> package.")
    (license license:bsd-3)))

haskell-9.2-time-parsers

(define-public haskell-9.2-timerep
  (package
    (name "haskell-9.2-timerep")
    (version "2.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/timerep/timerep-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1qik0bg609657y12vlkiip4ry586bkwyfmy5wabnf1qc184zqzir"))))
    (properties `((upstream-name . "timerep") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-monoid-subclasses)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/HugoDaniel/timerep")
    (synopsis
     "Parse and display time according to some RFCs (RFC3339, RFC2822, RFC822)")
    (description
     "Parse and display time according to some RFC's.

Supported:

* RFC822 <http://www.ietf.org/rfc/rfc0822.txt>

* RFC2822 <http://www.ietf.org/rfc/rfc2822.txt>

* RFC3339 <http://www.ietf.org/rfc/rfc3339.txt>

Special thanks to Koral for all the suggestions and help in solving some bugs.")
    (license license:bsd-3)))

haskell-9.2-timerep

(define-public haskell-9.2-transaction
  (package
    (name "haskell-9.2-transaction")
    (version "0.1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/transaction/transaction-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1if04fm2kvkd25ksk1llqqkwaqy8y7pafbywmz70mrr68wrb2r6j"))))
    (properties `((upstream-name . "transaction") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Glob)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-mono-traversable)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/arowM/haskell-transaction#readme")
    (synopsis "Monadic representation of transactions.")
    (description
     "Monadic representation of transactions. Alike `List`, but can be declared with `do` notations.")
    (license license:expat)))

haskell-9.2-transaction

(define-public haskell-9.2-unboxing-vector
  (package
    (name "haskell-9.2-unboxing-vector")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unboxing-vector/unboxing-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10sj7npfmhb9niagyhw5v68fpbhxa637x99dyw6njalsmsyimj91"))))
    (properties `((upstream-name . "unboxing-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fmono-traversable")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-mono-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-should-not-typecheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/minoki/unboxing-vector#readme")
    (synopsis "A newtype-friendly variant of unboxed vectors")
    (description
     "Please see the README on GitHub at <https://github.com/minoki/unboxing-vector#readme>")
    (license license:bsd-3)))

haskell-9.2-unboxing-vector

(define-public haskell-9.2-universe-instances-extended
  (package
    (name "haskell-9.2-universe-instances-extended")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-adjunctions)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-universe-base)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.2-universe-instances-extended

(define-public haskell-9.2-valida
  (package
    (name "haskell-9.2-valida")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/valida/valida-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1i9di1gmcd6s2xmf8s5mwg7fra48zg54r89f1qf1gfj34asab62m"))))
    (properties `((upstream-name . "valida") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-smallcheck)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-tasty-smallcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/TotallyNotChase/valida#readme")
    (synopsis
     "Simple applicative validation for product types, batteries included!")
    (description
     "This package provides an applicative validator with support for contravariance. This makes building validators for product types idiomatic and simple. Many common utilities for building validators are also included.")
    (license license:expat)))

haskell-9.2-valida

(define-public haskell-9.2-valida-base
  (package
    (name "haskell-9.2-valida-base")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/valida-base/valida-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wyj7nm1dqy5lq86mgqzr40s065jkwccmb4bky4hg1h7nz2lpqbj"))))
    (properties `((upstream-name . "valida-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-smallcheck)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-tasty-smallcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/TotallyNotChase/valida-base#readme")
    (synopsis
     "Simple applicative validation for product types, batteries included!")
    (description
     "This is a zero dependency version of the valida package. It is equivalent to valida == 0.1.0. Check out the README at github <https://github.com/TotallyNotChase/valida-base#readme>!")
    (license license:expat)))

haskell-9.2-valida-base

(define-public haskell-9.2-vec
  (package
    (name "haskell-9.2-vec")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-adjunctions)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-boring)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-distributive)
                  (@ (gnu packages stackage ghc-9.2 stage009) haskell-9.2-fin)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.2-vec

(define-public haskell-9.2-vector-sized
  (package
    (name "haskell-9.2-vector-sized")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-adjunctions)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-distributive)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-finite-typelits)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-indexed-list-literals)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/expipiplus1/vector-sized#readme")
    (synopsis "Size tagged vectors")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.2-vector-sized

(define-public haskell-9.2-vty
  (package
    (name "haskell-9.2-vty")
    (version "5.37")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/vty/vty-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1w6dc25npvlaflxcyzdssnymgi7x03zkwg7swyjw6cjjfdmkgqb7"))))
    (properties `((upstream-name . "vty") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-microlens-mtl)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-microlens-th)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-parallel)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-quickcheck-assertions)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-smallcheck)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-string-qq)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-test-framework-smallcheck)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.2-vty

(define-public haskell-9.2-wai
  (package
    (name "haskell-9.2-wai")
    (version "3.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/wai/wai-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1y19h9v0cq1fl17ywcyyvd6419fhgyw2s0yk0ki8z60021adcx2m"))))
    (properties `((upstream-name . "wai") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-vault)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/yesodweb/wai")
    (synopsis "Web Application Interface.")
    (description
     "Provides a common protocol for communication between web applications and web servers.

API docs and the README are available at <http://www.stackage.org/package/wai>.")
    (license license:expat)))

haskell-9.2-wai

(define-public haskell-9.2-web-plugins
  (package
    (name "haskell-9.2-web-plugins")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/web-plugins/web-plugins-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sdd1yvcxaahn7wdqzbc90xinnfm2mspvk1391znb9khp8cd5b9h"))))
    (properties `((upstream-name . "web-plugins") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/clckwrks/web-plugins")
    (synopsis "dynamic plugin system for web applications")
    (description
     "This provides a simple framework for defining plugins for a web application.
It is designed with the requirement that plugins can be loaded into a running
web application with out having to know about the plugin in advance.")
    (license license:bsd-3)))

haskell-9.2-web-plugins

(define-public haskell-9.2-web-routes
  (package
    (name "haskell-9.2-web-routes")
    (version "0.27.14.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/web-routes/web-routes-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10zpyxigrmp97x7xd9aw8kn925ygjf0jv8hppxmksjf9a6pvyfn1"))))
    (properties `((upstream-name . "web-routes") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "http://www.happstack.com/docs/crashcourse/index.html#web-routes")
    (synopsis "portable, type-safe URL routing")
    (description
     "A collection of types and functions that ensure that URLs generated by an application are valid. Need more properties here.")
    (license license:bsd-3)))

haskell-9.2-web-routes

(define-public haskell-9.2-witness
  (package
    (name "haskell-9.2-witness")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/witness/witness-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "02ky1qc4ar8iy3rzjp2j89mp3k7skz5jp65vn7lilmwrvm1b2vcx"))))
    (properties `((upstream-name . "witness") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-constraints)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-countable)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/AshleyYakeley/witness")
    (synopsis "values that witness types")
    (description
     "A /witness/ is a value that witnesses some sort of constraint on some list of type variables. This library provides support for a wide variety of witness types. It also provides classes for /representatives/, which are values that represent types.")
    (license license:bsd-2)))

haskell-9.2-witness

(define-public haskell-9.2-wordpress-auth
  (package
    (name "haskell-9.2-wordpress-auth")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wordpress-auth/wordpress-auth-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10drplm0bg72ph87apbdmm4ar7gh09x6w6sgwgvdkz4zpkc48s0j"))))
    (properties `((upstream-name . "wordpress-auth") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-cookie)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cryptohash-md5)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hs-php-session)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-uri-encode)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/prikhi/wordpress-auth#readme")
    (synopsis
     "Validate Wordpress Cookies & Nonces; Build Wordpress Hashes & Salts")
    (description
     "This package is used for validating Cookie data & Nonces from Wordpress.

You may find it useful if you're trying to serve a Haskell application alongside a Wordpress site. By validating the Cookies set by Wordpress, you can access the currently logged-in Wordpress user in Haskell without having to devise a Wordpress-to-Haskell authentication scheme.

It includes a generalized authentication function, as well as various helpers, validators, & hashers if you'd like to build a custom authentication process.

Servant users may want to just use the @@servant-auth-wordpress@@ package.")
    (license license:bsd-3)))

haskell-9.2-wordpress-auth

