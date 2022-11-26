;;; generated file
(define-module (gnu packages stackage ghc-8.6 stage006)
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
(define-public haskell-8.6-Cabal
  (package
    (name "haskell-8.6-Cabal")
    (version "2.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Cabal/Cabal-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "151mrrd9sskghvlwmj32da5gafwqj6sv9xz9fmp84b7vm4nr0skk"))))
    (properties `((upstream-name . "Cabal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bundled-binary-generic")
       #:cabal-revision
       ("2" "04kg5xh8yabmp1ymk32gw2r66l76338rsglq8i4j2913bhq23vwa")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)))
    (home-page "http://www.haskell.org/cabal/")
    (synopsis "A framework for packaging Haskell software")
    (description
     "The Haskell Common Architecture for Building Applications and
Libraries: a framework defining a common interface for authors to more
easily build their Haskell applications in a portable way.

The Haskell Cabal is part of a larger infrastructure for distributing,
organizing, and cataloging Haskell libraries and tools.")
    (license license:bsd-3)))

haskell-8.6-Cabal

(define-public haskell-8.6-HStringTemplate
  (package
    (name "haskell-8.6-HStringTemplate")
    (version "0.8.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HStringTemplate/HStringTemplate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03kbmyh0713j3qhhrl7jqbmsvyq1q82h2yxq45cc9rs55sma8kjg"))))
    (properties `((upstream-name . "HStringTemplate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "082d1lm6q1jb7rrl20jz0y4ca1qf87ihbq3v6mji9ibacl6adjaq")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-void)))
    (home-page "https://hackage.haskell.org/package/HStringTemplate")
    (synopsis "StringTemplate implementation in Haskell.")
    (description "A port of the Java library by Terrence Parr.")
    (license license:bsd-3)))

haskell-8.6-HStringTemplate

(define-public haskell-8.6-HsYAML
  (package
    (name "haskell-8.6-HsYAML")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HsYAML/HsYAML-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1pajfhj16559v64ixm8j7bvxdqmxg6c3c0z3wz7in8ckswgzfp54"))))
    (properties `((upstream-name . "HsYAML") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-exe")
       #:cabal-revision
       ("1" "0j6qmmcz5yqh89hs2cq453maix50q61vl2h0ahj5lg02bygn42cf")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)))
    (home-page "https://github.com/hvr/HsYAML")
    (synopsis "Pure Haskell YAML 1.2 parser")
    (description
     "@@HsYAML@@ is a [YAML 1.2](http://yaml.org/spec/1.2/spec.html) parser implementation for Haskell.

Features of @@HsYAML@@ include:

* Pure Haskell implementation with small dependency footprint and emphasis on strict compliance with the [YAML 1.2 specification](http://yaml.org/spec/1.2/spec.html).
* Direct decoding to native Haskell types via (@@aeson@@-inspired) typeclass-based API (see \"Data.YAML\").
* Support for constructing custom YAML node graph representation (including support for cyclic YAML data structures).
* Support for the standard (untyped) /Failsafe/, (strict) /JSON/, and (flexible) /Core/ \\\"schemas\\\" providing implicit typing rules as defined in the YAML 1.2 specification (including support for user-defined custom schemas).
* Event-based API resembling LibYAML's Event-based API (see \"Data.YAML.Event\").
* Low-level API access to lexical token-based scanner (see \"Data.YAML.Token\").
")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-HsYAML

(define-public haskell-8.6-MissingH
  (package
    (name "haskell-8.6-MissingH")
    (version "1.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/MissingH/MissingH-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1jp0vk6w9a7fzrbxfhx773105jp2s1n50klq9ak6spfl7bgx5v29"))))
    (properties `((upstream-name . "MissingH") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1k7d8cgvpmln4imcrfpj4c02n3c5l1gkd5hs4hnar9ln0qh61cfx")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-hslogger)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-old-time)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-regex-compat)))
    (home-page "http://software.complete.org/missingh")
    (synopsis "Large utility library")
    (description
     "MissingH is a library of all sorts of utility functions for
Haskell programmers.  It is written in pure Haskell and thus should
be extremely portable and easy to use.")
    (license license:bsd-3)))

haskell-8.6-MissingH

(define-public haskell-8.6-ParsecTools
  (package
    (name "haskell-8.6-ParsecTools")
    (version "0.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ParsecTools/ParsecTools-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11vshnbxfl8p38aix4h2b0vms8j58agwxbmhd9pkxai764sl6j7g"))))
    (properties `((upstream-name . "ParsecTools") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)))
    (home-page "https://hackage.haskell.org/package/ParsecTools")
    (synopsis "Parsec combinators for more complex objects.")
    (description "Combined parsers for complex objects: floating point, and
integral numbers.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-ParsecTools

(define-public haskell-8.6-alsa-pcm
  (package
    (name "haskell-8.6-alsa-pcm")
    (version "0.6.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/alsa-pcm/alsa-pcm-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1mllr9nbm3qb837zgvd6mrpr6f8i272wflv0a45rrpsq50zgcj33"))))
    (properties `((upstream-name . "alsa-pcm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-buildexamples" "-f-buildsynthesizer" "-f-debug")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages linux) alsa-lib)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-alsa-core)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-sample-frame)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-storable-record)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://www.haskell.org/haskellwiki/ALSA")
    (synopsis "Binding to the ALSA Library API (PCM audio).")
    (description
     "This package provides access to ALSA realtime audio signal input and output.
For MIDI support see alsa-seq.")
    (license license:bsd-3)))

haskell-8.6-alsa-pcm

(define-public haskell-8.6-async
  (package
    (name "haskell-8.6-async")
    (version "2.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/async/async-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1zxvfcyy4sg8lmzphi5dgnavksj5pav6rbvd5kc48lf4hanb2jjb"))))
    (properties `((upstream-name . "async") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-bench")
       #:cabal-revision
       ("1" "1kg9xmby0wkx31998h2r43yr8bl1aixk6025zqigz9vdhmkc2y51")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)))
    (home-page "https://github.com/simonmar/async")
    (synopsis "Run IO operations asynchronously and wait for their results")
    (description "This package provides a higher-level interface over
threads, in which an @@Async a@@ is a concurrent
thread that will eventually deliver a value of
type @@a@@.  The package provides ways to create
@@Async@@ computations, wait for their results, and
cancel them.

Using @@Async@@ is safer than using threads in two
ways:

* When waiting for a thread to return a result,
if the thread dies with an exception then the
caller must either re-throw the exception
('wait') or handle it ('waitCatch'); the
exception cannot be ignored.

* The API makes it possible to build a tree of
threads that are automatically killed when
their parent dies (see 'withAsync').")
    (license license:bsd-3)))

haskell-8.6-async

(define-public haskell-8.6-audacity
  (package
    (name "haskell-8.6-audacity")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/audacity/audacity-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1916phnj3m12apyjarmda48xr2bq19rfn7sn6nskkbg6qjqxzlnr"))))
    (properties `((upstream-name . "audacity") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexamples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-explicit-exception)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-non-empty)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-storable-record)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-storablevector)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-tagchup)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-xml-basic)))
    (home-page "http://hub.darcs.net/thielema/audacity")
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

haskell-8.6-audacity

(define-public haskell-8.6-bencode
  (package
    (name "haskell-8.6-bencode")
    (version "0.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bencode/bencode-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "12pnh598k30ggs54f0pic19j7ji8f4xn7fydkdnlig79rvzgv3iv"))))
    (properties `((upstream-name . "bencode") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0nvph7frmrra9k57v01saxgnhf1ma3m8qzwj1i53pswssfnj41mv")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)))
    (home-page "https://hackage.haskell.org/package/bencode")
    (synopsis "Parser and printer for bencoded data.")
    (description
     "Parser and printer for bencoded data.

Bencode (pronounced like B encode) is the encoding used by the
peer-to-peer file sharing system BitTorrent for storing and
transmitting loosely structured data.")
    (license license:bsd-3)))

haskell-8.6-bencode

(define-public haskell-8.6-bibtex
  (package
    (name "haskell-8.6-bibtex")
    (version "0.1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bibtex/bibtex-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "012zxvrlkl5vdjl1nmabhyi160xak0c8s3gn5ffxz2rqi6akn2h9"))))
    (properties `((upstream-name . "bibtex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbase2" "-f-buildexamples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-latex)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
    (home-page "http://www.haskell.org/haskellwiki/BibTeX")
    (synopsis "Parse, format and processing BibTeX files")
    (description
     "This package allows parsing, formatting and processing of BibTeX files.
BibTeX files are databases for literature for the natbib package
of the LaTeX typesetting system.

The package contains two examples:

* The first example demonstrates the BibTeX parser
by generating a publication overview from a @@.bib@@ file.

* The second example demonstrates the BibTeX generation
by producing a large @@.bib@@ file from the tar archive
that cabal-install downloads to your local cabal directory.

Both examples will be build as stand-alone executable
when running

> cabal install -fbuildExamples bibtex

For the first example see the @@publications@@ directory of this package.
You can start the program and build an example document by running

> make pubs

Technically the program generates a list of custom @@\\\\nocite@@ commands
for the LaTeX package @@multibib@@.
You can add the custom bibtex field @@subtype@@ to BibTeX entries
for more detailed categorization of an entry.
See \"publications/publications.bib\" for examples.

The second example can be executed using

> make hackbib

The file @@hackage.bib@@ is written to the @@hackage@@ subdirectory.
The @@hackage-bibtex@@ program
reads an uncompressed tar archive from standard input
and writes the result bibliography file to standard output.

Note that @@hackage.bib@@ exceeds some limits of standard BibTeX and LaTeX:
There are currently much more than 5000 versions of packages,
the maximum my BibTeX can handle at once.
That is, you can use the bibliography file,
but you cannot cite all entries with @@\\\\nocite*@@.
If there are more than 26 uploads by the same author in a year,
the BibTeX style @@alpha@@ generates identifiers including curly braces
which interacts badly with LaTeX's handling of them.
If you reduce the Bibliography file to 5000 entries
and try to generate an overview of all entries with @@\\\\nocite@@,
then @@pdflatex@@ hits its limits:

> TeX capacity exceeded, sorry [save size=5000]")
    (license license:bsd-3)))

haskell-8.6-bibtex

(define-public haskell-8.6-bimap
  (package
    (name "haskell-8.6-bimap")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bimap/bimap-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1794iykd7rhj29y0w4vyjyn6wnw28hi8sxzvm1j5ivdzmf39d8yi"))))
    (properties `((upstream-name . "bimap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "111wyqh17a6pkjhyaz8n1891m69hwr2gybqcpacw4xdmarxmi7f5")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)))
    (home-page "https://github.com/joelwilliamson/bimap")
    (synopsis "Bidirectional mapping between two key types")
    (description
     "A data structure representing a bidirectional mapping between two
key types. Each value in the bimap is associated with exactly one
value of the opposite type.")
    (license license:bsd-3)))

haskell-8.6-bimap

(define-public haskell-8.6-blaze-markup
  (package
    (name "haskell-8.6-blaze-markup")
    (version "0.8.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blaze-markup/blaze-markup-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g9m7ansj7fdyzhz1wqkbzn5amjm50vjgjdwkbjc5qqhagnv1y3j"))))
    (properties `((upstream-name . "blaze-markup") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)))
    (home-page "http://jaspervdj.be/blaze")
    (synopsis "A blazingly fast markup combinator library for Haskell")
    (description
     "Core modules of a blazingly fast markup combinator library for the Haskell
programming language. The Text.Blaze module is a good
starting point, as well as this tutorial:
<http://jaspervdj.be/blaze/tutorial.html>.")
    (license license:bsd-3)))

haskell-8.6-blaze-markup

(define-public haskell-8.6-blaze-textual
  (package
    (name "haskell-8.6-blaze-textual")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blaze-textual/blaze-textual-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bbcykkrlgdb6jaz72njriq9if6bzsx52jn26k093f5sn1d7jhhh"))))
    (properties `((upstream-name . "blaze-textual") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-developer" "-fnative" "-f-integer-simple")
       #:cabal-revision
       ("1" "1admqsfgi0zqfq77wlmy3yhiqwskhf6c24qlg0vx7vsvgzwafn8l")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-double-conversion)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "http://github.com/bos/blaze-textual")
    (synopsis "Fast rendering of common datatypes")
    (description
     "A library for efficiently rendering Haskell datatypes to
bytestrings.

/Note/: if you use GHCi or Template Haskell, please see the
@@README@@ file for important details about building this package,
and other packages that depend on it:
<https://github.com/bos/blaze-textual#readme>")
    (license license:bsd-3)))

haskell-8.6-blaze-textual

(define-public haskell-8.6-case-insensitive
  (package
    (name "haskell-8.6-case-insensitive")
    (version "1.2.0.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/case-insensitive/case-insensitive-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qrpxfirsxckg7jv28f5ah2qc8lh95hp7rnqkbqs1ahcwlbnvkm7"))))
    (properties `((upstream-name . "case-insensitive") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)))
    (home-page "https://github.com/basvandijk/case-insensitive")
    (synopsis "Case insensitive string comparison")
    (description "The module @@Data.CaseInsensitive@@ provides the 'CI' type
constructor which can be parameterised by a string-like
type like: 'String', 'ByteString', 'Text',
etc.. Comparisons of values of the resulting type will be
insensitive to cases.")
    (license license:bsd-3)))

haskell-8.6-case-insensitive

(define-public haskell-8.6-cereal-text
  (package
    (name "haskell-8.6-cereal-text")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cereal-text/cereal-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k1ml0z5rksvrhz15i9afld7bybgylqmy5nmvik3p98zd3s1ayiw"))))
    (properties `((upstream-name . "cereal-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)))
    (home-page "https://github.com/ulikoehler/cereal-text")
    (synopsis "Data.Text instances for the cereal serialization library")
    (description "Data.Text instances for the cereal serialization library.

Provides instances for Text and lazy Text.
Uses UTF-8 encoding for serialization.

Use
@@import Data.Serialize.Text ()@@
to import instances.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-cereal-text

(define-public haskell-8.6-cereal-vector
  (package
    (name "haskell-8.6-cereal-vector")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cereal-vector/cereal-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0czrb4l1n73cfxxlzbcqfa34qa3gw0m5w5mlz0rawylyqfk8a1pz"))))
    (properties `((upstream-name . "cereal-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/acfoltzer/cereal-vector")
    (synopsis "Serialize instances for Data.Vector types.")
    (description "")
    (license license:bsd-3)))

haskell-8.6-cereal-vector

(define-public haskell-8.6-chaselev-deque
  (package
    (name "haskell-8.6-chaselev-deque")
    (version "0.5.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/chaselev-deque/chaselev-deque-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1x2301faqkchkzrvbnganly341jilvg1fmx6lazgbs98cbazhn2d"))))
    (properties `((upstream-name . "chaselev-deque") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-abstract-deque)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-abstract-deque-tests)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-atomic-primops)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/rrnewton/haskell-lockfree/wiki")
    (synopsis
     "Chase & Lev work-stealing lock-free double-ended queues (deques).")
    (description
     "A queue that is push/pop on one end and pop-only on the other.  These are commonly
used for work-stealing.
This implementation derives directly from the pseudocode in the 2005 SPAA paper:

http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.170.1097&rep=rep1&type=pdf")
    (license license:bsd-3)))

haskell-8.6-chaselev-deque

(define-public haskell-8.6-cipher-aes
  (package
    (name "haskell-8.6-cipher-aes")
    (version "0.2.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cipher-aes/cipher-aes-" version
                    ".tar.gz"))
              (sha256
               (base32
                "05ahz6kjq0fl1w66gpiqy0vndli5yx1pbsbw9ni3viwqas4p3cfk"))))
    (properties `((upstream-name . "cipher-aes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsupport_aesni")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-byteable)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-crypto-cipher-tests)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-crypto-cipher-types)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-securemem)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
    (home-page "https://github.com/vincenthz/hs-cipher-aes")
    (synopsis
     "Fast AES cipher implementation with advanced mode of operations")
    (description
     "Fast AES cipher implementation with advanced mode of operations.

The modes of operations available are ECB (Electronic code book),
CBC (Cipher block chaining), CTR (Counter), XTS (XEX with ciphertext stealing),
GCM (Galois Counter Mode).

The AES implementation uses AES-NI when available (on x86 and x86-64 architecture),
but fallback gracefully to a software C implementation.

The software implementation uses S-Boxes, which might suffer for cache timing issues.
However do notes that most other known software implementations, including very popular
one (openssl, gnutls) also uses similar implementation. If it matters for your
case, you should make sure you have AES-NI available, or you'll need to use a different
implementation.
")
    (license license:bsd-3)))

haskell-8.6-cipher-aes

(define-public haskell-8.6-cipher-blowfish
  (package
    (name "haskell-8.6-cipher-blowfish")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cipher-blowfish/cipher-blowfish-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hb67gmiyqrknynz5am8nada1b1v47rqla87dw5nvfhxhl51fhcg"))))
    (properties `((upstream-name . "cipher-blowfish") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-byteable)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-crypto-cipher-tests)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-crypto-cipher-types)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-securemem)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "http://github.com/vincenthz/hs-crypto-cipher")
    (synopsis "Blowfish cipher")
    (description "Blowfish cipher primitives")
    (license license:bsd-3)))

haskell-8.6-cipher-blowfish

(define-public haskell-8.6-cipher-camellia
  (package
    (name "haskell-8.6-cipher-camellia")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cipher-camellia/cipher-camellia-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19z2mi1rvp8fsqjdbmrm1hdlxmx61yr55fyknmmn945qrlvx234d"))))
    (properties `((upstream-name . "cipher-camellia") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-byteable)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-crypto-cipher-tests)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-crypto-cipher-types)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-securemem)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "http://github.com/vincenthz/hs-crypto-cipher")
    (synopsis "Camellia block cipher primitives")
    (description "Camellia block cipher primitives")
    (license license:bsd-3)))

haskell-8.6-cipher-camellia

(define-public haskell-8.6-cipher-des
  (package
    (name "haskell-8.6-cipher-des")
    (version "0.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cipher-des/cipher-des-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1isazxa2nr1y13y0danfk7wghy34rfpn3f43rw714nk2xk6vrwc5"))))
    (properties `((upstream-name . "cipher-des") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-byteable)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-crypto-cipher-tests)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-crypto-cipher-types)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-securemem)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
    (home-page "http://github.com/vincenthz/hs-crypto-cipher")
    (synopsis "DES and 3DES primitives")
    (description "DES and 3DES primitives")
    (license license:bsd-3)))

haskell-8.6-cipher-des

(define-public haskell-8.6-cipher-rc4
  (package
    (name "haskell-8.6-cipher-rc4")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cipher-rc4/cipher-rc4-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0k9qf0cn5yxc4qlqikcm5yyrnkkvr6g3v7306cp8iwz7r4dp6zn6"))))
    (properties `((upstream-name . "cipher-rc4") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-byteable)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-crypto-cipher-tests)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-crypto-cipher-types)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
    (home-page "http://github.com/vincenthz/hs-cipher-rc4")
    (synopsis "Fast RC4 cipher implementation")
    (description "Fast RC4 cipher implementation")
    (license license:bsd-3)))

haskell-8.6-cipher-rc4

(define-public haskell-8.6-concurrent-supply
  (package
    (name "haskell-8.6-concurrent-supply")
    (version "0.1.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/concurrent-supply/concurrent-supply-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07zjczcgxwpi8imp0w86vrb78w067b322q5d7zlqla91sbf2gy6c"))))
    (properties `((upstream-name . "concurrent-supply") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftest-properties")
       #:cabal-revision
       ("1" "1yzrr68k81w3jmrarx3y6z7ymzaaxwab509pp6kkd2fjia3g8wwk")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)))
    (home-page "http://github.com/ekmett/concurrent-supply/")
    (synopsis "A fast concurrent unique identifier supply with a pure API")
    (description
     "A fast supply of concurrent unique identifiers suitable for use
within a single process. Once the initial 'Supply' has been initialized,
the remainder of the API is pure. See \"Control.Concurrent.Supply\" for
details.")
    (license license:bsd-3)))

haskell-8.6-concurrent-supply

(define-public haskell-8.6-csv
  (package
    (name "haskell-8.6-csv")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/csv/csv-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "00767ai09wm7f0yzmpqck3cpgxncpr9djnmmz5l17ajz69139x4c"))
              (patches (search-patches "defaultMain.patch"))))
    (properties `((upstream-name . "csv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)))
    (home-page "https://hackage.haskell.org/package/csv")
    (synopsis "CSV loader and dumper")
    (description
     "CSV loader and dumper

This library parses and dumps documents that are formatted
according to RFC 4180, \\\"The common Format and MIME Type for
Comma-Separated Values (CSV) Files\\\". This format is used, among
many other things, as a lingua franca for spreadsheets, and for
certain web services.")
    (license license:expat)))

haskell-8.6-csv

(define-public haskell-8.6-ctrie
  (package
    (name "haskell-8.6-ctrie")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ctrie/ctrie-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0568v5m5k8dyqx5sfcr13mh1qay13m1wbcjszxiidvb5kz9sdqr0"))))
    (properties `((upstream-name . "ctrie") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-atomic-primops)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
    (home-page "https://github.com/mcschroeder/ctrie")
    (synopsis "Non-blocking concurrent map")
    (description "A non-blocking concurrent map implementation based on
/lock-free concurrent hash tries/ (aka /Ctries/).")
    (license license:expat)))

haskell-8.6-ctrie

(define-public haskell-8.6-currency
  (package
    (name "haskell-8.6-currency")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/currency/currency-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0yj1x7zmkmwr9az55i9gvf84m7i3b4qi80p8qk9hszzlv7rigmdw"))))
    (properties `((upstream-name . "currency") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-iso3166-country-codes)))
    (home-page "https://github.com/singpolyma/currency-haskell")
    (synopsis "Types representing standard and non-standard currencies")
    (description
     "This package provides two types for representing currencies, one that
can only represent ISO4217 currencies, and one that can also represent
nonstandard currencies.

An IsString instance is provided for convenience on the general type.

Instances of Eq, Ord, and, Hashable are provided for use as keys.

The Enum instance provides a mapping to/from ISO4217 numeric codes for
currencies that have such a code.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.6-currency

(define-public haskell-8.6-drinkery
  (package
    (name "haskell-8.6-drinkery")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/drinkery/drinkery-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1c5mv0klhdavbsaa1mng0q15vy0cz6x8ijfzgaf1f18yyxvb0q1q"))))
    (properties `((upstream-name . "drinkery") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://github.com/fumieval/drinkery#readme")
    (synopsis "Boozy streaming library")
    (description
     "Please see the README on Github at <https://github.com/fumieval/drinkery#readme>")
    (license license:bsd-3)))

haskell-8.6-drinkery

(define-public haskell-8.6-errors
  (package
    (name "haskell-8.6-errors")
    (version "2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/errors/errors-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0x8znwn31qcx6kqx99wp7bc86kckfb39ncz3zxvj1s07kxlfawk7"))))
    (properties `((upstream-name . "errors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0sji6ny86f4j9ch1cyf2p1mcr5b2ighvw4bb9rssvypxb6k2r68f")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)))
    (home-page "https://hackage.haskell.org/package/errors")
    (synopsis "Simplified error-handling")
    (description
     "The one-stop shop for all your error-handling needs!  Just import
\"Control.Error\".

This library encourages an error-handling style that directly uses the type
system, rather than out-of-band exceptions.")
    (license license:bsd-3)))

haskell-8.6-errors

(define-public haskell-8.6-exception-mtl
  (package
    (name "haskell-8.6-exception-mtl")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/exception-mtl/exception-mtl-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0d51rsrcjy52d62f51hb6fdg0fj9b0qbv8hqf6523pndwsxbq4zc"))))
    (properties `((upstream-name . "exception-mtl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exception-transformers)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://hackage.haskell.org/package/exception-mtl")
    (synopsis "Exception monad transformer instances for mtl classes.")
    (description
     "This package provides exception monad transformer instances for
the classes defined by mtl.")
    (license license:bsd-3)))

haskell-8.6-exception-mtl

(define-public haskell-8.6-exceptional
  (package
    (name "haskell-8.6-exceptional")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/exceptional/exceptional-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01lzx4ihdvyivjnkvn78hcdsk83dvm6iy9v5q1f28kd1iv96x1ns"))))
    (properties `((upstream-name . "exceptional") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)))
    (home-page "https://github.com/")
    (synopsis "Essentially the Maybe type with error messages.")
    (description
     "This is a very simple type:

> data Exceptional x
>   = Failure String
>   | Success x

It's much like @@Maybe@@, except instead of @@Nothing@@, we have @@Failure
String@@.

A comparison could also be made to @@Either String@@. I made this library
because I was dissatisfied with the @@Monad@@ instance for @@Either@@. In this
type, @@fail = Failure@@. It's rather simple.

Changes

[0.3.0.0] Fix erroneous behavior in @@foldExceptional@@ function added in
version 0.2. This release actually does break (or rather fix) the
@@foldExceptional@@ function, so be careful.

[0.2.0.0] Add @@exceptional@@ function to encapsulate ordinary exceptions in the
@@Exceptional@@ monad. Add folding functions.

This release does not actually break the API, however I was rather
tired when I chose the version number. This should be 0.1.6.

[0.1.5.0] Add @@exceptIO@@ function to encapsulate IO errors in the
@@Exceptional@@ monad.

[0.1.4.3] Fix bug where @@exceptional@@ won't compile on @@base < 4.8@@.
Also move the changelog back to the description so it's more
visible.

[0.1.4.2] Moved change log to a separate file so Hackage displays
it correctly.

[0.1.4.1] Documentation enhancements/fixes.

[0.1.4.0] Added @@fromMaybe@@ and @@toMaybe@@ functions, and a link to
the bug tracker.

[0.1.3.0] Fixed a typo. 0.1.2.0 won't build. Also added definition
of @@empty@@ for @@Alternative@@.

[0.1.2.0] Added @@fromEither@@ and @@toEither@@ functions.

[0.1.1.3] Hackage is terrible. Yet another formatting fix.

[0.1.1.2] Yet another formatting fix.

[0.1.1.1] Formatting fix to the haddock documentation.

[0.1.1.0] Add @@runExceptional@@ function.

[0.1.0.1] Minor documentation changes. No changes to the API.

[0.1.0.0] Initial version")
    (license license:bsd-2)))

haskell-8.6-exceptional

(define-public haskell-8.6-fin
  (package
    (name "haskell-8.6-fin")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fin/fin-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0zwc8x2ilbk1bhsk85brf6g300cx4w2j3602gjh6rv900961gqri"))))
    (properties `((upstream-name . "fin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1x446k44pci81dakzd98vrj6amj10xkb05k7g2qwk0ir1hdj5sfz")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-dec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)))
    (home-page "https://github.com/phadej/vec")
    (synopsis "Nat and Fin: peano naturals and finite numbers")
    (description
     "This package provides two simple types, and some tools to work with them.
Also on type level as @@DataKinds@@.

@@
\\-- Peano naturals
data Nat = Z | S Nat

\\-- Finite naturals
data Fin (n :: Nat) where
\\    Z :: Fin ('S n)
\\    S :: Fin n -> Fin ('Nat.S n)
@@

[vec](https://hackage.haskell.org/package/vec) implements length-indexed
(sized) lists using this package for indexes.

The \"Data.Fin.Enum\" module let's work generically with enumerations.

See [Hasochism: the pleasure and pain of dependently typed haskell programming](https://doi.org/10.1145/2503778.2503786)
by Sam Lindley and Conor McBride for answers to /how/ and /why/.
Read [APLicative Programming with Naperian Functors](https://doi.org/10.1007/978-3-662-54434-1_21)
by Jeremy Gibbons for (not so) different ones.

=== Similar packages

* [finite-typelits](https://hackage.haskell.org/package/finite-typelits)
. Is a great package, but uses @@GHC.TypeLits@@.

* [type-natural](https://hackage.haskell.org/package/type-natural) depends
on @@singletons@@ package. @@fin@@ will try to stay light on the dependencies,
and support as many GHC versions as practical.

* [peano](https://hackage.haskell.org/package/peano) is very incomplete

* [nat](https://hackage.haskell.org/package/nat) as well.

* [PeanoWitnesses](https://hackage.haskell.org/package/PeanoWitnesses)
doesn't use @@DataKinds@@.

* [type-combinators](https://hackage.haskell.org/package/type-combinators)
is big package too.")
    (license license:bsd-3)))

haskell-8.6-fin

(define-public haskell-8.6-haddock-library
  (package
    (name "haskell-8.6-haddock-library")
    (version "1.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haddock-library/haddock-library-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04fhcjk0pvsaqvsgp2w06cv2qvshq1xs1bwc157q4lmkgr57khp7"))))
    (properties `((upstream-name . "haddock-library") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)))
    (home-page "http://www.haskell.org/haddock/")
    (synopsis "Library exposing some functionality of Haddock.")
    (description
     "Haddock is a documentation-generation tool for Haskell
libraries. These modules expose some functionality of it
without pulling in the GHC dependency. Please note that the
API is likely to change so specify upper bounds in your
project. For interacting with Haddock
itself, see the [haddock package](https://hackage.haskell.org/package/haddock).")
    (license license:bsd-3)))

haskell-8.6-haddock-library

(define-public haskell-8.6-hashable-time
  (package
    (name "haskell-8.6-hashable-time")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hashable-time/hashable-time-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1q7y4plqqwy5286hhx2fygn12h8lqk0y047b597sbdckskxzfqgs"))))
    (properties `((upstream-name . "hashable-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-old-locale")
       #:cabal-revision
       ("3" "1dr7ak803ngrhpv43dy25jm18gfzn02gzd3hm31dzcjv3mxsmbrk")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)))
    (home-page "https://hackage.haskell.org/package/hashable-time")
    (synopsis "Hashable instances for Data.Time")
    (description "Hashable instances for types in Data.Time")
    (license license:bsd-3)))

haskell-8.6-hashable-time

(define-public haskell-8.6-hashmap
  (package
    (name "haskell-8.6-hashmap")
    (version "1.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hashmap/hashmap-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ma7svf9nanlfbj9nkk6bzk4m98i7xd71xrdc3a5dmmws5yba1nw"))))
    (properties `((upstream-name . "hashmap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-oldcontainers")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)))
    (home-page "https://github.com/foxik/hashmap")
    (synopsis "Persistent containers Map and Set based on hashing.")
    (description
     "An implementation of persistent 'Map' and 'Set' containers
based on hashing. The implementation is build on
top of 'Data.IntMap.IntMap' and 'Data.IntSet.IntSet',
with very similar API. It uses 'Hashable' class from the
@@hashable@@ package for hashing.

This package can be used as a drop-in replacement for
'Data.Map' and 'Data.Set' modules.

The @@'Map' key value@@ is an 'Data.IntMap.IntMap'
indexed by the hash value, containing either one ('key', 'value')
or a @@'Data.Map.Map' key value@@ for all keys with the same hash value.

The @@'Set' elem@@ is an 'Data.IntMap.IntMap' indexed by
the hash value, containing either one 'elem' or @@'Data.Set.Set' elem@@ for
all elements with the same hash value.")
    (license license:bsd-3)))

haskell-8.6-hashmap

(define-public haskell-8.6-hashtables
  (package
    (name "haskell-8.6-hashtables")
    (version "1.2.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hashtables/hashtables-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1rjmxnr30g4hygiywkpz5p9sanh0abs7ap4zc1kgd8zv04kycp0j"))))
    (properties `((upstream-name . "hashtables") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-funsafe-tricks" "-f-bounds-checking" "-f-debug" "-f-detailed-profiling" "-f-sse42" "-f-portable")
       #:cabal-revision
       ("1" "0wngylg6rji7dbhm6hvnyw3w6wnah0yaywh12y7qccq8xriy02si")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "http://github.com/gregorycollins/hashtables")
    (synopsis "Mutable hash tables in the ST monad")
    (description
     "This package provides a couple of different implementations of mutable hash
tables in the ST monad, as well as a typeclass abstracting their common
operations, and a set of wrappers to use the hash tables in the IO monad.

/QUICK START/: documentation for the hash table operations is provided in the
\"Data.HashTable.Class\" module, and the IO wrappers (which most users will
probably prefer) are located in the \"Data.HashTable.IO\" module.

This package currently contains three hash table implementations:

1. \"Data.HashTable.ST.Cuckoo\" contains an implementation of \\\"cuckoo
hashing\\\" as introduced by Pagh and Rodler in 2001 (see
<http://en.wikipedia.org/wiki/Cuckoo_hashing>). Cuckoo hashing has
worst-case /O(1)/ lookups and can reach a high \\\"load factor\\\", in which
the table can perform acceptably well even when approaching 90% full.
Randomized testing shows this implementation of cuckoo hashing to be
slightly faster on insert and slightly slower on lookup than
\"Data.HashTable.ST.Basic\", while being more space efficient by about a
half-word per key-value mapping. Cuckoo hashing, like the basic hash
table implementation using linear probing, can suffer from long delays
when the table is resized.

2. \"Data.HashTable.ST.Basic\" contains a basic open-addressing hash table
using linear probing as the collision strategy. On a pure speed basis it
should currently be the fastest available Haskell hash table
implementation for lookups, although it has a higher memory overhead
than the other tables and can suffer from long delays when the table is
resized because all of the elements in the table need to be rehashed.

3. \"Data.HashTable.ST.Linear\" contains a linear hash table (see
<http://en.wikipedia.org/wiki/Linear_hashing>), which trades some insert
and lookup performance for higher space efficiency and much shorter
delays when expanding the table. In most cases, benchmarks show this
table to be currently slightly faster than @@Data.HashTable@@ from the
Haskell base library.

It is recommended to create a concrete type alias in your code when using this
package, i.e.:

> import qualified Data.HashTable.IO as H
>
> type HashTable k v = H.BasicHashTable k v
>
> foo :: IO (HashTable Int Int)
> foo = do
>     ht <- H.new
>     H.insert ht 1 1
>     return ht

Firstly, this makes it easy to switch to a different hash table implementation,
and secondly, using a concrete type rather than leaving your functions abstract
in the HashTable class should allow GHC to optimize away the typeclass
dictionaries.

This package accepts a couple of different cabal flags:

* @@unsafe-tricks@@, default /ON/. If this flag is enabled, we use some
unsafe GHC-specific tricks to save indirections (namely @@unsafeCoerce#@@
and @@reallyUnsafePtrEquality#@@. These techniques rely on assumptions
about the behaviour of the GHC runtime system and, although they've been
tested and should be safe under normal conditions, are slightly
dangerous. Caveat emptor. In particular, these techniques are
incompatible with HPC code coverage reports.

* @@sse42@@, default /OFF/. If this flag is enabled, we use some SSE 4.2
instructions (see <http://en.wikipedia.org/wiki/SSE4>, first available on
Intel Core 2 processors) to speed up cache-line searches for cuckoo
hashing.

* @@bounds-checking@@, default /OFF/. If this flag is enabled, array accesses
are bounds-checked.

* @@debug@@, default /OFF/. If turned on, we'll rudely spew debug output to
stdout.

* @@portable@@, default /OFF/. If this flag is enabled, we use only pure
Haskell code and try not to use unportable GHC extensions. Turning this
flag on forces @@unsafe-tricks@@ and @@sse42@@ /OFF/.

Please send bug reports to
<https://github.com/gregorycollins/hashtables/issues>.")
    (license license:bsd-3)))

haskell-8.6-hashtables

(define-public haskell-8.6-haskey-btree
  (package
    (name "haskell-8.6-haskey-btree")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskey-btree/haskey-btree-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11zkj4a5j2f7g9kann4f0ab27aq30v6yn8cyn9hn7mhc3gslrx9m"))))
    (properties `((upstream-name . "haskey-btree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-ordlist)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/haskell-haskey/haskey-btree")
    (synopsis "B+-tree implementation in Haskell.")
    (description
     "This package provides two B+-tree implementations. The first one is a pure
B+-tree of a specific order, while the second one is an impure one backed
by a page allocator.

For more information on how to use this package, visit
<https://github.com/haskell-haskey/haskey-btree>")
    (license license:bsd-3)))

haskell-8.6-haskey-btree

(define-public haskell-8.6-hfsevents
  (package
    (name "haskell-8.6-hfsevents")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hfsevents/hfsevents-" version
                    ".tar.gz"))
              (sha256
               (base32
                "019zbnvfd866ch49gax0c1c93zv92142saim1hrgypz5lprz7hvl"))))
    (properties `((upstream-name . "hfsevents") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/luite/hfsevents")
    (synopsis "File/folder watching for OS X")
    (description "")
    (license license:bsd-3)))

haskell-8.6-hfsevents

(define-public haskell-8.6-hidapi
  (package
    (name "haskell-8.6-hidapi")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hidapi/hidapi-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0pjrrm8rpcwwsc5ck36p0zyk5rr5jri8c79436whk8xxpnyf09ip"))))
    (properties `((upstream-name . "hidapi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-deepseq-generics)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages linux) eudev)))
    (home-page "https://github.com/vahokif/haskell-hidapi")
    (synopsis "Haskell bindings to HIDAPI")
    (description
     "Haskell bindings to the HIDAPI library (<http://www.signal11.us/oss/hidapi/>).

Note you need need to have the corresponding low-level
library installed for your OS, e.g. libudev-dev on Debian/Ubuntu,
or just udev on distributions that don't split dev libraries.")
    (license license:expat)))

haskell-8.6-hidapi

(define-public haskell-8.6-hosc
  (package
    (name "haskell-8.6-hosc")
    (version "0.17")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hosc/hosc-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0340lldzim02ixj4n0smfwn20y5i0z7v0gqgbb0mdjs6c90rqhv6"))))
    (properties `((upstream-name . "hosc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)))
    (home-page "http://rohandrape.net/t/hosc")
    (synopsis "Haskell Open Sound Control")
    (description "@@hosc@@ implements a subset of the Open Sound Control
byte protocol, <http://opensoundcontrol.org/>.

See \"Sound.OSC.Core\" or \"Sound.OSC\" or \"Sound.OSC.FD\".")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-hosc

(define-public haskell-8.6-hspec
  (package
    (name "haskell-8.6-hspec")
    (version "2.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hspec/hspec-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1x8rcr7j1azcaw0fg1xzp8j0gr4ias36z09aj24i4xp8pnyfp341"))))
    (properties `((upstream-name . "hspec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-hspec-core)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-hspec-expectations)))
    (home-page "http://hspec.github.io/")
    (synopsis "A Testing Framework for Haskell")
    (description
     "Hspec is a testing framework for Haskell.  Some of Hspec's distinctive
features are:

* a friendly DSL for defining tests

* integration with QuickCheck, SmallCheck, and HUnit

* parallel test execution

* automatic discovery of test files

The Hspec Manual is at <http://hspec.github.io/>.")
    (license license:expat)))

haskell-8.6-hspec

(define-public haskell-8.6-hxt-regex-xmlschema
  (package
    (name "haskell-8.6-hxt-regex-xmlschema")
    (version "9.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hxt-regex-xmlschema/hxt-regex-xmlschema-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1c4jr0439f5yc05h7iz53fa47g6l2wrvqp6gvwf01mlqajk3nx7l"))))
    (properties `((upstream-name . "hxt-regex-xmlschema") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-profile")
       #:cabal-revision
       ("1" "0vg9vnfjmq1ma6zwwv4yvfih6wbslksvsvy9b41i4f81l0hh7ia8")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hxt-charproperties)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)))
    (home-page
     "http://www.haskell.org/haskellwiki/Regular_expressions_for_XML_Schema")
    (synopsis
     "A regular expression library for W3C XML Schema regular expressions")
    (description
     "This library supports full W3C XML Schema regular expressions
inclusive all Unicode character sets and blocks.
The complete grammar can be found under <http://www.w3.org/TR/xmlschema11-2/#regexs>.
It is implemented by the technique of derivations of regular expressions.

The W3C syntax is extended to support not only union of regular sets,
but also intersection, set difference, exor.
Matching of subexpressions is also supported.

The library can be used for constricting lightweight scanners and tokenizers.
It is a standalone library, no external regex libraries are used.

Extensions in 9.2: The library does nor only support String's, but also
ByteString's and Text in strict and lazy variants")
    (license license:expat)))

haskell-8.6-hxt-regex-xmlschema

(define-public haskell-8.6-indents
  (package
    (name "haskell-8.6-indents")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/indents/indents-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0dpcwiz0dwn5aqdsc50plfaawh86adhf7jx5dsmhn5q5nz32qn51"))))
    (properties `((upstream-name . "indents") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0zbcf8m4n63ff06hjp0mr18i59y5wd6c1k5z1j6rnl7kymghkjrg")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)))
    (home-page "http://github.com/jaspervdj/indents")
    (synopsis "indentation sensitive parser-combinators for parsec")
    (description
     "This library provides functions for use in parsing indentation sensitive contexts. It parses blocks of lines all indented to the same level as well as lines continued at an indented level below.")
    (license license:bsd-3)))

haskell-8.6-indents

(define-public haskell-8.6-json
  (package
    (name "haskell-8.6-json")
    (version "0.9.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/json/json-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1z8s3mfg76p2flqqd2wqsi96l5bg8k8w8m58zlv81pw3k7h1vbwb"))))
    (properties `((upstream-name . "json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsplit-base" "-fparsec" "-fpretty" "-fgeneric" "-f-mapdict")
       #:cabal-revision
       ("2" "0iqmwfq6s1fc8jj16yx2d7jpzf94scd1hc4yvz281zxj7kds2ms5")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)))
    (home-page "https://hackage.haskell.org/package/json")
    (synopsis "Support for serialising Haskell to and from JSON")
    (description
     "JSON (JavaScript Object Notation) is a lightweight data-interchange
format. It is easy for humans to read and write. It is easy for
machines to parse and generate.  It is based on a subset of the
JavaScript Programming Language, Standard ECMA-262 3rd Edition -
December 1999.

This library provides a parser and pretty printer for converting
between Haskell values and JSON.")
    (license license:bsd-3)))

haskell-8.6-json

(define-public haskell-8.6-kdt
  (package
    (name "haskell-8.6-kdt")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/kdt/kdt-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "16lz8zwv964izdbrdm8b2g8p1qdb4yv4f7qpfdi4c0fbq2d8y3xw"))))
    (properties `((upstream-name . "kdt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-deepseq-generics)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-heap)))
    (home-page "https://github.com/giogadi/kdt")
    (synopsis
     "Fast and flexible k-d trees for various types of point queries.")
    (description
     "This package includes static and dynamic versions of k-d trees,
as well as \\\"Map\\\" variants that store data at each point in the
k-d tree structure. Supports nearest neighbor,
k nearest neighbors, points within a given radius, and points
within a given range.
To learn to use this package, start with the documentation for
the \"Data.KdTree.Static\" module.")
    (license license:expat)))

haskell-8.6-kdt

(define-public haskell-8.6-listsafe
  (package
    (name "haskell-8.6-listsafe")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/listsafe/listsafe-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0scd74fv6gzl7yi5ssb1z9kwwfyx9p39yqprnzbpvspvxm3k41qs"))))
    (properties `((upstream-name . "listsafe") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)))
    (home-page "https://github.com/ombocomp/listsafe")
    (synopsis
     "Safe wrappers for partial list functions, supporting MonadThrow.")
    (description "Data.List includes a handful of partial functions that throw
uncatchable exceptions when given empty lists. This package
provides safe alternatives for such functions based on
MonadThrow which can provide a variety of failure
cases: Nothing, IOException, Left, etc.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-listsafe

(define-public haskell-8.6-lockfree-queue
  (package
    (name "haskell-8.6-lockfree-queue")
    (version "0.2.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lockfree-queue/lockfree-queue-"
                    version ".tar.gz"))
              (sha256
               (base32
                "131s1w6bdd958pg42s2i62xvw4basagir45y3vhbvsp8p9a6lmra"))))
    (properties `((upstream-name . "lockfree-queue") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-abstract-deque)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-abstract-deque-tests)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-atomic-primops)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)))
    (home-page "https://github.com/rrnewton/haskell-lockfree/wiki")
    (synopsis "Michael and Scott lock-free queues.")
    (description
     "Michael and Scott queues are described in their PODC 1996 paper:

<http://dl.acm.org/citation.cfm?id=248052.248106>

These are single-ended concurrent queues based on a singlly linked
list and using atomic CAS instructions to swap the tail pointers.
As a well-known efficient algorithm they became the basis for Java's
@@ConcurrentLinkedQueue@@.")
    (license license:bsd-3)))

haskell-8.6-lockfree-queue

(define-public haskell-8.6-midi
  (package
    (name "haskell-8.6-midi")
    (version "0.2.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/midi/midi-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0fv9980k35qv9qk73g2mp88xvhchyq0lq37cl7i26gx4f64vaz6y"))))
    (properties `((upstream-name . "midi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0sa17aphsnk0lc42k1niisbd4jck7j4xij95mjjc5nlrcx1zd123")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-event-list)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-explicit-exception)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-monoid-transformer)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-non-negative)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
    (home-page "http://www.haskell.org/haskellwiki/MIDI")
    (synopsis "Handling of MIDI messages and files")
    (description
     "MIDI is the Musical Instrument Digital Interface.
The package contains definition of realtime and file MIDI messages,
reading and writing MIDI files,
and some definitions from the General MIDI standard.
It contains no sending and receiving of MIDI messages.
For this purpose see the @@alsa-seq@@, @@jack@@, @@PortMidi@@, @@hmidi@@ packages.
For music composition with MIDI output, see @@haskore@@.
Alternative packages are @@HCodecs@@, @@zmidi-core@@.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-midi

(define-public haskell-8.6-miniutter
  (package
    (name "haskell-8.6-miniutter")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/miniutter/miniutter-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hgsk54s07497rsgsck8lhpfbrxavx1chq90hsw14w3ggr1xnc7f"))))
    (properties `((upstream-name . "miniutter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-minimorph)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)))
    (home-page "https://github.com/Mikolaj/miniutter")
    (synopsis "Simple English clause creation from arbitrary words")
    (description
     "This library helps in generating simple present tense
English sentences from short, parametrized descriptions.
In a typical use, the structure of a clause is fixed,
but the particular words to be used vary in arbitrary ways.
The main goal of the library is to minimize the API
complexity and the code size of programs that use it.
The library doesn't attempt to ban incorrect English sentences,
but just make the creation of the simple correct ones easy
and predictable.")
    (license license:bsd-3)))

haskell-8.6-miniutter

(define-public haskell-8.6-monad-par-extras
  (package
    (name "haskell-8.6-monad-par-extras")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-par-extras/monad-par-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bl4bd6jzdc5zm20q1g67ppkfh6j6yn8fwj6msjayj621cck67p2"))))
    (properties `((upstream-name . "monad-par-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-abstract-par)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)))
    (home-page "https://github.com/simonmar/monad-par")
    (synopsis "Combinators and extra features for Par monads")
    (description "The modules below provide additional
data structures, and other added capabilities
layered on top of the 'Par' monad.")
    (license license:bsd-3)))

haskell-8.6-monad-par-extras

(define-public haskell-8.6-multipart
  (package
    (name "haskell-8.6-multipart")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/multipart/multipart-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1x4n4yyva22dhfr1pg5ki112qvvzb4hyd7bwpm189iq4gcp52q4z"))))
    (properties `((upstream-name . "multipart") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "037ngpayaisc1jgcxyixy7lx42p2mz950k6wb0pl6dkc951hl88c")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-stringsearch)))
    (home-page "http://www.github.com/silkapp/multipart")
    (synopsis "HTTP multipart split out of the cgi package")
    (description "HTTP multipart split out of the cgi package")
    (license license:bsd-3)))

haskell-8.6-multipart

(define-public haskell-8.6-murmur3
  (package
    (name "haskell-8.6-murmur3")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/murmur3/murmur3-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ahzspjgiy8p594x0v45bsvf0k9z94nnvvfcpi8lyq5fwvh82b0h"))))
    (properties `((upstream-name . "murmur3") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0nhhalg7yx8r5jc77whbj9y761msd3bva1a0mdpkif48zi4dsblq")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
    (home-page "http://github.com/haskoin/murmur3")
    (synopsis
     "Pure Haskell implementation of the MurmurHash3 x86_32 algorithm.")
    (description
     "MurmurHash3 is a non-cryptogrpahic hash function suitable for general
hash-based lookup. We provide the x86_32 version which closely follows
the following implementation:
<https://code.google.com/p/smhasher/source/browse/trunk/MurmurHash3.cpp>")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.6-murmur3

(define-public haskell-8.6-natural-sort
  (package
    (name "haskell-8.6-natural-sort")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/natural-sort/natural-sort-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0l3bkbqzrlpdhzazqqlx71ah0m13ypa0981qvw3sn9q8d0sbfwkv"))))
    (properties `((upstream-name . "natural-sort") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)))
    (home-page "https://john-millikin.com/software/natural-sort/")
    (synopsis "User-friendly text collation")
    (description
     "The built-in comparisons for textual data are based on Unicode ordinals. This
does not match most every-day sorting algorithms. For example,
\\\"z10.txt\\\" is sorted after \\\"z2.txt\\\" by users, but before it by
na&#239;ve algorithms.

This package provides an implementation of \\\"natural sort\\\", which more
closely matches user expectations.

See also: <http://www.davekoelle.com/alphanum.html>")
    (license license:bsd-3)))

haskell-8.6-natural-sort

(define-public haskell-8.6-netrc
  (package
    (name "haskell-8.6-netrc")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbytestring_has_builder")
       #:cabal-revision
       ("9" "0srgxcgzzkrq96zg8vk61wnr4mrvgcxbgpdh2kklsfc2p6phzzp7")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)))
    (home-page "https://github.com/hvr/netrc")
    (synopsis "Parser for .netrc files")
    (description
     "This package provides a parser and a printer for so-called @@.netrc@@ files.

See <http://linux.die.net/man/5/netrc netrc(5)> manual page for more
information about @@.netrc@@ files.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-netrc

(define-public haskell-8.6-nettle
  (package
    (name "haskell-8.6-nettle")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/nettle/nettle-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0pbxpxr9xdw3ha5lm9vnsbsvq0kzzsqv6gfk041ijllf1sc0hgyg"))))
    (properties `((upstream-name . "nettle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fusepkgconfig")
       #:cabal-revision
       ("2" "0szkcrp9ws984ah282jwwfsmzn85khvpmkphv2b1jgxfwzqg426z")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-byteable)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-crypto-cipher-tests)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-crypto-cipher-types)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-securemem)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)
                  (@ (gnu packages nettle) nettle)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://github.com/stbuehler/haskell-nettle")
    (synopsis "safe nettle binding")
    (description
     "safe binding for the nettle (<http://www.lysator.liu.se/~nisse/nettle/nettle.html>) library.
Tested with 3.4, might work with 3.2 (but not earlier).")
    (license license:expat)))

haskell-8.6-nettle

(define-public haskell-8.6-network-transport
  (package
    (name "haskell-8.6-network-transport")
    (version "0.5.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-transport/network-transport-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0izcqi3zl7ynav0qqrrfmiax8vziqwrhflprddhjj6x6nkzhp1sv"))))
    (properties `((upstream-name . "network-transport") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "03parnmzh2mffs6fadqbf4lw1d5bsmvr347rzamp230s303nr6yc")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)))
    (home-page "http://haskell-distributed.github.com")
    (synopsis "Network abstraction layer")
    (description
     "\"Network.Transport\" is a Network Abstraction Layer which provides
the following high-level concepts:

* Nodes in the network are represented by 'EndPoint's. These are
heavyweight stateful objects.

* Each 'EndPoint' has an 'EndPointAddress'.

* Connections can be established from one 'EndPoint' to another
using the 'EndPointAddress' of the remote end.

* The 'EndPointAddress' can be serialised and sent over the
network, whereas 'EndPoint's and connections cannot.

* Connections between 'EndPoint's are unidirectional and lightweight.

* Outgoing messages are sent via a 'Connection' object that
represents the sending end of the connection.

* Incoming messages for /all/ of the incoming connections on
an 'EndPoint' are collected via a shared receive queue.

* In addition to incoming messages, 'EndPoint's are notified of
other 'Event's such as new connections or broken connections.

This design was heavily influenced by the design of the Common
Communication Interface
(<http://www.olcf.ornl.gov/center-projects/common-communication-interface>).
Important design goals are:

* Connections should be lightweight: it should be no problem to
create thousands of connections between endpoints.

* Error handling is explicit: every function declares as part of
its type which errors it can return (no exceptions are thrown)

* Error handling is \"abstract\": errors that originate from
implementation specific problems (such as \"no more sockets\" in
the TCP implementation) get mapped to generic errors
(\"insufficient resources\") at the Transport level.

This package provides the generic interface only; you will
probably also want to install at least one transport
implementation (network-transport-*).")
    (license license:bsd-3)))

haskell-8.6-network-transport

(define-public haskell-8.6-nicify-lib
  (package
    (name "haskell-8.6-nicify-lib")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/nicify-lib/nicify-lib-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0cp76s0msf1i8a7pkzjl6qgi18n7zdya3pg90ml1dnidg5nzh9kx"))))
    (properties `((upstream-name . "nicify-lib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)))
    (home-page "https://hackage.haskell.org/package/nicify-lib")
    (synopsis "Pretty print the standard output of default `Show` instances.")
    (description
     "Pretty print the standard output of `show` for algebraic datatypes")
    (license license:expat)))

haskell-8.6-nicify-lib

(define-public haskell-8.6-numeric-prelude
  (package
    (name "haskell-8.6-numeric-prelude")
    (version "0.4.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/numeric-prelude/numeric-prelude-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0531yjw1rzbv3snv1lc955350frgf8526slsxbx3ias71krbdr69"))))
    (properties `((upstream-name . "numeric-prelude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexamples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-non-negative)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-storable-record)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
    (home-page "http://www.haskell.org/haskellwiki/Numeric_Prelude")
    (synopsis "An experimental alternative hierarchy of numeric type classes")
    (description
     "The package provides an experimental alternative hierarchy
of numeric type classes.
The type classes are more oriented at mathematical structures
and their methods come with laws that the instances must fulfill.")
    (license license:bsd-3)))

haskell-8.6-numeric-prelude

(define-public haskell-8.6-ofx
  (package
    (name "haskell-8.6-ofx")
    (version "0.4.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ofx/ofx-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1wpcxzrbqw576pgx1jrpqs604ds0lpmg1282shd828lwg5myp33r"))))
    (properties `((upstream-name . "ofx") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)))
    (home-page "http://www.github.com/massysett/ofx")
    (synopsis "Parser for OFX data")
    (description
     "A parser for Open Financial Exchange (OFX) financial data. This
handles OFX version 1.03, which is documented at http://www.ofx.net
This also handles QFX, which is OFX plus some minor additions made
by Intuit, the publishers of Quicken.

The parser will place all the data into a tree, which you can query
for whatever data you may need, although you will need to be
familiar with the OFX spec to do this. There is also a Transaction
type which you can easily parse from the tree; this will contain
most, perhaps all, of the data you will be interested in if your OFX
file is from a bank or credit card account.

All the OFX and QFX files I have seen use the format from the 1.0
series of OFX, which is primarily SGML based. OFX version 2 is XML
based.  This parser likely will not work on those files.")
    (license license:bsd-3)))

haskell-8.6-ofx

(define-public haskell-8.6-parsec-class
  (package
    (name "haskell-8.6-parsec-class")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/parsec-class/parsec-class-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wqpivsrjsp9996fz6lb06rxl3860afc4l8hbx8d1vxhwv2lx702"))))
    (properties `((upstream-name . "parsec-class") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)))
    (home-page "https://github.com/peti/parsec-class")
    (synopsis
     "Class of types that can be constructed from their text representation")
    (description
     "This library provides the type class 'HasParser' as a dual to 'Pretty'.
Instances of this class provide a parser than can be used to construct the
type from its text representation.")
    (license license:expat)))

haskell-8.6-parsec-class

(define-public haskell-8.6-parsec-numbers
  (package
    (name "haskell-8.6-parsec-numbers")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/parsec-numbers/parsec-numbers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gzy4v3r02kvdxvgg1nj83mmb6aph2v4ilf9c7y6nbvi2x49l0bp"))))
    (properties `((upstream-name . "parsec-numbers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-parsec1")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)))
    (home-page "https://hackage.haskell.org/package/parsec-numbers")
    (synopsis "Utilities for parsing numbers from strings")
    (description
     "parsec-numbers provides the number parsers without the need to
use a large (and unportable) token parser")
    (license license:bsd-3)))

haskell-8.6-parsec-numbers

(define-public haskell-8.6-pipes
  (package
    (name "haskell-8.6-pipes")
    (version "4.3.13")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pipes/pipes-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1ch3xr5f5if0psd3lsyrpkwrgh36synnzqcpimghprys68l4zfkn"))))
    (properties `((upstream-name . "pipes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-mmorph)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-void)))
    (home-page "https://hackage.haskell.org/package/pipes")
    (synopsis "Compositional pipelines")
    (description
     "`pipes` is a clean and powerful stream processing library that lets you build
and connect reusable streaming components

Advantages over traditional streaming libraries:

* /Concise API/: Use simple commands like 'for', ('>->'), 'await', and 'yield'

* /Blazing fast/: Implementation tuned for speed, including shortcut fusion

* /Lightweight Dependency/: @@pipes@@ is small and compiles very rapidly,
including dependencies

* /Elegant semantics/: Use practical category theory

* /ListT/: Correct implementation of 'ListT' that interconverts with pipes

* /Bidirectionality/: Implement duplex channels

* /Extensive Documentation/: Second to none!

Import \"Pipes\" to use the library.

Read \"Pipes.Tutorial\" for an extensive tutorial.")
    (license license:bsd-3)))

haskell-8.6-pipes

(define-public haskell-8.6-poll
  (package
    (name "haskell-8.6-poll")
    (version "0.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/poll/poll-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0agdl2bxw7ca05kqyc8dix4kvjdh67i91hn1scmcngjd3gz8gzmr"))))
    (properties `((upstream-name . "poll") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-enumset)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
    (home-page "https://hackage.haskell.org/package/poll")
    (synopsis "Bindings to poll.h")
    (description
     "Poll functionality allows to wait on different FileDescriptors simultaneously.")
    (license license:bsd-3)))

haskell-8.6-poll

(define-public haskell-8.6-psqueues
  (package
    (name "haskell-8.6-psqueues")
    (version "0.2.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/psqueues/psqueues-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1yckx2csqswghiy9nfj03cybmza8104nmnpbpcc9ngwlbmakn9i6"))))
    (properties `((upstream-name . "psqueues") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0d0mm3c8x31dasfzp1884r2irkm3c9irvvbahjzfr1bzzxfb7vyv")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)))
    (home-page "https://hackage.haskell.org/package/psqueues")
    (synopsis "Pure priority search queues")
    (description
     "The psqueues package provides
<http://en.wikipedia.org/wiki/Priority_queue Priority Search Queues> in
three different flavors.

* @@OrdPSQ k p v@@, which uses the @@Ord k@@ instance to provide fast insertion,
deletion and lookup. This implementation is based on Ralf Hinze's
<http://citeseer.ist.psu.edu/hinze01simple.html A Simple Implementation Technique for Priority Search Queues>.
Hence, it is similar to the
<http://hackage.haskell.org/package/PSQueue PSQueue> library, although it is
considerably faster and provides a slightly different API.

* @@IntPSQ p v@@ is a far more efficient implementation. It fixes the key type
to @@Int@@ and uses a <http://en.wikipedia.org/wiki/Radix_tree radix tree>
(like @@IntMap@@) with an additional min-heap property.

* @@HashPSQ k p v@@ is a fairly straightforward extension of @@IntPSQ@@: it
simply uses the keys' hashes as indices in the @@IntPSQ@@. If there are any
hash collisions, it uses an @@OrdPSQ@@ to resolve those. The performance of
this implementation is comparable to that of @@IntPSQ@@, but it is more widely
applicable since the keys are not restricted to @@Int@@, but rather to any
@@Hashable@@ datatype.

Each of the three implementations provides the same API, so they can be used
interchangeably. The benchmarks show how they perform relative to one
another, and also compared to the other Priority Search Queue
implementations on Hackage:
<http://hackage.haskell.org/package/PSQueue PSQueue>
and
<http://hackage.haskell.org/package/fingertree-psqueue fingertree-psqueue>.

<<http://i.imgur.com/KmbDKR6.png>>

<<http://i.imgur.com/ClT181D.png>>

Typical applications of Priority Search Queues include:

* Caches, and more specifically LRU Caches;

* Schedulers;

* Pathfinding algorithms, such as Dijkstra's and A*.")
    (license license:bsd-3)))

haskell-8.6-psqueues

(define-public haskell-8.6-pure-zlib
  (package
    (name "haskell-8.6-pure-zlib")
    (version "0.6.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pure-zlib/pure-zlib-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ddj88zk94gqqhxiyvkachvhwi5n2la4pfaf5vppkc9ma7sjhyhn"))))
    (properties `((upstream-name . "pure-zlib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-fingertree)))
    (home-page "http://github.com/GaloisInc/pure-zlib")
    (synopsis "A Haskell-only implementation of zlib / DEFLATE")
    (description "A Haskell-only implementation of the zlib / DEFLATE
protocol. Currently only implements the decompression
algorithm.")
    (license license:bsd-3)))

haskell-8.6-pure-zlib

(define-public haskell-8.6-range-set-list
  (package
    (name "haskell-8.6-range-set-list")
    (version "0.1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/range-set-list/range-set-list-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0m8c8qhpk9vaykqfy6gsv1csmvdclm27zv9l56ipv152k75xks0j"))))
    (properties `((upstream-name . "range-set-list") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "17wbbhjlcbyz9qil2z2s6nwk7mdfck1lkx5jqrdsavwbrzza6xzr")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)))
    (home-page "https://github.com/phadej/range-set-list#readme")
    (synopsis "Memory efficient sets with ranges of elements.")
    (description
     "Memory efficient sets with continuous ranges of discrete, bounded elements. List- and map-based implementations. Interface mimics 'Data.Set' where possible.")
    (license license:expat)))

haskell-8.6-range-set-list

(define-public haskell-8.6-regex-tdfa
  (package
    (name "haskell-8.6-regex-tdfa")
    (version "1.2.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-tdfa/regex-tdfa-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03yhpqrqz977nwlnhnyz9dacnbzw8xb6j18h365rkgmbc05sb3hf"))))
    (properties `((upstream-name . "regex-tdfa") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-devel")
       #:cabal-revision
       ("1" "03z5jmpkgyd6ydwmnxcmhysjfwb0m5ngfgvxzf4f1vx2qgifqm5i")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-regex-base)))
    (home-page "https://github.com/ChrisKuklewicz/regex-tdfa")
    (synopsis "Replaces/Enhances Text.Regex")
    (description
     "A new all Haskell \"tagged\" DFA regex engine, inspired by libtre")
    (license license:bsd-3)))

haskell-8.6-regex-tdfa

(define-public haskell-8.6-renderable
  (package
    (name "haskell-8.6-renderable")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/renderable/renderable-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1idn0jg74wm3ksy5n4jk2dzsij64r1byghr6qc03g4d85n6mmsni"))))
    (properties `((upstream-name . "renderable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)))
    (home-page "https://github.com/schell/renderable")
    (synopsis "An API for managing renderable resources.")
    (description
     "The `renderable` package provides a method for managing resources
of a rendering system. Resources are allocated according to a strategy and
released automatically when your renderable data changes. These changes are
detected during each draw call based on the hash of your renderable
datatype.
This package is meant to be pulled in as a portion of your rendering system.
It aims to ease the task of managing allocation of resources over time as
the value of your renderable datatype changes.")
    (license license:expat)))

haskell-8.6-renderable

(define-public haskell-8.6-scientific
  (package
    (name "haskell-8.6-scientific")
    (version "0.3.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/scientific/scientific-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03ql2f0ac8bsl524idy9xxa3kxisb2sj3avflzw580j5hzy0m397"))))
    (properties `((upstream-name . "scientific") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bytestring-builder" "-f-integer-simple")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-integer-logarithms)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)))
    (home-page "https://github.com/basvandijk/scientific")
    (synopsis "Numbers represented using scientific notation")
    (description
     "\"Data.Scientific\" provides the number type 'Scientific'. Scientific numbers are
arbitrary precision and space efficient. They are represented using
<http://en.wikipedia.org/wiki/Scientific_notation scientific notation>.
The implementation uses a coefficient @@c :: 'Integer'@@ and a base-10 exponent
@@e :: 'Int'@@. A scientific number corresponds to the
'Fractional' number: @@'fromInteger' c * 10 '^^' e@@.

Note that since we're using an 'Int' to represent the exponent these numbers
aren't truly arbitrary precision. I intend to change the type of the exponent
to 'Integer' in a future release.

The main application of 'Scientific' is to be used as the target of parsing
arbitrary precision numbers coming from an untrusted source. The advantages
over using 'Rational' for this are that:

* A 'Scientific' is more efficient to construct. Rational numbers need to be
constructed using '%' which has to compute the 'gcd' of the 'numerator' and
'denominator'.

* 'Scientific' is safe against numbers with huge exponents. For example:
@@1e1000000000 :: 'Rational'@@ will fill up all space and crash your
program. Scientific works as expected:

>>> read \"1e1000000000\" :: Scientific
1.0e1000000000

* Also, the space usage of converting scientific numbers with huge exponents to
@@'Integral's@@ (like: 'Int') or @@'RealFloat's@@ (like: 'Double' or 'Float')
will always be bounded by the target type.")
    (license license:bsd-3)))

haskell-8.6-scientific

(define-public haskell-8.6-socks
  (package
    (name "haskell-8.6-socks")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/socks/socks-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0wvaxy3dkv97wrncjv1rxrmjr4014hgxz82kixvcwqdhidalfi3k"))))
    (properties `((upstream-name . "socks") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-basement)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)))
    (home-page "http://github.com/vincenthz/hs-socks")
    (synopsis "Socks proxy (ver 5)")
    (description "Socks proxy (version 5) implementation.")
    (license license:bsd-3)))

haskell-8.6-socks

(define-public haskell-8.6-sox
  (package
    (name "haskell-8.6-sox")
    (version "0.2.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sox/sox-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0idab4rsqj4zjm7dlzbf38rzpvkp1z9psrkl4lrp2qp1s53sp9kh"))))
    (properties `((upstream-name . "sox") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsplitbase")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-explicit-exception)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-sample-frame)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
    (home-page "http://www.haskell.org/haskellwiki/Sox")
    (synopsis "Play, write, read, convert audio signals using Sox")
    (description "This is a wrapper to Sox the Sound Exchanger
<http://sox.sourceforge.net/>
which lets you play, write, read and convert audio signals
in various formats, resolutions, and numbers of channels.

The functions call sox commands via the shell,
that is, the 'sox' and 'play' executables must be installed
and in the path to the executables must be set.

In the past this was part of the synthesizer package.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-sox

(define-public haskell-8.6-soxlib
  (package
    (name "haskell-8.6-soxlib")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-explicit-exception)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-sample-frame)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-storablevector)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)
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

haskell-8.6-soxlib

(define-public haskell-8.6-temporary-rc
  (package
    (name "haskell-8.6-temporary-rc")
    (version "1.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/temporary-rc/temporary-rc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1nqih0qks439k3pr5kmbbc8rjdw730slrxlflqb27fbxbzb8skqs"))))
    (properties `((upstream-name . "temporary-rc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)))
    (home-page "http://www.github.com/feuerbach/temporary")
    (synopsis
     "Portable temporary file and directory support for Windows and Unix, based on code from Cabal")
    (description
     "The functions for creating temporary files and directories in the base library are quite limited. The unixutils
package contains some good ones, but they aren't portable to Windows.
This library just repackages the Cabal implementations of its own temporary file and folder functions so that
you can use them without linking against Cabal or depending on it being installed.
This is a better maintained fork of the \"temporary\" package.")
    (license license:bsd-3)))

haskell-8.6-temporary-rc

(define-public haskell-8.6-text-format
  (package
    (name "haskell-8.6-text-format")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-format/text-format-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qxs8xyjk8nzzzam62lqqml9s0p08m749jri0lfaa844mnw3frij"))))
    (properties `((upstream-name . "text-format") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-developer")
       #:cabal-revision
       ("2" "05findgw709h930wshaq514maxarjyjhsam6pkyzq83iz1yc2gra")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-double-conversion)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://github.com/bos/text-format")
    (synopsis "Text formatting")
    (description
     "A text formatting library optimized for both ease of use and high
performance.")
    (license license:bsd-3)))

haskell-8.6-text-format

(define-public haskell-8.6-text-short
  (package
    (name "haskell-8.6-text-short")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-short/text-short-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0xyrxlb602z8bc9sr2y1fag0x56a20yj5qrkvy7iwc6hnznrynxz"))))
    (properties `((upstream-name . "text-short") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-asserts")
       #:cabal-revision
       ("3" "1wjy98ihhipzr34b310sgjjq3cc12aydhckbrgr21kxkzwglm4nv")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)))
    (home-page "https://hackage.haskell.org/package/text-short")
    (synopsis "Memory-efficient representation of Unicode text strings")
    (description
     "This package provides the 'ShortText' type which is suitable for keeping many short strings in memory. This is similiar to how 'ShortByteString' relates to 'ByteString'.

The main difference between 'Text' and 'ShortText' is that 'ShortText' uses UTF-8 instead of UTF-16 internally and also doesn't support zero-copy slicing (thereby saving 2 words). Consequently, the memory footprint of a (boxed) 'ShortText' value is 4 words (2 words when unboxed) plus the length of the UTF-8 encoded payload.")
    (license license:bsd-3)))

haskell-8.6-text-short

(define-public haskell-8.6-ttrie
  (package
    (name "haskell-8.6-ttrie")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ttrie/ttrie-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0s2a3zr99n0k8l847jcpzpi9vz8z69jjgxqd28b0p6jmi7llyi2h"))))
    (properties `((upstream-name . "ttrie") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-atomic-primops)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
    (home-page "http://github.com/mcschroeder/ttrie")
    (synopsis "Contention-free STM hash map")
    (description
     "A contention-free STM hash map.
\\\"Contention-free\\\" means that the map will never cause spurious conflicts.
A transaction operating on the map will only ever have to retry if
another transaction is operating on the same key at the same time.

This is an implementation of the /transactional trie/,
which is basically a /lock-free concurrent hash trie/ lifted into STM.
For a detailed discussion, including an evaluation of its performance,
see Chapter 4 of <https://github.com/mcschroeder/thesis my master's thesis>.")
    (license license:expat)))

haskell-8.6-ttrie

(define-public haskell-8.6-unique
  (package
    (name "haskell-8.6-unique")
    (version "0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/unique/unique-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "140a9avcxs1fkj1v2awplq6prd1g13yg0kckccw6i1qpgcdigyz3"))))
    (properties `((upstream-name . "unique") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0ydjjd6j7gr4mibky6j5rqwhy9frvfii0sr4g8shaxnph3y0kb6b")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)))
    (home-page "http://github.com/ekmett/unique/")
    (synopsis "Fully concurrent unique identifiers")
    (description "Fully concurrent unique identifiers")
    (license license:bsd-3)))

haskell-8.6-unique

(define-public haskell-8.6-unordered-containers
  (package
    (name "haskell-8.6-unordered-containers")
    (version "0.2.10.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unordered-containers/unordered-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wy5hfrs880hh8hvp648bl07ws777n3kkmczzdszr7papnyigwb5"))))
    (properties `((upstream-name . "unordered-containers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")
       #:cabal-revision
       ("1" "01727lm2spbqfn0rl89zv9zhpsmnls0kmizyckqf5nc3j9d0k6sy")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)))
    (home-page "https://github.com/tibbe/unordered-containers")
    (synopsis "Efficient hashing-based container types")
    (description
     "Efficient hashing-based container types.  The containers have been
optimized for performance critical use, both in terms of large data
quantities and high speed.

The declared cost of each operation is either worst-case or
amortized, but remains valid even if structures are shared.")
    (license license:bsd-3)))

haskell-8.6-unordered-containers

(define-public haskell-8.6-uuid-types
  (package
    (name "haskell-8.6-uuid-types")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uuid-types/uuid-types-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1zdka5jnm1h6k36w3nr647yf3b5lqb336g3fkprhd6san9x52xlj"))))
    (properties `((upstream-name . "uuid-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0ipwfd5y8021ygpadjjhchw5irm0x27dlv1k2hf4znza5v7hadcn")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)))
    (home-page "https://github.com/aslatter/uuid")
    (synopsis "Type definitions for Universally Unique Identifiers")
    (description
     "This library contains type definitions for Universally Unique Identifiers
and basic conversion functions.
See <http://en.wikipedia.org/wiki/UUID> for the general idea.")
    (license license:bsd-3)))

haskell-8.6-uuid-types

(define-public haskell-8.6-vivid-osc
  (package
    (name "haskell-8.6-vivid-osc")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vivid-osc/vivid-osc-" version
                    ".tar.gz"))
              (sha256
               (base32
                "041m4k1aqkw35fp7l03i3ba1jyppr8lia2v2zyq7v8yzby8ngys6"))))
    (properties `((upstream-name . "vivid-osc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-microspec)))
    (home-page "https://hackage.haskell.org/package/vivid-osc")
    (synopsis "Open Sound Control encode/decode")
    (description
     "Small, simple, and well-tested implementation of the Open Sound Control
message format.

Example usage:

>>> :set -XOverloadedStrings
>>> msg = OSC \"/foo\" [OSC_S \"bar\", OSC_I 9, OSC_F 0.1, OSC_B \"this-is-binary\"]
>>> :t msg
> msg :: OSC
>>> :t encodeOSC msg
> encodeOSC msg :: ByteString
>>> decodeOSC (encodeOSC msg) == Right msg
> True

Sending it over UDP (e.g. to TidalCycles), using the 'network' package:

@@
&#123;&#45;\\# LANGUAGE OverloadedStrings \\#&#45;&#125;
@@

> import Network.Socket
> import Network.Socket.ByteString as SB
>
> import Vivid.OSC
>
> main = do
>    -- Boring Network.Socket setup:
>    (a:_) <- getAddrInfo Nothing (Just \"127.0.0.1\") (Just \"57120\")
>    s <- socket (addrFamily a) Datagram defaultProtocol
>    connect s (addrAddress a)
>
>    -- The interesting part:
>    SB.send s $ encodeOSC $
>       OSC \"/play2\" [OSC_S \"cps\", OSC_F 1.2, OSC_S \"s\", OSC_S \"bd\"]")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-vivid-osc

(define-public haskell-8.6-writer-cps-exceptions
  (package
    (name "haskell-8.6-writer-cps-exceptions")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/writer-cps-exceptions/writer-cps-exceptions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hzfqmndlhqhb3l84fa1g51ydkf3py5vip5c1l6rzqak7b2ms6ls"))))
    (properties `((upstream-name . "writer-cps-exceptions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-writer-cps-transformers)))
    (home-page "https://github.com/minad/writer-cps-exceptions")
    (synopsis
     "Control.Monad.Catch instances for the stricter CPS WriterT and RWST")
    (description
     "Control.Monad.Catch instances for the stricter WriterT and RWST from writer-cps-transformers.")
    (license license:bsd-3)))

haskell-8.6-writer-cps-exceptions

(define-public haskell-8.6-xenstore
  (package
    (name "haskell-8.6-xenstore")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xenstore/xenstore-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0x788lpkkxg7ds1bgnw0kvkf6pkfbknn7jy0njhz85k7rv4kidf2"))))
    (properties `((upstream-name . "xenstore") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-executable")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)))
    (home-page "https://hackage.haskell.org/package/xenstore")
    (synopsis "Xenstore client access")
    (description "Xenstore client access")
    (license license:bsd-3)))

haskell-8.6-xenstore

(define-public haskell-8.6-xmlgen
  (package
    (name "haskell-8.6-xmlgen")
    (version "0.6.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/xmlgen/xmlgen-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1milbbr2iqwckqbq6i9sypinvs4hs7mzqn274x350psjfy6ajvwj"))))
    (properties `((upstream-name . "xmlgen") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0vwnqd0lsw81llsn0psga5r6pw7jh69vfbj3rnz7c2fpkc0gjh3j")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://hackage.haskell.org/package/xmlgen")
    (synopsis "Fast XML generation library")
    (description "Library for high-performance XML generation.")
    (license license:bsd-3)))

haskell-8.6-xmlgen

(define-public haskell-8.6-yeshql-core
  (package
    (name "haskell-8.6-yeshql-core")
    (version "4.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yeshql-core/yeshql-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zhpccdqy8y5ynyn2ax7p9l2lvz573f559iqkip26ijq84pjmny0"))))
    (properties `((upstream-name . "yeshql-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-convertible)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)))
    (home-page "https://github.com/tdammers/yeshql")
    (synopsis "YesQL-style SQL database abstraction (core)")
    (description
     "Use quasi-quotations or TemplateHaskell to write SQL in SQL, while
adding type annotations to turn SQL into well-typed Haskell
functions.")
    (license license:expat)))

haskell-8.6-yeshql-core

