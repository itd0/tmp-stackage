;;; generated file
(define-module (gnu packages stackage ghc-8.10 stage012)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-8.10))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-8.10-BNFC
  (package
    (name "haskell-8.10-BNFC")
    (version "2.9.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/BNFC/BNFC-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1gy7ggrf2zikyfi8anlj2zavs5b99z7rzs1lmyflrjd82a31bmzp"))))
    (properties `((upstream-name . "BNFC") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-alex)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-happy)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-string-qq)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)))
    (home-page "http://bnfc.digitalgrammars.com/")
    (synopsis "A compiler front-end generator.")
    (description
     "The BNF Converter is a compiler construction tool generating a compiler front-end
from a Labelled BNF grammar. It was originally written to generate Haskell code,
but can also be used for generating Agda, C, C++, Java, Ocaml and XML code.

Given a Labelled BNF grammar the tool produces:
an abstract syntax as a Haskell, Agda, C, C++, Ocaml module or Java directory,
a case skeleton for the abstract syntax in the same language,
an Alex, JLex, or Flex lexer generator file,
a Happy, CUP, Bison, or Antlr parser generator file,
a pretty-printer as a Haskell, Agda, C, C++, Java, or Ocaml module,
an XML representation,
a LaTeX file containing a readable specification of the language.")
    (license license:bsd-3)))

haskell-8.10-BNFC

(define-public haskell-8.10-asn1-types
  (package
    (name "haskell-8.10-asn1-types")
    (version "0.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/asn1-types/asn1-types-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1a119qxhxhr0yn37r26dkydm6g5kykdkx98ghb59i4ipa6i95vkq"))))
    (properties `((upstream-name . "asn1-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-hourglass)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/vincenthz/hs-asn1")
    (synopsis "ASN.1 types")
    (description "ASN.1 standard types")
    (license license:bsd-3)))

haskell-8.10-asn1-types

(define-public haskell-8.10-astro
  (package
    (name "haskell-8.10-astro")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-matrix)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/aligusnet/astro")
    (synopsis "Amateur astronomical computations")
    (description
     "Amateur astronomical computations: rise and set times and azimuths,
coordinates, distances, angular sizes and other parameters
of the Sun, the Moon, planets and stars.")
    (license license:bsd-3)))

haskell-8.10-astro

(define-public haskell-8.10-audacity
  (package
    (name "haskell-8.10-audacity")
    (version "0.0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/audacity/audacity-" version
                    ".tar.gz"))
              (sha256
               (base32
                "04r36gy8z0d2fz1l5px6yajp7izf3zpda9vci6q0wc273pxc8ck6"))))
    (properties `((upstream-name . "audacity") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexamples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-explicit-exception)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-non-empty)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-storable-record)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-storablevector)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-tagchup)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-xml-basic)))
    (home-page "https://hub.darcs.net/thielema/audacity")
    (synopsis "Interchange with the Audacity sound signal editor")
    (description
     "This package provides functions
for interchange with the Audacity sound signal editor.
Currently we support import and export of label tracks,
export of Audacity projects and
limited import of tracks from Audacity projects.

We provide some examples that are useful on its own:

* @@sox-split@@:
Split an audio file according to a label track.
Audacity provides this function by itself.
You can use placeholders like @@%s@@ and @@%02d@@
in order to compose the names of the parts from the labels and positions.

* @@sox-concat@@:
Concatenate a sequence of sound files with matching
sampling rates and numbers of channels using SoX
and generate an Audacity label track file
that shows the origins of the parts.

* @@audacity-concat@@:
Create an Audacity project file
containing a virtual concatenation of the input sound files
and a label track showing the origins of the sound files.

* @@audacity-combine@@:
Put several audio and label files into tracks of a new Audacity project.
Opening one or even multiple such projects is much easier
than loading individual tracks into Audacity.")
    (license license:bsd-3)))

haskell-8.10-audacity

(define-public haskell-8.10-blaze-html
  (package
    (name "haskell-8.10-blaze-html")
    (version "0.9.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blaze-html/blaze-html-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0k1r1hddjgqighazcazxrx6xfhvy2gm8il8l82ainv3cai13yl30"))))
    (properties `((upstream-name . "blaze-html") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1hjxvz62wlg0x7svc51zascgc96f5ly9xkkiyllgb4aqcvx9zf3l")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-blaze-markup)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://jaspervdj.be/blaze")
    (synopsis "A blazingly fast HTML combinator library for Haskell")
    (description "A blazingly fast HTML combinator library for the Haskell
programming language. The Text.Blaze module is a good
starting point, as well as this tutorial:
<http://jaspervdj.be/blaze/tutorial.html>.")
    (license license:bsd-3)))

haskell-8.10-blaze-html

(define-public haskell-8.10-blaze-svg
  (package
    (name "haskell-8.10-blaze-svg")
    (version "0.3.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blaze-svg/blaze-svg-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0q5a4wam0sidng0cfsivwkyph9snyilk7rsdx4vb6wz9l6xz397n"))))
    (properties `((upstream-name . "blaze-svg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1vb78d0nvk0909963pm0mnzklcm57w563lhgx1wv7qzdfznpi8f9")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-blaze-markup)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/deepakjois/blaze-svg")
    (synopsis "SVG combinator library")
    (description
     "A blazingly fast SVG combinator library for the Haskell
programming language. The \"Text.Blaze.SVG\" module is a good
starting point.

Other documentation:

* Programs in the /examples/ folder of this project: <https://github.com/deepakjois/blaze-svg/tree/master/examples/>

* Jasper Van Der Jeugt has written a tutorial for /blaze-html/,
which is a sister library of /blaze-svg/. It may not be directly relevant,
but still it gives a good overview on how to use the  combinators in
\"Text.Blaze.Svg11\" and \"Text.Blaze.Svg11.Attributes\":
<http://jaspervdj.be/blaze/tutorial.html>.")
    (license license:bsd-3)))

haskell-8.10-blaze-svg

(define-public haskell-8.10-co-log-core
  (package
    (name "haskell-8.10-co-log-core")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/co-log-core/co-log-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04w8j39n1cfmzvvllbjj21w7g53lgppf5crk7n4i9hgspaxbwyik"))))
    (properties `((upstream-name . "co-log-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1mib449rp5g02f62nl4phfgjm4f8dj5v6qwxyx0cccglkiccn28j")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-Glob)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)))
    (home-page "https://github.com/kowainik/co-log")
    (synopsis "Composable Contravariant Comonadic Logging Library")
    (description
     "This package provides core types and functions to work with the @@LogAction@@ data type which is both simple and powerful.

@@
__newtype__ LogAction m msg = LogAction
\\    @{ unLogAction :: msg -> m ()
\\    @}
@@

The ideas behind this package are described in the following blog post:

* [co-log: Composable Contravariant Combinatorial Comonadic Configurable Convenient Logging](https://kowainik.github.io/posts/2018-09-25-co-log)

See the following packages for different implementations based on @@co-log-core@@:

* [co-log](http://hackage.haskell.org/package/co-log): taggless final implementations.
* [co-log-polysemy](http://hackage.haskell.org/package/co-log-polysemy): extensible
effects implementation based on @@polysemy@@.")
    (license license:mpl2.0)))

haskell-8.10-co-log-core

(define-public haskell-8.10-commonmark-extensions
  (package
    (name "haskell-8.10-commonmark-extensions")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/commonmark-extensions/commonmark-extensions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02zq9ma58yngabz1rw0alaq9s8lsfmxjn8m3dfjxavvq2pl3748f"))))
    (properties `((upstream-name . "commonmark-extensions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-commonmark)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-emojis)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jgm/commonmark-hs")
    (synopsis "Pure Haskell commonmark parser.")
    (description
     "This library provides some useful extensions to core commonmark
syntax: smart quotes, definition lists, tables, footnotes, math,
and more.")
    (license license:bsd-3)))

haskell-8.10-commonmark-extensions

(define-public haskell-8.10-compdata
  (package
    (name "haskell-8.10-compdata")
    (version "0.12.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/compdata/compdata-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ksa3bgqjvshkrpd74420z9kkb3asq4flszzwrqswd4qw1yn9f05"))))
    (properties `((upstream-name . "compdata") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-th-expand-syns)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tree-view)))
    (home-page "https://hackage.haskell.org/package/compdata")
    (synopsis "Compositional Data Types")
    (description
     "This library implements the ideas of /Data types a la carte/
(Journal of Functional Programming, 18(4):423-436, 2008,
<http://dx.doi.org/10.1017/S0956796808006758>) as outlined in the
paper /Compositional data types/ (Workshop on Generic Programming,
83-94, 2011, <http://dx.doi.org/10.1145/2036918.2036930>). The
purpose of this library is to allow the programmer to construct data
types -- as well as the functions defined on them -- in a modular
fashion. The underlying idea is to separate the signature of a data
type from the fixed point construction that produces its recursive
structure. Signatures can then be composed and decomposed freely.

Building on that foundation, this library provides additional
extensions and (run-time) optimisations which make compositional data types
usable for practical implementations. In particular, it
provides an excellent framework for manipulating and analysing
abstract syntax trees in a type-safe manner. Thus, it is perfectly
suited for programming language implementations, especially, in an environment
consisting of a family of tightly interwoven /domain-specific languages/.

In concrete terms, this library provides the following features:

*  Compositional data types in the style of Wouter Swierstra's
Functional Pearl /Data types a la carte/. The implementation of
signature subsumption is based on the paper
/Composing and Decomposing Data Types/ (Workshop on Generic
Programming, 2014, to appear), which makes signature composition more
flexible.

*  Modular definition of functions on compositional data types through
catamorphisms and anamorphisms as well as more structured
recursion schemes such as primitive recursion  and co-recursion,
and course-of-value iteration and co-iteration.

*  Support for monadic computations via monadic variants of all
recursion schemes.

*  Support of a succinct programming style over compositional data types
via generic programming combinators that allow various forms of
generic transformations and generic queries.

*  Generalisation of compositional data types (terms) to
compositional data types \\\"with holes\\\" (contexts). This allows
flexible reuse of a wide variety of catamorphisms (called
/term homomorphisms/) as well as an efficient composition of them.

*  Operations on signatures, for example, to add and remove
annotations of abstract syntax trees. This includes combinators to
propagate annotations fully automatically through certain
term homomorphisms.

*  Optimisation of the implementation of recursion schemes. This
includes /short-cut fusion/ style optimisation rules which yield a
performance boost of up to factor six.

*  Automatic derivation of instances of all relevant type classes for
using compositional data types via /Template Haskell/. This includes
instances of 'Prelude.Eq', 'Prelude.Ord' and 'Prelude.Show' that are
derived via instances for functorial variants of them. Additionally,
also /smart constructors/, which allow to easily construct inhabitants
of compositional data types, are automatically generated.

*  /Mutually recursive data types/ and
/generalised algebraic data types (GADTs)/. All of the above is also lifted
to families of mutually recursive data types and (more generally) GADTs.
This extension resides in the module \"Data.Comp.Multi\".

Examples of using (generalised) compositional data types are bundled
with the package in the folder @@examples@@.

There are some supplementary packages, some of which were included
in previous versions of this package:

* @@compdata-param@@
<https://hackage.haskell.org/package/compdata-param>: a parametric
variant of compositional data types to deal with variable binders
in a systematic way.

* @@compdata-automata@@
<https://hackage.haskell.org/package/compdata-automata>: advanced
recursion schemes derived from tree automata that allow for a
higher degree of modularity and make it possible to apply fusion.

* @@compdata-dags@@
<https://hackage.haskell.org/package/compdata-dags>: recursion
schemes on directed acyclic graphs.")
    (license license:bsd-3)))

haskell-8.10-compdata

(define-public haskell-8.10-cryptonite
  (package
    (name "haskell-8.10-cryptonite")
    (version "0.29")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cryptonite/cryptonite-" version
                    ".tar.gz"))
              (sha256
               (base32
                "13xhp3hshb8x06bw37kp16c9jpjmgfn06nkj9drz745fv8f04fnq"))))
    (properties `((upstream-name . "cryptonite") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsupport_aesni" "-fsupport_rdrand" "-f-support_pclmuldq" "-f-support_sse" "-finteger-gmp" "-fsupport_deepseq" "-f-old_toolchain_inliner" "-f-check_alignment" "-fuse_target_attributes")
       #:cabal-revision
       ("1" "1gaabsh8ihxcb6f3pplvpkplw7xbdxvflmc1wwnssx7s070n4323")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-basement)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-tasty-kat)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-crypto/cryptonite")
    (synopsis "Cryptography Primitives sink")
    (description
     "A repository of cryptographic primitives.

* Symmetric ciphers: AES, DES, 3DES, CAST5, Blowfish, Twofish, Camellia, RC4, Salsa, XSalsa, ChaCha.

* Hash: SHA1, SHA2, SHA3, SHAKE, MD2, MD4, MD5, Keccak, Skein, Ripemd, Tiger, Whirlpool, Blake2

* MAC: HMAC, KMAC, Poly1305

* Asymmetric crypto: DSA, RSA, DH, ECDH, ECDSA, ECC, Curve25519, Curve448, Ed25519, Ed448

* Key Derivation Function: PBKDF2, Scrypt, HKDF, Argon2, BCrypt, BCryptPBKDF

* Cryptographic Random generation: System Entropy, Deterministic Random Generator

* Data related: Anti-Forensic Information Splitter (AFIS)

If anything cryptographic related is missing from here, submit
a pull request to have it added. This package strives to be a
cryptographic kitchen sink that provides cryptography for everyone.

Evaluate the security related to your requirements before using.

Read \"Crypto.Tutorial\" for a quick start guide.")
    (license license:bsd-3)))

haskell-8.10-cryptonite

(define-public haskell-8.10-cubicbezier
  (package
    (name "haskell-8.10-cubicbezier")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-fast-math)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-integration)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-matrices)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-microlens-mtl)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-microlens-th)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-vector-space)))
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

haskell-8.10-cubicbezier

(define-public haskell-8.10-d10
  (package
    (name "haskell-8.10-d10")
    (version "0.2.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/d10/d10-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0a720zfpxwx5aymy3kmigfcwdbqz4vbfxjn1irfjl34ngndi358y"))))
    (properties `((upstream-name . "d10") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)))
    (home-page "https://github.com/typeclasses/d10")
    (synopsis "Digits 0-9")
    (description
     "Data types representing the digits zero through nine.

== Modules

Each of the following modules defines a different type named
@@D10@@, all of which are different representations of the same
concept:

* \"Data.D10.Char\" - Defines a @@D10@@ type as a newtype for @@Char@@,
where the values are restricted to characters between @@'0'@@ and
@@'9'@@.
* \"Data.D10.Num\" - Defines a @@D10@@ type as a newtype for any
type with an instance of the @@Num@@ class, where the values
are restricted to numbers between @@fromInteger 0@@ and
@@fromInteger 9@@.
* \"Data.D10.Safe\" - Defines a @@D10@@ type as
@@D0 | D1 | D2 | ... | D9@@.

Other modules:

* \"Data.D10.Predicate\" - Functions to test whether values of
various types represent digits in the range /0/ to /9/.

== Quasi-quoters

Each module that defines a @@D10@@ type also defines quasi-quoters
for it. With the @@QuasiQuotes@@ GHC extension enabled, a single
digit like /7/ can be written as @@[d10|7|]@@, and a list of digits
like /[4,5,6]/ can be written as @@[d10|456|]@@. For \"Data.D10.Char\"
and \"Data.D10.Num\", the quasi-quoters are an important feature,
because the @@D10@@ types defined in these modules have unsafe
constructors, and the quasi-quoters provide compile-time assurance
that we never construct a @@D10@@ that represents a value outside
the range /0/ to /9/. For \"Data.D10.Safe\", the quasi-quoter is
offered merely as a possible convenience, allowing you to write
@@[d10|456789|]@@ in place of the somewhat longer expression
@@[D4,D5,D6,D7,D8,D9]@@.")
    (license license:expat)))

haskell-8.10-d10

(define-public haskell-8.10-data-dword
  (package
    (name "haskell-8.10-data-dword")
    (version "0.3.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-dword/data-dword-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0l6xvy89zch5kxkaafsg874xrwx0x1rpxpx1ywbhbs7qv3pz250i"))))
    (properties `((upstream-name . "data-dword") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-data-bword)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mvv/data-dword")
    (synopsis "Stick two binary words together to get a bigger one")
    (description
     "This package provides Template Haskell utilities for declaring fixed-length
binary word data types. Signed and unsigned 96, 128, 160, 192, 224, and
256-bit types are predefined.")
    (license license:bsd-3)))

haskell-8.10-data-dword

(define-public haskell-8.10-derive-topdown
  (package
    (name "haskell-8.10-derive-topdown")
    (version "0.0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/derive-topdown/derive-topdown-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1w36nczl0rl91sgm3vcd4gvm3lr6zdjqvmfdikkjq664xwnxrn8h"))))
    (properties `((upstream-name . "derive-topdown") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-th-expand-syns)))
    (home-page
     "https://github.com/HaskellZhangSong/derive-topdown                   ")
    (synopsis
     "Help Haskellers derive class instances for composited data types.")
    (description
     "This package will make it easier to derive class instance for complex composited data types by using Template Haskell.")
    (license license:bsd-3)))

haskell-8.10-derive-topdown

(define-public haskell-8.10-di-monad
  (package
    (name "haskell-8.10-di-monad")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-di-core)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-pipes)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0001/di")
    (synopsis
     "mtl flavoured typeful hierarchical structured logging for di-core.")
    (description
     "mtl flavoured typeful hierarchical structured logging for di-core.")
    (license license:bsd-3)))

haskell-8.10-di-monad

(define-public haskell-8.10-dimensional
  (package
    (name "haskell-8.10-dimensional")
    (version "1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dimensional/dimensional-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19w6plp97ylwqgwzhfy54cvjvh0dd1gj843y59cmryckh80jap8s"))))
    (properties `((upstream-name . "dimensional") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-Glob)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-exact-pi)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-ieee754)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-numtype-dk)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/bjornbm/dimensional/")
    (synopsis "Statically checked physical dimensions")
    (description
     "Dimensional is a library providing data types for performing arithmetic
with physical quantities and units. Information about the physical
dimensions of the quantities and units is embedded in their types and the
validity of operations is verified by the type checker at compile time.
The boxing and unboxing of numerical values as quantities is done by
multiplication and division with units. The library is designed to, as
far as is practical, enforce/encourage best practices of unit usage.
Version 1 of the dimensional package differs from earlier version in that
the dimension tracking is implemented using Closed Type Families and Data Kinds
rather than functional dependencies. This enables a number of features, including
improved support for unit names and quantities with statically-unknown dimensions.
Requires GHC 8.0 or later.")
    (license license:bsd-3)))

haskell-8.10-dimensional

(define-public haskell-8.10-doctest-driver-gen
  (package
    (name "haskell-8.10-doctest-driver-gen")
    (version "0.3.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/doctest-driver-gen/doctest-driver-gen-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08zv5c1cfklknpbw974sw4rb6jiijd3q28cpjw1cncc06n2jy85b"))))
    (properties `((upstream-name . "doctest-driver-gen") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)))
    (home-page "https://github.com/Hexirp/doctest-driver-gen#readme")
    (synopsis "Generate driver file for doctest's cabal integration")
    (description "doctest-driver-gen is a doctest's driver file generator.
It lets you automatically generate driver file for
doctest's cabal integration.")
    (license license:bsd-3)))

haskell-8.10-doctest-driver-gen

(define-public haskell-8.10-duration
  (package
    (name "haskell-8.10-duration")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/duration/duration-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1cmgbnri3083gpr16j8yqj5jzbz0q5cxgnrpnbridyyznbp8csvj"))))
    (properties `((upstream-name . "duration") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/ryota-ka/duration#readme")
    (synopsis "A tiny compile-time time utility library inspired by zeit/ms")
    (description
     "A tiny compile-time time utility library inspired by zeit/ms")
    (license license:bsd-3)))

haskell-8.10-duration

(define-public haskell-8.10-epub-metadata
  (package
    (name "haskell-8.10-epub-metadata")
    (version "4.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/epub-metadata/epub-metadata-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j839h7894l8hf846zmx0vx640ii3rgswr3jin690djrvwa3kbhr"))))
    (properties `((upstream-name . "epub-metadata") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-hxt)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-regex-compat-tdfa)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-zip-archive)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://hub.darcs.net/dino/epub-metadata")
    (synopsis "Library for parsing epub document metadata")
    (description
     "Library for parsing and manipulating epub document metadata. Supports epub versions 2 and 3.
This library was constructed by studying the IDPF specifications for epub documents found here <http://www.idpf.org/epub/20/spec/OPF_2.0.1_draft.htm> and here <http://www.idpf.org/epub/30/spec/epub30-publications.html>")
    (license license:bsd-3)))

haskell-8.10-epub-metadata

(define-public haskell-8.10-equivalence
  (package
    (name "haskell-8.10-equivalence")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/equivalence/equivalence-"
                    version ".tar.gz"))
              (sha256
               (base32
                "167njzd1cf32aa7br90rjafrxy6hw3fxkk8awifqbxjrcwm5maqp"))))
    (properties `((upstream-name . "equivalence") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0rc68zqj518lmlp58kbgfb945gp0iszfjn6h3y777cjrbm1jp5k4")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-STMonadTrans)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-fail)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/pa-ba/equivalence")
    (synopsis
     "Maintaining an equivalence relation implemented as union-find using STT.")
    (description
     "This is an implementation of Tarjan's Union-Find algorithm (Robert
E. Tarjan. \"Efficiency of a Good But Not Linear Set Union
Algorithm\", JACM 22(2), 1975) in order to maintain an equivalence
relation.
This implementation is a port of the /union-find/ package using the
ST monad transformer (instead of the IO monad).")
    (license license:bsd-3)))

haskell-8.10-equivalence

(define-public haskell-8.10-fft
  (package
    (name "haskell-8.10-fft")
    (version "0.1.8.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fft/fft-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1kkdw08qzsgjgg9z7pf5876cn2hlq22cgvc3k2amidn317n2d6vz"))))
    (properties `((upstream-name . "fft") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsplitbase" "-fbase4")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages algebra) fftw)
                  (@ (gnu packages algebra) fftwf)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-carray)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-ix-shapable)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-storable-complex)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://hackage.haskell.org/package/fft")
    (synopsis "Bindings to the FFTW library.")
    (description "Bindings to the FFTW library.

Provides high performance discrete fourier transforms in
arbitrary dimensions.  Include transforms of complex data,
real data, and real to real transforms.
")
    (license license:bsd-3)))

haskell-8.10-fft

(define-public haskell-8.10-fixed-vector
  (package
    (name "haskell-8.10-fixed-vector")
    (version "1.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fixed-vector/fixed-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19846sgjlsv7qy9nm9l4p2wdms5kvx6y9wm5ffz1hw7h77qy8ryw"))))
    (properties `((upstream-name . "fixed-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-filemanip)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)))
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

haskell-8.10-fixed-vector

(define-public haskell-8.10-flac
  (package
    (name "haskell-8.10-flac")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/flac/flac-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "03zmsnnpkk26ss8ka2l7x9gsfcmiqfyc73v7fna6sk5cwzxsb33c"))))
    (properties `((upstream-name . "flac") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("3" "1cjy3066klhcywx5yba7ky58wsibhhwiamjbimdv04qc8vmdfm45")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-wave)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xiph) flac)))
    (home-page "https://github.com/mrkkrp/flac")
    (synopsis "Complete high-level binding to libFLAC")
    (description "Complete high-level binding to libFLAC.")
    (license license:bsd-3)))

haskell-8.10-flac

(define-public haskell-8.10-flexible-defaults
  (package
    (name "haskell-8.10-flexible-defaults")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/flexible-defaults/flexible-defaults-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02v35b3ahbw46q9xipyh4n46drlz1xrx1rixdmggjr0fwkygd1k5"))))
    (properties `((upstream-name . "flexible-defaults") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-th-extras)))
    (home-page "https://github.com/peti/flexible-defaults")
    (synopsis
     "Generate default function implementations for complex type classes.")
    (description "Template Haskell code to implement default implementations
for type-class functions based on which functions are
already implemented.  Currently extremely crude but
still fairly effective.

When defining a type class with many functions, each
of which can be implemented based on arbitrary subsets
of the others, the standard default-implementation
concept breaks down quite badly.  This library provides
a system by which more complex rules can be described
for choosing default implementations based on which
ones the user supplies.  These implementations can
additionally be given \\\"suitability scores\\\", so that
when multiple possible choices could be made, the
library can choose the \\\"best\\\" one.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-flexible-defaults

(define-public haskell-8.10-from-sum
  (package
    (name "haskell-8.10-from-sum")
    (version "0.2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/from-sum/from-sum-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1rdsynimmq81y3g5c8z9yvlqhsl99hnvjq4wvdci5ql788cq4m81"))))
    (properties `((upstream-name . "from-sum") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-Glob)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)))
    (home-page "https://github.com/cdepillabout/from-sum")
    (synopsis "Combinators for working with Maybe and Either")
    (description
     "Provides many functions for working with 'Maybe' and 'Either', including canonical 'fromMaybeM' and 'fromEitherM' functions.  Please see @@README.md@@.")
    (license license:bsd-3)))

haskell-8.10-from-sum

(define-public haskell-8.10-genvalidity-property
  (package
    (name "haskell-8.10-genvalidity-property")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-genvalidity)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-pretty-show)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Standard properties for functions on `Validity` types")
    (description "Standard properties for functions on `Validity` types")
    (license license:expat)))

haskell-8.10-genvalidity-property

(define-public haskell-8.10-getopt-generics
  (package
    (name "haskell-8.10-getopt-generics")
    (version "0.13.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/getopt-generics/getopt-generics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rszkcn1rg38wf35538ljk5bbqjc57y9sb3a0al7qxm82gy8yigr"))))
    (properties `((upstream-name . "getopt-generics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-orphans)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-generics-sop)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-silently)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)))
    (home-page "https://github.com/soenkehahn/getopt-generics#readme")
    (synopsis "Create command line interfaces with ease")
    (description "Create command line interfaces with ease")
    (license license:bsd-3)))

haskell-8.10-getopt-generics

(define-public haskell-8.10-ghc-typelits-extra
  (package
    (name "haskell-8.10-ghc-typelits-extra")
    (version "0.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-typelits-extra/ghc-typelits-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06g40q0n2d10c2zksx5rrjkvm5ywi3rh41hbiwy4zs28x9idsv18"))))
    (properties `((upstream-name . "ghc-typelits-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-deverror")
       #:cabal-revision
       ("1" "0m6z24zmi169zifz1jg4zri0izr5z37qx33c9mphy74vd6ds3zzz")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-ghc-tcplugins-extra)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://www.clash-lang.org/")
    (synopsis "Additional type-level operations on GHC.TypeLits.Nat")
    (description
     "Additional type-level operations on @@GHC.TypeLits.Nat@@:

* @@Max@@: type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:max max>

* @@Min@@: type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:min min>

* @@Div@@: type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:div div>

* @@Mod@@: type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:mod mod>

* @@FLog@@: type-level equivalent of <https://hackage.haskell.org/package/integer-gmp/docs/GHC-Integer-Logarithms.html#v:integerLogBase-35- integerLogBase#>
i.e. the exact integer equivalent to @@floor (logBase x y)@@

* @@CLog@@: type-level equivalent of /the ceiling of/ <https://hackage.haskell.org/package/integer-gmp/docs/GHC-Integer-Logarithms.html#v:integerLogBase-35- integerLogBase#>
i.e. the exact integer equivalent to @@ceiling (logBase x y)@@

* @@Log@@: type-level equivalent of <https://hackage.haskell.org/package/integer-gmp/docs/GHC-Integer-Logarithms.html#v:integerLogBase-35- integerLogBase#>
where the operation only reduces when @@floor (logBase b x) ~ ceiling (logBase b x)@@

* @@GCD@@: a type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:gcd gcd>

* @@LCM@@: a type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:lcm lcm>

And a custom solver for the above operations defined in
@@GHC.TypeLits.Extra.Solver@@ as a GHC type-checker plugin. To use the plugin,
add the

@@
OPTIONS_GHC -fplugin GHC.TypeLits.Extra.Solver
@@

pragma to the header of your file.")
    (license license:bsd-2)))

haskell-8.10-ghc-typelits-extra

(define-public haskell-8.10-hackage-security
  (package
    (name "haskell-8.10-hackage-security")
    (version "0.6.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hackage-security/hackage-security-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1a349ma9ijypjzgj7xgkkr6rd8k49crdgx330h9vgmp7vlbcs8mz"))))
    (properties `((upstream-name . "hackage-security") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbase48" "-fuse-network-uri" "-f-cabal-syntax" "-f-old-directory" "-f-mtl21" "-flukko")
       #:cabal-revision
       ("2" "1r7jaf7vq90xlcsdq9snlz3d52zqcpijlby7abpzfw09v4mjjjqx")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-Cabal-syntax)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-ed25519)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-lukko)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tar)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell/hackage-security")
    (synopsis "Hackage security library")
    (description "The hackage security library provides both server and
client utilities for securing the Hackage package server
(<http://hackage.haskell.org/>).  It is based on The Update
Framework (<http://theupdateframework.com/>), a set of
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

haskell-8.10-hackage-security

(define-public haskell-8.10-hedgehog
  (package
    (name "haskell-8.10-hedgehog")
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hedgehog/hedgehog-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1qsqs8lmxa3wmw228cwi98vvvh9hqbc9d43i1sy2c9igw9xlhfi6"))))
    (properties `((upstream-name . "hedgehog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1p6vixwflgz2y1fc94kqxiv8s5jvq63xhp56cqwpw2s7d7g5chx1")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-concurrent-output)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-erf)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-lifted-async)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-mmorph)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-pretty-show)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-wl-pprint-annotated)))
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

haskell-8.10-hedgehog

(define-public haskell-8.10-higher-leveldb
  (package
    (name "haskell-8.10-higher-leveldb")
    (version "0.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/higher-leveldb/higher-leveldb-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gsqf92vp92a0jl3nchm40mxi5k7hnm7wjczhpkq0akka6b7ciy7"))))
    (properties `((upstream-name . "higher-leveldb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1g8fnqvxjcq332wrnls272ff8grcbrc875phm77nsmjb8q4wjqz7")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-leveldb-haskell)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages databases) leveldb)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jeremyjh/higher-leveldb")
    (synopsis "A rich monadic API for working with leveldb databases.")
    (description "A rich monadic API for working with leveldb databases.")
    (license license:bsd-3)))

haskell-8.10-higher-leveldb

(define-public haskell-8.10-hkgr
  (package
    (name "haskell-8.10-hkgr")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hkgr/hkgr-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1w8ww2dkskdfs0lh6wbn5byhnrf6mwih7n5yp81fr6awdc0k1qrm"))))
    (properties `((upstream-name . "hkgr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-simple-cabal)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-simple-cmd-args)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-typed-process)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-xdg-basedir)))
    (home-page "https://github.com/juhp/hkgr")
    (synopsis "Simple Hackage release workflow for package maintainers")
    (description
     "Hkgr (pronounced \"Hackager\") is a tool to help make new releases of
Haskell packages, with commands for git tagging, pristine sdist,
and uploading to Hackage.
There is also a command for creating a new local project.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-hkgr

(define-public haskell-8.10-hspec-golden
  (package
    (name "haskell-8.10-hspec-golden")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-golden/hspec-golden-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1d5ab34n0f1wk1q86qlb7x2b49abzzh08jh7j52nbrvnxld2j64l"))))
    (properties `((upstream-name . "hspec-golden") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-hspec-core)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-silently)))
    (home-page "https://github.com/stackbuilders/hspec-golden#readme")
    (synopsis "Golden tests for hspec")
    (description
     "Please see the README on GitHub at <https://github.com/stackbuilders/hspec-golden#README>")
    (license license:expat)))

haskell-8.10-hspec-golden

(define-public haskell-8.10-hspec-smallcheck
  (package
    (name "haskell-8.10-hspec-smallcheck")
    (version "0.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-smallcheck/hspec-smallcheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06c1ym793zkdwi4bxk5f4l7m1n1bg5jmnm0p68q2pa9rlhk1lc4s"))))
    (properties `((upstream-name . "hspec-smallcheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0bih2r7pdfca8jw9jii84nsx3q6xfwjylsilgwxx02xl35dv0nkp")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-orphans)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-call-stack)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-hspec-core)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-smallcheck)))
    (home-page "http://hspec.github.io/")
    (synopsis "SmallCheck support for the Hspec testing framework")
    (description "SmallCheck support for the Hspec testing framework")
    (license license:expat)))

haskell-8.10-hspec-smallcheck

(define-public haskell-8.10-http-date
  (package
    (name "haskell-8.10-http-date")
    (version "0.0.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-date/http-date-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1lzlrj2flcnz3k5kfhf11nk5n8m6kcya0lkwrsnzxgfr3an27y9j"))))
    (properties `((upstream-name . "http-date") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)))
    (home-page "https://hackage.haskell.org/package/http-date")
    (synopsis "HTTP Date parser/formatter")
    (description "Fast parser and formatter for HTTP Date")
    (license license:bsd-3)))

haskell-8.10-http-date

(define-public haskell-8.10-human-readable-duration
  (package
    (name "haskell-8.10-human-readable-duration")
    (version "0.2.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/human-readable-duration/human-readable-duration-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06yw7bab1hk8287d2zdg45m46pgp87fivh0cb2x1nxivvn1qfs6c"))))
    (properties `((upstream-name . "human-readable-duration") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-Glob)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)))
    (home-page
     "https://gitlab.esy.fun/yogsototh/human-readable-duration#readme")
    (synopsis "Provide duration helper")
    (description
     "This is a minimal Haskell library to display duration.

> let duration = 2 * ms + 3 * oneSecond + 2 * minute + 33*day + 2*year
> humanReadableDuration duration
> -- will return: \"2 years 33 days 2 min 3s 2ms\"
> getYears duration
> -- will return 2
> getDays duration
> -- will return 763
> getMs duration
> -- will return 65923323002")
    (license license:bsd-3)))

haskell-8.10-human-readable-duration

(define-public haskell-8.10-lame
  (package
    (name "haskell-8.10-lame")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lame/lame-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1bqq3aanfffdsl3v0am7jdfslcr6y372cq7jx36z7g09zy5mp2sp"))))
    (properties `((upstream-name . "lame") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("2" "15yjwhwxiqds425y7a4s1z9vdrgmqwq2y5kvl1d1xhw7h05ryxkr")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-htaglib)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-wave)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages mp3) lame)
                             (@ (gnu packages mp3) taglib)))
    (home-page "https://github.com/mrkkrp/lame")
    (synopsis "Fairly complete high-level binding to LAME encoder")
    (description "Fairly complete high-level binding to LAME encoder.")
    (license license:bsd-3)))

haskell-8.10-lame

(define-public haskell-8.10-list-transformer
  (package
    (name "haskell-8.10-list-transformer")
    (version "1.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/list-transformer/list-transformer-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1i8zmds67fyglbw1ygcyffly5ykq62p2hcm23vxrxvj3ryq9iih8"))))
    (properties `((upstream-name . "list-transformer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)))
    (home-page
     "https://github.com/Gabriel439/Haskell-List-Transformer-Library")
    (synopsis "List monad transformer")
    (description "This library provides a list monad transformer that
enriches lists with effects and streams efficiently in
constant space.

This library also has an extensive tutorial in the
\"List.Transformer\" module which explains the motivation
behind this type and how to use the type fluently.")
    (license license:bsd-3)))

haskell-8.10-list-transformer

(define-public haskell-8.10-load-env
  (package
    (name "haskell-8.10-load-env")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/load-env/load-env-" version
                    ".tar.gz"))
              (sha256
               (base32
                "184l0km1i6rfliq9nsj9p67ynsx6nlq466hf056lbgmrzvx6vv73"))))
    (properties `((upstream-name . "load-env") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)))
    (home-page "https://github.com/pbrisbin/load-env#readme")
    (synopsis "Load environment variables from a file.")
    (description
     "Parse a .env file and load any declared variables into the current process's environment. This allows for a .env file to specify development-friendly defaults for configuration values normally set in the deployment environment.")
    (license license:bsd-3)))

haskell-8.10-load-env

(define-public haskell-8.10-main-tester
  (package
    (name "haskell-8.10-main-tester")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/main-tester/main-tester-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hkqllckiq74mhnd76jd0cv5az6n0cf70xncy9r1jkip9s9za1ng"))))
    (properties `((upstream-name . "main-tester") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-doctest")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-hspec-core)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://gitlab.com/igrep/main-tester#readme")
    (synopsis
     "Capture stdout/stderr/exit code, and replace stdin of your main function.")
    (description "See README.md for detail.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-main-tester

(define-public haskell-8.10-markdown-unlit
  (package
    (name "haskell-8.10-markdown-unlit")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/markdown-unlit/markdown-unlit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0njzn56m8z6lm70xyixbylbnpjz1gk7x8vdsdvi3qld9m66gc3n7"))))
    (properties `((upstream-name . "markdown-unlit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-silently)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-stringbuilder)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)))
    (home-page "https://github.com/sol/markdown-unlit#readme")
    (synopsis "Literate Haskell support for Markdown")
    (description
     "Documentation is here: <https://github.com/sol/markdown-unlit#readme>")
    (license license:expat)))

haskell-8.10-markdown-unlit

(define-public haskell-8.10-matrix-as-xyz
  (package
    (name "haskell-8.10-matrix-as-xyz")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-matrix)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/narumij/matrix-as-xyz#readme")
    (synopsis
     "Read and Display Jones-Faithful notation for spacegroup and planegroup")
    (description
     "Please see the README on GitHub at <https://github.com/narumij/matrix-as-xyz#readme>")
    (license license:bsd-3)))

haskell-8.10-matrix-as-xyz

(define-public haskell-8.10-matrix-static
  (package
    (name "haskell-8.10-matrix-static")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-matrix)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/wchresta/matrix-static#readme")
    (synopsis "Type-safe matrix operations")
    (description
     "Please see the README on GitHub at <https://github.com/wchresta/matrix-static#readme>")
    (license license:bsd-3)))

haskell-8.10-matrix-static

(define-public haskell-8.10-microlens-process
  (package
    (name "haskell-8.10-microlens-process")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microlens-process/microlens-process-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dvhvrk1v0kjb45xnpjbr8b97vc6dx4cq34jfzkazqdp5jk5nlxp"))))
    (properties `((upstream-name . "microlens-process") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "04j2yap3ha45wq0slvxkd3gm7gkx2dks9abxfd6mg3asmdp743gk")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)))
    (home-page "https://github.com/emilypi/lens-process/tree/master/microlens")
    (synopsis "Micro-optics for the process library")
    (description
     "'microlens-process' is a set of multi-purpose optics and convenience
combinators for working with the `process` library, including
a more well-typed api for the parts that can be typed.")
    (license license:bsd-3)))

haskell-8.10-microlens-process

(define-public haskell-8.10-modular
  (package
    (name "haskell-8.10-modular")
    (version "0.1.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/modular/modular-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1igg7am4z1kfvpyp5a53rsqan5i209rp1s0z9xamqydx60ilc2s3"))))
    (properties `((upstream-name . "modular") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (outputs (list "out" "static"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-ghc-typelits-knownnat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/pgujjula/modular#readme")
    (synopsis "Type-safe modular arithmetic")
    (description
     "Please see the GitHub page at <https://github.com/pgujjula/modular> for installation instructions, and the module documentation for Numeric.Modular for usage instructions.")
    (license license:bsd-3)))

haskell-8.10-modular

(define-public haskell-8.10-mpi-hs-binary
  (package
    (name "haskell-8.10-mpi-hs-binary")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mpi-hs-binary/mpi-hs-binary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10wlrm31drjgdviqzsvxlnj1mn1lli3n41z1xbfp0i80vmh29av3"))))
    (properties `((upstream-name . "mpi-hs-binary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-monad-loops)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-mpi-hs)))
    (propagated-inputs (list (@ (gnu packages mpi) mpich)))
    (home-page "https://github.com/eschnett/mpi-hs-binary#readme")
    (synopsis "MPI bindings for Haskell")
    (description
     "MPI (the [Message Passinag Interface](https://www.mpi-forum.org)) is
a widely used standard for distributed-memory programming on HPC
(High Performance Computing) systems. MPI allows exchanging data
(_messages_) between programs running in parallel. There are several
high-quality open source MPI implementations (e.g. MPICH, MVAPICH,
OpenMPI) as well as a variety of closed-source implementations.
These libraries can typically make use of high-bandwidth low-latency
communication hardware such as InfiniBand.

This library @@mpi-hs@@ provides Haskell bindings for MPI. It is based
on ideas taken from
[haskell-mpi](https://github.com/bjpop/haskell-mpi),
[Boost.MPI](https://www.boost.org/doc/libs/1_64_0/doc/html/mpi.html)
for C++, and [MPI for
Python](https://mpi4py.readthedocs.io/en/stable/).

@@mpi-hs@@ provides two API levels: A low-level API gives rather
direct access to the actual MPI API, apart from certain \"reasonable\"
mappings from C to Haskell (e.g. output arguments that are in C
stored via a pointer are in Haskell regular return values). A
high-level API simplifies exchanging arbitrary values that can be
serialized.

Note that the automated builds on
[Hackage](http://hackage.haskell.org) will currently always fail
since no system MPI library is present there. However, builds on
[Stackage](https://www.stackage.org) should succeed -- if not, there
is an error in this package.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-mpi-hs-binary

(define-public haskell-8.10-mpi-hs-cereal
  (package
    (name "haskell-8.10-mpi-hs-cereal")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mpi-hs-cereal/mpi-hs-cereal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sdizjk4xpc2hdh71s9ckjhq22appqj1c9s10mwxjgb9vd7bz07b"))))
    (properties `((upstream-name . "mpi-hs-cereal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-monad-loops)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-mpi-hs)))
    (propagated-inputs (list (@ (gnu packages mpi) mpich)))
    (home-page "https://github.com/eschnett/mpi-hs-cereal#readme")
    (synopsis "MPI bindings for Haskell")
    (description
     "MPI (the [Message Passinag Interface](https://www.mpi-forum.org)) is
a widely used standard for distributed-memory programming on HPC
(High Performance Computing) systems. MPI allows exchanging data
(_messages_) between programs running in parallel. There are several
high-quality open source MPI implementations (e.g. MPICH, MVAPICH,
OpenMPI) as well as a variety of closed-source implementations.
These libraries can typically make use of high-bandwidth low-latency
communication hardware such as InfiniBand.

This library @@mpi-hs@@ provides Haskell bindings for MPI. It is based
on ideas taken from
[haskell-mpi](https://github.com/bjpop/haskell-mpi),
[Boost.MPI](https://www.boost.org/doc/libs/1_64_0/doc/html/mpi.html)
for C++, and [MPI for
Python](https://mpi4py.readthedocs.io/en/stable/).

@@mpi-hs@@ provides two API levels: A low-level API gives rather
direct access to the actual MPI API, apart from certain \"reasonable\"
mappings from C to Haskell (e.g. output arguments that are in C
stored via a pointer are in Haskell regular return values). A
high-level API simplifies exchanging arbitrary values that can be
serialized.

Note that the automated builds on
[Hackage](http://hackage.haskell.org) will currently always fail
since no system MPI library is present there. However, builds on
[Stackage](https://www.stackage.org) should succeed -- if not, there
is an error in this package.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-mpi-hs-cereal

(define-public haskell-8.10-mwc-random
  (package
    (name "haskell-8.10-mwc-random")
    (version "0.15.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mwc-random/mwc-random-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ny2mw4am24d6ykrm8rbcjnrq6p2cjmzjb4m6qfk54wfdxflvmim"))))
    (properties `((upstream-name . "mwc-random") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "15q5pax8708shpmmf2ql6ximsidzmfsrqkf4ix3dljz65jvhz7hh")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-math-functions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/bos/mwc-random")
    (synopsis "Fast, high quality pseudo random number generation")
    (description
     "This package contains code for generating high quality random
numbers that follow either a uniform or normal distribution.  The
generated numbers are suitable for use in statistical applications.

The uniform PRNG uses Marsaglia's MWC256 (also known as MWC8222)
multiply-with-carry generator, which has a period of 2^8222 and
fares well in tests of randomness.  It is also extremely fast,
between 2 and 3 times faster than the Mersenne Twister.

Compared to the mersenne-random package, this package has a more
convenient API, is faster, and supports more statistical
distributions.")
    (license license:bsd-3)))

haskell-8.10-mwc-random

(define-public haskell-8.10-netlib-carray
  (package
    (name "haskell-8.10-netlib-carray")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/netlib-carray/netlib-carray-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rh4m4xxwm8n0577khqa2cx74hnwmgz94phq2rwhsdppg6dd2xx5"))))
    (properties `((upstream-name . "netlib-carray") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-carray)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-netlib-ffi)))
    (home-page "http://hub.darcs.net/thielema/netlib-carray/")
    (synopsis "Helper modules for CArray wrappers to BLAS and LAPACK")
    (description
     "Netlib is a collection of packages for efficient numeric linear algebra.
Most prominent parts of Netlib are BLAS and LAPACK.
These packages contain functions for matrix computations,
solution of simultaneous linear equations and eigenvalue problems.

This package provides definitions shared by
the packages @@blas-carray@@ and @@lapack-carray@@.")
    (license license:bsd-3)))

haskell-8.10-netlib-carray

(define-public haskell-8.10-network-byte-order
  (package
    (name "haskell-8.10-network-byte-order")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-byte-order/network-byte-order-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pnwcg13k4qw82n0zc1xibyc24sc77y79j5a62pqdmjrnz4wrc7j"))))
    (properties `((upstream-name . "network-byte-order") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0fpyfd1adg9fr7w6afxkx306c0kaz3ji3x78sl29v9j3mh4vdn13")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)))
    (home-page "https://hackage.haskell.org/package/network-byte-order")
    (synopsis "Network byte order utilities")
    (description "Peek and poke functions for network byte order.")
    (license license:bsd-3)))

haskell-8.10-network-byte-order

(define-public haskell-8.10-nonempty-vector
  (package
    (name "haskell-8.10-nonempty-vector")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/nonempty-vector/nonempty-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0w6fn8dinf8lcbhr5797i5kyixpasylpwn97ljmkjc6n3ad1b21y"))))
    (properties `((upstream-name . "nonempty-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "18w57f8sdix71a27gwbifw7hmg34lms22c99gp7i7j7g154f3cn3")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/emilypi/nonempty-vector")
    (synopsis "Non-empty vectors")
    (description "Performant, non-empty mutable and immutable vectors")
    (license license:bsd-3)))

haskell-8.10-nonempty-vector

(define-public haskell-8.10-nonempty-zipper
  (package
    (name "haskell-8.10-nonempty-zipper")
    (version "1.0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/nonempty-zipper/nonempty-zipper-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cifrld76j43spf265arwp2sdpkbhrb4ca2fmj4g9mw0nxj4dbqq"))))
    (properties `((upstream-name . "nonempty-zipper") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-Glob)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)))
    (home-page "https://github.com/freckle/nonempty-zipper#readme")
    (synopsis "A non-empty comonadic list zipper")
    (description "A non-empty comonadic list zipper")
    (license license:expat)))

haskell-8.10-nonempty-zipper

(define-public haskell-8.10-numhask
  (package
    (name "haskell-8.10-numhask")
    (version "0.7.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/numhask/numhask-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1qkrmbz72zmmpn5mpqvz0k46b5yvkhwbiwkx8z06291xyz3qn9cx"))))
    (properties `((upstream-name . "numhask") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-mmorph)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-protolude)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)))
    (home-page "https://github.com/tonyday567/numhask#readme")
    (synopsis "A numeric class hierarchy.")
    (description
     "This package provides numeric classes alternate to the prelude specified in [haskell98](https://www.haskell.org/onlinereport/standard-prelude.html).

The numeric class constellation looks somewhat like:

![nh](docs/other/nh.svg)

== Usage

>>> @{-# LANGUAGE NegativeLiterals #-@}
>>> @{-# LANGUAGE RebindableSyntax #-@}
>>> import NumHask.Prelude

See \"NumHask\" for a detailed overview.")
    (license license:bsd-3)))

haskell-8.10-numhask

(define-public haskell-8.10-openexr-write
  (package
    (name "haskell-8.10-openexr-write")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/openexr-write/openexr-write-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qh5kb3gj746y6s2jggccjgp8qyzdydz016z62854vg39sk5a1ib"))))
    (properties `((upstream-name . "openexr-write") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-vector-split)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "git://klacansky.com/openexr-write.git")
    (synopsis "Library for writing images in OpenEXR HDR file format.")
    (description
     "OpenEXR allows to store pixels as floating point numbers and thus can capture high dynamic range.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-openexr-write

(define-public haskell-8.10-pgp-wordlist
  (package
    (name "haskell-8.10-pgp-wordlist")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pgp-wordlist/pgp-wordlist-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15g6qh0fb7kjj3l0w8cama7cxgnhnhybw760md9yy7cqfq15cfzg"))))
    (properties `((upstream-name . "pgp-wordlist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/quchen/pgp-wordlist")
    (synopsis "Translate between binary data and a human-readable
collection of words.")
    (description "Translate between binary data and a human-readable
collection of words.

The PGP Word List consists of two phonetic alphabets, each
with one word per possible byte value. A string of bytes
is translated with these alphabets, alternating between
them at each byte.

The PGP words corresponding to the bytes @@5B 1D CA 6E@@
are \"erase breakaway spellbind headwaters\", for example.

For further information, see
<http://en.wikipedia.org/wiki/PGP_word_list Wikipedia>.")
    (license license:bsd-3)))

haskell-8.10-pgp-wordlist

(define-public haskell-8.10-posix-paths
  (package
    (name "haskell-8.10-posix-paths")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)))
    (home-page "https://hackage.haskell.org/package/posix-paths")
    (synopsis "POSIX filepath/directory functionality")
    (description
     "This package gives access to certain POSIX-based Filepath/Directory
services.

The package is not supported under Windows (except under Cygwin).")
    (license license:bsd-3)))

haskell-8.10-posix-paths

(define-public haskell-8.10-prometheus-metrics-ghc
  (package
    (name "haskell-8.10-prometheus-metrics-ghc")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-prometheus-client)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)))
    (home-page "https://github.com/fimad/prometheus-haskell")
    (synopsis
     "Metrics exposing GHC runtime information for use with prometheus-client.")
    (description
     "Metrics exposing GHC runtime information for use with prometheus-client.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-prometheus-metrics-ghc

(define-public haskell-8.10-ranged-list
  (package
    (name "haskell-8.10-ranged-list")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ranged-list/ranged-list-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0v0a80g17r8dap28gm83wnk32m3snlmw1r51vvwfb74a4q3613w8"))))
    (properties `((upstream-name . "ranged-list") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-typecheck-plugin-nat-simple)))
    (home-page "https://github.com/YoshikuniJujo/ranged-list#readme")
    (synopsis
     "The list like structure whose length or range of length can be specified")
    (description
     "Please see the README on GitHub at <https://github.com/YoshikuniJujo/ranged-list#readme>")
    (license license:bsd-3)))

haskell-8.10-ranged-list

(define-public haskell-8.10-read-env-var
  (package
    (name "haskell-8.10-read-env-var")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/read-env-var/read-env-var-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0p5pw1y6wcq03bdixircf6bb9qjq2aci6bvpmqwfi360dwbwiwq3"))))
    (properties `((upstream-name . "read-env-var") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-Glob)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)))
    (home-page "https://github.com/cdepillabout/read-env-var#readme")
    (synopsis "Functions for safely reading environment variables.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.10-read-env-var

(define-public haskell-8.10-rpmbuild-order
  (package
    (name "haskell-8.10-rpmbuild-order")
    (version "0.4.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rpmbuild-order/rpmbuild-order-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lz6w2nd8yq0arfpp6vnv7lazr9289wan00b6layfdhlql9f21vl"))))
    (properties `((upstream-name . "rpmbuild-order") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "05arkmpbh5fdqbqhkwl76isbigrsc0f54zkbdl21jap6k4g9kzsk")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-fgl)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-graphviz)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-simple-cmd-args)))
    (home-page "https://github.com/juhp/rpmbuild-order")
    (synopsis "Sort RPM packages in dependency order")
    (description
     "The rpmbuild-order tool sorts source RPM packages by build dependencies,
so that they can be built in a correct order. It does this by reading RPM
package spec files and then topologically sorts them according to their
build dependencies. The code evolved from cabal-sort by Henning Thielemann.
It can also order the dependencies or reverse depends of one or more packages
among the packages checked out in neighboring directories (which can be
useful to see what packages are affected when a low-level package changes).
It also has support for setting RPM options for bcond etc,
which can affect dependencies. It can also output dependency graphs.
Since version 0.4, a library API is also provided.")
    (license license:bsd-3)))

haskell-8.10-rpmbuild-order

(define-public haskell-8.10-safe-decimal
  (package
    (name "haskell-8.10-safe-decimal")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safe-decimal/safe-decimal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1q7l8rj5hhkxxhmmibcm0by7psvkw9lj82zd48slyfikmsdm9bdw"))))
    (properties `((upstream-name . "safe-decimal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)))
    (home-page "https://github.com/fpco/safe-decimal#readme")
    (synopsis
     "Safe and very efficient arithmetic operations on fixed decimal point numbers")
    (description
     "Please see the README on GitHub at <https://github.com/fpco/safe-decimal#readme>")
    (license license:bsd-3)))

haskell-8.10-safe-decimal

(define-public haskell-8.10-search-algorithms
  (package
    (name "haskell-8.10-search-algorithms")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/search-algorithms/search-algorithms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lkpsr4vwf77slgwxc38xmhkwwxbh360gjqhblysrph7rl9w7sh7"))))
    (properties `((upstream-name . "search-algorithms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/devonhollowood/search-algorithms#readme")
    (synopsis "Common graph search algorithms")
    (description "Library containing common graph search algorithms,
including depth-first and breadth-first searches,
Dijkstra's algorithm, and A*")
    (license license:bsd-3)))

haskell-8.10-search-algorithms

(define-public haskell-8.10-selda-sqlite
  (package
    (name "haskell-8.10-selda-sqlite")
    (version "0.1.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/selda-sqlite/selda-sqlite-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1a1rik32h8ijd98v98db1il10ap76rqdwmjwhj0hc0h77mm6qdfb"))))
    (properties `((upstream-name . "selda-sqlite") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-haste")
       #:cabal-revision
       ("1" "05zdf07fizf97yby0ld4qkd5padxg9fhmpfiiii4jl7xklccnl6p")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-direct-sqlite)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-selda)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-uuid-types)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/valderman/selda")
    (synopsis "SQLite backend for the Selda database EDSL.")
    (description "Allows the Selda database EDSL to be used with SQLite
databases.")
    (license license:expat)))

haskell-8.10-selda-sqlite

(define-public haskell-8.10-shelly
  (package
    (name "haskell-8.10-shelly")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-enclosed-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-hspec-contrib)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-lifted-async)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-lifted-base)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unix-compat)))
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

haskell-8.10-shelly

(define-public haskell-8.10-soxlib
  (package
    (name "haskell-8.10-soxlib")
    (version "0.0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/soxlib/soxlib-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0f7ci58yls5rhq1vy1q1imlsgkbvadv8646fvvymg0jq2mjwgsfd"))))
    (properties `((upstream-name . "soxlib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexamples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-explicit-exception)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-sample-frame)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-storablevector)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages audio) sox)))
    (home-page "http://www.haskell.org/haskellwiki/Sox")
    (synopsis "Write, read, convert audio signals using libsox")
    (description
     "This is an FFI binding to @@libsox@@ of the Sox (Sound Exchanger) project
<http://sox.sourceforge.net/>.
It lets write, read and convert audio signals
in various formats, resolutions, and numbers of channels.

The package @@sox@@ has similar functionality
but calls the @@sox@@ shell command.")
    (license license:bsd-3)))

haskell-8.10-soxlib

(define-public haskell-8.10-sqlite-simple
  (package
    (name "haskell-8.10-sqlite-simple")
    (version "0.4.18.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sqlite-simple/sqlite-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00icsf8pgrcqcn5562lmn12yz1f16a2v2q6bl90iknvjyrk1hgzp"))))
    (properties `((upstream-name . "sqlite-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-Only)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-blaze-textual)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-direct-sqlite)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/nurpax/sqlite-simple")
    (synopsis "Mid-Level SQLite client library")
    (description
     "Mid-level SQLite client library, based on postgresql-simple.

Main documentation (with examples): <sqlite-simple/docs/Database-SQLite-Simple.html Database.SQLite.Simple>

You can view the project page at <http://github.com/nurpax/sqlite-simple>
for more information.")
    (license license:bsd-3)))

haskell-8.10-sqlite-simple

(define-public haskell-8.10-tasty-golden
  (package
    (name "haskell-8.10-tasty-golden")
    (version "2.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-golden/tasty-golden-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03klnxn9rcv0l7fl4w8q6s59fzl1328j1wzwi1za4gb0l90vadwb"))))
    (properties `((upstream-name . "tasty-golden") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-example")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-typed-process)))
    (home-page "https://github.com/UnkindPartition/tasty-golden")
    (synopsis "Golden tests support for tasty")
    (description
     "This package provides support for «golden testing».
A golden test is an IO action that writes its result to a file.
To pass the test, this output file should be identical to the corresponding
«golden» file, which contains the correct result for the test.
To get started with golden testing and this library, see
<https://ro-che.info/articles/2017-12-04-golden-tests Introduction to golden testing>.")
    (license license:expat)))

haskell-8.10-tasty-golden

(define-public haskell-8.10-tasty-silver
  (package
    (name "haskell-8.10-tasty-silver")
    (version "3.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-silver/tasty-silver-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nvh2k8iqqkanmp7lpwd3asimyarzisly8wavbdahcxryn0j4xb7"))))
    (properties `((upstream-name . "tasty-silver") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1lm4c93sy9bscg3594kycwr6i5rkzh5fc4r3gxrgy8v0ianm4l7a")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-process-extras)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-silently)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)))
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

haskell-8.10-tasty-silver

(define-public haskell-8.10-tasty-smallcheck
  (package
    (name "haskell-8.10-tasty-smallcheck")
    (version "0.8.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-smallcheck/tasty-smallcheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0csgwn3vch0jnpqyyfnrfjq4z0dpl67imh5a7byll3hhlyidgjym"))))
    (properties `((upstream-name . "tasty-smallcheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0033ha2w9rzc1rxpzh1dkfdrn256i5lvb41pqbdh2i6kli0v5vmh")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-smallcheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)))
    (home-page "https://github.com/feuerbach/tasty")
    (synopsis "SmallCheck support for the Tasty test framework.")
    (description "SmallCheck support for the Tasty test framework.")
    (license license:expat)))

haskell-8.10-tasty-smallcheck

(define-public haskell-8.10-test-framework-smallcheck
  (package
    (name "haskell-8.10-test-framework-smallcheck")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/test-framework-smallcheck/test-framework-smallcheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xpgpk1gp4w7w46b4rhj80fa0bcyz8asj2dcjb5x1c37b7rw90b0"))))
    (properties `((upstream-name . "test-framework-smallcheck")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-smallcheck)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)))
    (home-page "https://github.com/feuerbach/smallcheck")
    (synopsis "Support for SmallCheck tests in test-framework")
    (description "Support for SmallCheck tests in test-framework")
    (license license:bsd-3)))

haskell-8.10-test-framework-smallcheck

(define-public haskell-8.10-text-regex-replace
  (package
    (name "haskell-8.10-text-regex-replace")
    (version "0.1.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-regex-replace/text-regex-replace-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19n7zwnrm4da8ifhwlqwrx969pni0njj5f69j30gp71fi9ihjgsb"))))
    (properties `((upstream-name . "text-regex-replace") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-smallcheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-text-icu)))
    (propagated-inputs (list (@ (gnu packages icu4c) icu4c-71)))
    (home-page "https://hackage.haskell.org/package/text-regex-replace")
    (synopsis "Easy replacement when using text-icu regexes.")
    (description
     "This provides a convenient API for doing replacements off of a regular
expression, similar to what regex libraries in other languages provide.

At this point, this hasn't been used enough to have any idea of its
performance. Caveat emptor.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-text-regex-replace

(define-public haskell-8.10-th-reify-many
  (package
    (name "haskell-8.10-th-reify-many")
    (version "0.1.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-reify-many/th-reify-many-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19g4gc1q3zxbylmvrgk3dqjzychq2k02i7fwvs3vhbrg4ihhw9cx"))))
    (properties `((upstream-name . "th-reify-many") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-th-expand-syns)))
    (home-page "http://github.com/mgsloan/th-reify-many")
    (synopsis "Recurseively reify template haskell datatype info")
    (description
     "@@th-reify-many@@ provides functions for recursively reifying top
level declarations.  The main intended use case is for enumerating
the names of datatypes reachable from an initial datatype, and
passing these names to some function which generates instances.")
    (license license:bsd-3)))

haskell-8.10-th-reify-many

(define-public haskell-8.10-tidal
  (package
    (name "haskell-8.10-tidal")
    (version "1.7.10")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tidal/tidal-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0vfymixr66sj6zsadkbcx0yx722f2d3q6cic4c91cswxssfqfrhc"))))
    (properties `((upstream-name . "tidal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-clock)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-colour)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-hint)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-hosc)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-microspec)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)))
    (home-page "http://tidalcycles.org/")
    (synopsis "Pattern language for improvised music")
    (description
     "Tidal is a domain specific language for live coding patterns.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-tidal

(define-public haskell-8.10-type-errors
  (package
    (name "haskell-8.10-type-errors")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-errors/type-errors-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1d1fi4ij18q39rpibc056mgvly75zqixkba4l8bn307c62f50k8p"))))
    (properties `((upstream-name . "type-errors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0ig8qd2g8rd5n78039xhbq7n8r514f8kvbh0mgajav2a5lp549s1")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-first-class-families)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-abstraction)))
    (home-page "https://github.com/isovector/type-errors#readme")
    (synopsis "Tools for writing better type errors")
    (description
     "Please see the README on GitHub at <https://github.com/isovector/type-errors#readme>")
    (license license:bsd-3)))

haskell-8.10-type-errors

(define-public haskell-8.10-type-errors-pretty
  (package
    (name "haskell-8.10-type-errors-pretty")
    (version "0.0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-errors-pretty/type-errors-pretty-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01zdb5mw77d5rj3yvabqdch132mjw49awpjnjvms20hdhwjgqb6b"))))
    (properties `((upstream-name . "type-errors-pretty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-Glob)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)))
    (home-page "https://github.com/kowainik/type-errors-pretty")
    (synopsis "Combinators for writing pretty type errors easily")
    (description
     "This library provides replacements for the @@ErrorMessage@@ constructors to
write the text of custom error messages easily.")
    (license license:mpl2.0)))

haskell-8.10-type-errors-pretty

(define-public haskell-8.10-type-level-kv-list
  (package
    (name "haskell-8.10-type-level-kv-list")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-level-kv-list/type-level-kv-list-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wvxgxp7rlqbf2crcpb9pbzl3k47i7pc16ih4zfwgv88j7jk5w2g"))))
    (properties `((upstream-name . "type-level-kv-list") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-Glob)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)))
    (home-page "https://github.com/arowM/type-level-kv-list#readme")
    (synopsis "A module for hash map like object with type level keys.")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.10-type-level-kv-list

(define-public haskell-8.10-unicode-collation
  (package
    (name "haskell-8.10-unicode-collation")
    (version "0.1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unicode-collation/unicode-collation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1b04ml07ghfsh9cmp6b0l8c6ywxrn3c4xs7swvlmxx64asmicf3i"))))
    (properties `((upstream-name . "unicode-collation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-doctests" "-f-executable")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-th-lift-instances)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unicode-transforms)))
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

haskell-8.10-unicode-collation

(define-public haskell-8.10-unix-time
  (package
    (name "haskell-8.10-unix-time")
    (version "0.4.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unix-time/unix-time-" version
                    ".tar.gz"))
              (sha256
               (base32
                "02fyh298lm8jsg52i3z0ikazwz477ljqjmhnqr2d88grmn5ky8qr"))))
    (properties `((upstream-name . "unix-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hsc2hs)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-old-time)))
    (home-page "https://hackage.haskell.org/package/unix-time")
    (synopsis "Unix time parser/formatter and utilities")
    (description "Fast parser\\/formatter\\/utilities for Unix time")
    (license license:bsd-3)))

haskell-8.10-unix-time

(define-public haskell-8.10-unordered-containers
  (package
    (name "haskell-8.10-unordered-containers")
    (version "0.2.16.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unordered-containers/unordered-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vs97x7qzb0n9qwdpi1ffym2yr2rgnlc8nxjrpl4k8b2yay6ikxw"))))
    (properties `((upstream-name . "unordered-containers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-ChasingBottoms)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-quickcheck2)))
    (home-page
     "https://github.com/haskell-unordered-containers/unordered-containers")
    (synopsis "Efficient hashing-based container types")
    (description
     "Efficient hashing-based container types.  The containers have been
optimized for performance critical use, both in terms of large data
quantities and high speed.

The declared cost of each operation is either worst-case or
amortized, but remains valid even if structures are shared.

/Security/

This package currently provides no defenses against hash collision attacks
such as HashDoS.
Users who need to store input from untrusted sources are advised to use
@@Data.Map@@ or @@Data.Set@@ from the @@containers@@ package instead.")
    (license license:bsd-3)))

haskell-8.10-unordered-containers

(define-public haskell-8.10-vcs-ignore
  (package
    (name "haskell-8.10-vcs-ignore")
    (version "0.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vcs-ignore/vcs-ignore-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0cyab0mj225j79fpk4386iz4llpzisxpipb0v2i773psz4saw8ar"))))
    (properties `((upstream-name . "vcs-ignore") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-Glob)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)))
    (home-page "https://github.com/vaclavsvejcar/vcs-ignore")
    (synopsis "Library for handling files ignored by VCS systems.")
    (description
     "vcs-ignore is small Haskell library used to find, check and process files ignored by selected VCS.")
    (license license:bsd-3)))

haskell-8.10-vcs-ignore

(define-public haskell-8.10-xmonad-extras
  (package
    (name "haskell-8.10-xmonad-extras")
    (version "0.15.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xmonad-extras/xmonad-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nh8v057fjdr3lnx7mdbifw153z6nirx36zfsjz8lc6p45ik0qs9"))))
    (properties `((upstream-name . "xmonad-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fwith_sound" "-fwith_hint" "-fwith_mpd" "-f-with_hlist" "-fwith_regex_posix" "-fwith_template_haskell" "-fwith_brightness" "-f-testing")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-X11)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-alsa-mixer)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-hint)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-libmpd)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-regex-posix)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-xmonad)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-xmonad-contrib)))
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

haskell-8.10-xmonad-extras

(define-public haskell-8.10-zeromq4-patterns
  (package
    (name "haskell-8.10-zeromq4-patterns")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zeromq4-patterns/zeromq4-patterns-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1n9yndiw0z2asslkx2nlx56w3qhb55p7ih03j52889m2f8maiwvl"))))
    (properties `((upstream-name . "zeromq4-patterns") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-zeromq4-haskell)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hverr/zeromq4-patterns#readme")
    (synopsis "Haskell implementation of several ZeroMQ patterns.")
    (description
     "Haskell implementation of several ZeroMQ patterns that you can find in the
official ZeroMQ guide.")
    (license license:bsd-3)))

haskell-8.10-zeromq4-patterns

