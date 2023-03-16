;;; generated file
(define-module (gnu packages stackage ghc-9.2 stage010)
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
(define-public haskell-9.2-ALUT
  (package
    (name "haskell-9.2-ALUT")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-OpenAL)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-StateVar)
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

haskell-9.2-ALUT

(define-public haskell-9.2-BNFC
  (package
    (name "haskell-9.2-BNFC")
    (version "2.9.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/BNFC/BNFC-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0l3jw86b14jfrd4phjkhpl9qq8im3lnbbhhadmivdr1k2sf614sy"))))
    (properties `((upstream-name . "BNFC") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-alex)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-happy)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-string-qq)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)))
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

haskell-9.2-BNFC

(define-public haskell-9.2-ClustalParser
  (package
    (name "haskell-9.2-ClustalParser")
    (version "1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ClustalParser/ClustalParser-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zm0n4pvs9dspfh3x7zfjs20k78mkhsqy6xkg4002b7g8c5bwkp6"))))
    (properties `((upstream-name . "ClustalParser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cmdargs)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-either-unwrap)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (home-page "https://hackage.haskell.org/package/ClustalParser")
    (synopsis "Libary for parsing Clustal tools output")
    (description
     "Currently contains parsers and datatypes for: clustalw2, clustalo, mlocarna, cmalign

Clustal tools are multiple sequence alignment tools for biological sequence like DNA, RNA and Protein.
For more information on clustal Tools refer to <http://www.clustal.org/>.

Mlocarna is a multiple sequence alignment tool for RNA sequences with secondary structure output.
For more information on mlocarna refer to <http://www.bioinf.uni-freiburg.de/Software/LocARNA/>.

Cmalign is a multiple sequence alignment program based on RNA family models and produces
,among others, clustal output. It is part of infernal <http://infernal.janelia.org/>.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-ClustalParser

(define-public haskell-9.2-ConfigFile
  (package
    (name "haskell-9.2-ConfigFile")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-MissingH)))
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

haskell-9.2-ConfigFile

(define-public haskell-9.2-Earley
  (package
    (name "haskell-9.2-Earley")
    (version "0.13.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Earley/Earley-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "169qjicjj09wg879vp86ali4rrqpw0ikazvdi3i1qi6pl3yvqq0y"))))
    (properties `((upstream-name . "Earley") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-ListLike)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/Earley")
    (synopsis "Parsing all context-free grammars using Earley's algorithm.")
    (description "See <https://www.github.com/ollef/Earley> for more
information and
<https://github.com/ollef/Earley/tree/master/examples> for
examples.")
    (license license:bsd-3)))

haskell-9.2-Earley

(define-public haskell-9.2-JuicyPixels-extra
  (package
    (name "haskell-9.2-JuicyPixels-extra")
    (version "0.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/JuicyPixels-extra/JuicyPixels-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11y4735bbp99wvi4fkpvkda7cj4c6iqp437drs27flicx2ygc687"))))
    (properties `((upstream-name . "JuicyPixels-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "1rmqhwbkdbwa2ng5zlpfwrfnqlcxrvgy3i5ymrjiw5jl9wp6j13c")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mrkkrp/JuicyPixels-extra")
    (synopsis "Efficiently scale, crop, flip images with JuicyPixels")
    (description "Efficiently scale, crop, flip images with JuicyPixels.")
    (license license:bsd-3)))

haskell-9.2-JuicyPixels-extra

(define-public haskell-9.2-Network-NineP
  (package
    (name "haskell-9.2-Network-NineP")
    (version "0.4.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/Network-NineP/Network-NineP-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19m5iz99igw6bdqh9zln1cmfms0nrghvf9553fb2gjzv0i9dbygs"))))
    (properties `((upstream-name . "Network-NineP") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-NineP)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-convertible)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hslogger)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-monad-loops)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-monad-peel)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-mstate)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-network-bsd)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-posix)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-stateref)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/Network-NineP")
    (synopsis "High-level abstraction over 9P protocol")
    (description
     "A library providing one with a somewhat higher level interface to 9P2000 protocol than existing implementations. Designed to facilitate rapid development of synthetic filesystems.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-Network-NineP

(define-public haskell-9.2-RefSerialize
  (package
    (name "haskell-9.2-RefSerialize")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/RefSerialize/RefSerialize-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cmvab3yakazhgij3x8s871r9wf8ixkwmb52k88rcgclmfqmxch5"))))
    (properties `((upstream-name . "RefSerialize") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hashtables)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-stringsearch)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/RefSerialize")
    (synopsis
     "Write to and read from ByteStrings maintaining internal memory references")
    (description
     "Read, Show and Binary instances do not check for internal data references to the same address.
As a result, the data is duplicated when serialized. This is a waste of space in the filesystem
and  also a waste of serialization time. but the worst consequence is that, when the serialized data is read,
it allocates multiple copies for the same object when referenced multiple times. Because multiple referenced
data is very typical in a pure language such is Haskell, this means that the resulting data loose the beatiful
economy of space and processing time that referential transparency permits.

In this release:

Compatibility with older versions of bytestring that have no 'toStrict' call

deserialization is much, much faster by using the stringsearch package

See \"Data.RefSerialize\" for details")
    (license license:bsd-3)))

haskell-9.2-RefSerialize

(define-public haskell-9.2-ViennaRNAParser
  (package
    (name "haskell-9.2-ViennaRNAParser")
    (version "1.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ViennaRNAParser/ViennaRNAParser-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zmfzdp28g9mz99yp2kv98g745a2p4cls4553izcbc5q0v8l3sby"))))
    (properties `((upstream-name . "ViennaRNAParser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ParsecTools)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/ViennaRNAParser")
    (synopsis "Libary for parsing ViennaRNA package output")
    (description
     "Currently contains parsers and datatypes for: RNAalifold, RNAcode, RNAdistance, RNAcofold, RNAfold, RNAplex, RNAup, RNAz.

For more information on the ViennaRNA package refer to <http://www.tbi.univie.ac.at/RNA/>.

The libary is tested with Version 2.3.2 of the ViennaRNA package.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-ViennaRNAParser

(define-public haskell-9.2-adler32
  (package
    (name "haskell-9.2-adler32")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/adler32/adler32-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1936b05mx842wm8swz3g3jv6m9absa04islq4rwysicz72gkrd16"))))
    (properties `((upstream-name . "adler32") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fzlib")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/redneb/hs-adler32")
    (synopsis
     "An implementation of Adler-32, supporting rolling checksum operation")
    (description
     "This package provides an implementation of the Adler-32 checksum algorithm.
It supports a rolling checksum mode, i.e. the checksum of a sliding window
of the input message can be computed efficiently. It also supports
compounding, i.e. the checksum of the concatenation of two messages can be
efficiently computed from the checksums of the two parts.

By default, the highly optimized implementation of Adler-32 from @@zlib@@
will be used. This can be disabled, in which case a pure haskell
implementation will be used instead. On my system, the haskell version
is 2 to 3 times slower.")
    (license license:bsd-3)))

haskell-9.2-adler32

(define-public haskell-9.2-alarmclock
  (package
    (name "haskell-9.2-alarmclock")
    (version "0.7.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/alarmclock/alarmclock-" version
                    ".tar.gz"))
              (sha256
               (base32
                "02fkmdhhzdmjkz68l9gayk99b21kvm47ksaflqlqsw3yiy8zq2ss"))))
    (properties `((upstream-name . "alarmclock") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unbounded-delays)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/DaveCTurner/alarmclock")
    (synopsis "Wake up and perform an action at a certain time.")
    (description
     "Please see the README at <https://github.com/DaveCTurner/alarmclock/blob/master/README.md>")
    (license license:bsd-3)))

haskell-9.2-alarmclock

(define-public haskell-9.2-app-settings
  (package
    (name "haskell-9.2-app-settings")
    (version "0.2.0.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/app-settings/app-settings-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1nncn8vmq55m4b6zh77mdmx19d1s7z0af4pmz1v082bpf2wril9b"))))
    (properties `((upstream-name . "app-settings") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/emmanueltouzery/app-settings")
    (synopsis "A library to manage application settings (INI file-like)")
    (description
     "A library to deal with application settings.

This library deals with read-write application settings.
You will have to specify the settings that your application
uses, their name, types and default values.

Setting types must implement the 'Read' and 'Show' typeclasses.

The settings are saved in a file in an INI-like key-value format
(without sections).

Reading and updating settings is done in pure code, the IO
monad is only used to load settings and save them to disk.
It is advised for the user to create a module in your project
holding settings handling.

You can then declare settings:

> fontSize :: Setting Double
> fontSize = Setting \"fontSize\" 14
>
> dateFormat :: Setting String
> dateFormat = Setting \"dateFormat\" \"%x\"
>
> backgroundColor :: Setting (Int, Int, Int)
> backgroundColor = Setting \"backcolor\" (255, 0, 0)

Optionally you can declare the list of all your settings,
in that case the application will also save the default
values in the configuration file, but commented out:

> fontSize=16
> # dateFormat=\"%x\"
> # backcolor=(255,0,0)

If you do not specify the list of settings, only the
first line would be present in the configuration file.

With an ordinary setting, one row in the configuration file
means one setting. That setting may of course be a list
for instance. This setup works very well for shorter lists
like [1,2,3], however if you have a list of more complex
items, you will get very long lines and a configuration
file very difficult to edit by hand.

For these special cases there is also the 'ListSetting'
constructor:

> testList :: Setting [String]
> testList = ListSetting \"testList\" [\"list1\", \"list2\", \"list3\"]

Now the configuration file looks like that:

> testList_1=\"list1\"
> testList_2=\"list2\"
> testList_3=\"list3\"

Which is much more handy for big lists. An empty list is represented
like so:

> testList=

There is also another technique that you can use if you have too long
lines: you can put line breaks in the setting values if you start the
following lines with a leading space, like so:

> testList=[\"list1\",
>  \"list2\", \"list3\"]

In that case don't use the ListSetting option. Any character after the
the leading space in the next lines will go in the setting value. Note
that the library will automatically wrap setting values longer than 80
characters when saving.

Once we declared the settings, we can read the configuration
from disk (and your settings module should export your wrapper
around the function offered by this library):

> readResult <- try $ readSettings (AutoFromAppName \"test\")
> case readResult of
> 	Right (conf, GetSetting getSetting) -> do
> 		let textSize = getSetting fontSize
> 		saveSettings emptyDefaultConfig (AutoFromAppName \"test\") conf
> 	Left (x :: SomeException) -> error \"Error reading the config file!\"

'AutoFromAppName' specifies where to save the configuration file.
And we've already covered the getSetting in this snippet, see
the 'readSettings' documentation for further information.

You can also look at the tests of the library on the github project for sample use.")
    (license license:bsd-3)))

haskell-9.2-app-settings

(define-public haskell-9.2-appendmap
  (package
    (name "haskell-9.2-appendmap")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/appendmap/appendmap-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03mr60hgb5593s9vhc5890xwd2pdyismfkvnvw5hxhq26wda5grd"))))
    (properties `((upstream-name . "appendmap") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/koterpillar/appendmap#readme")
    (synopsis
     "Map with a Semigroup and Monoid instances delegating to Semigroup of the elements")
    (description
     "Please see the README on GitHub at <https://github.com/koterpillar/appendmap#readme>")
    (license license:bsd-3)))

haskell-9.2-appendmap

(define-public haskell-9.2-ascii-char
  (package
    (name "haskell-9.2-ascii-char")
    (version "1.0.0.17")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-char/ascii-char-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1562gkfvrcjygs9qpyswsk25d4m2pxblmmbb0hw8jsaml2jwsyss"))))
    (properties `((upstream-name . "ascii-char") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/typeclasses/ascii-char")
    (synopsis "A Char type representing an ASCII character")
    (description "This package defines a @@Char@@ type that has
128 constructors, one for each ASCII character.")
    (license license:asl2.0)))

haskell-9.2-ascii-char

(define-public haskell-9.2-async-extra
  (package
    (name "haskell-9.2-async-extra")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/async-extra/async-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hyc27mphjpc7m9khs47ch0q6j6hy2hmibk82vzrfmc3rfjxa1hd"))))
    (properties `((upstream-name . "async-extra") (hidden? . #f)))
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
                     haskell-9.2-split)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/agrafix/async-extra#readme")
    (synopsis "Useful concurrent combinators")
    (description "Various concurrent combinators")
    (license license:expat)))

haskell-9.2-async-extra

(define-public haskell-9.2-async-pool
  (package
    (name "haskell-9.2-async-pool")
    (version "0.9.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/async-pool/async-pool-" version
                    ".tar.gz"))
              (sha256
               (base32
                "11nig4p5m916ffnbhkawglm7r2kl5b8090xv9cyr849l7q7mrcm8"))))
    (properties `((upstream-name . "async-pool") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-fgl)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/async-pool")
    (synopsis
     "A modified version of async that supports worker groups and many-to-many task dependencies")
    (description
     "This library modifies the @@async@@ package to allow for task pooling and
many-to-many dependencies between tasks.")
    (license license:expat)))

haskell-9.2-async-pool

(define-public haskell-9.2-atomic-write
  (package
    (name "haskell-9.2-atomic-write")
    (version "0.2.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/atomic-write/atomic-write-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03cn3ii74h0w3g4h78xsx9v2sn58r3qsr2dbdwq340xwhiwcgxdm"))))
    (properties `((upstream-name . "atomic-write") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unix-compat)))
    (home-page "https://github.com/stackbuilders/atomic-write")
    (synopsis "Atomically write to a file")
    (description
     "
Atomically write to a file on POSIX-compliant systems while preserving
permissions.

On most Unix systems, `mv` is an atomic operation. This makes it simple to write
to a file atomically just by using the mv operation. However, this will
destroy the permissions on the original file. This library does the following
to preserve permissions while atomically writing to a file:

* If an original file exists, take those permissions and apply them to the
temp file before `mv`ing the file into place.

* If the original file does not exist, create a following with default
permissions (based on the currently-active umask).

This way, when the file is `mv`'ed into place, the permissions will be the ones
held by the original file.

This library is based on similar implementations found in common libraries in
Ruby and Python:

* <http://apidock.com/rails/File/atomic_write/class Ruby on Rails includes a similar method called atomic_write>

* <https://github.com/chef/chef/blob/c4631816132fcfefaba3d123a1d0dfe8bc2866bb/lib/chef/file_content_management/deploy/mv_unix.rb#L23:L71 Chef includes atomic update functionality>

* <https://github.com/sashka/atomicfile There is a python library for atomically updating a file>

To use `atomic-write`, import the module corresponding to the type you wish to
write atomically, e.g., to write a (strict) ByteString atomically:

> import System.AtomicWrite.Writer.ByteString

Then you can use the atomicWriteFile function that accepts a `FilePath` and a
`ByteString`, e.g.:

> atomicWriteFile myFilePath myByteString")
    (license license:expat)))

haskell-9.2-atomic-write

(define-public haskell-9.2-attoparsec
  (package
    (name "haskell-9.2-attoparsec")
    (version "0.14.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec/attoparsec-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0v4yjz4qi8bwhbyavqxlhsfb1iv07v10gxi64khmsmi4hvjpycrz"))))
    (properties `((upstream-name . "attoparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-developer")
       #:cabal-revision
       ("3" "1ciz49yg6zcaf5dvh5wp3kv92jxa23pblggfldbmy5q54dr5nish")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell/attoparsec")
    (synopsis "Fast combinator parsing for bytestrings and text")
    (description
     "A fast parser combinator library, aimed particularly at dealing
efficiently with network protocols and complicated text/binary
file formats.")
    (license license:bsd-3)))

haskell-9.2-attoparsec

(define-public haskell-9.2-bank-holidays-england
  (package
    (name "haskell-9.2-bank-holidays-england")
    (version "0.2.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bank-holidays-england/bank-holidays-england-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1n2ddf60q2g1yjwq754irxq9nzmx5i2z3r2rnw263bppcldkizkj"))))
    (properties `((upstream-name . "bank-holidays-england") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/DaveCTurner/bank-holidays-england")
    (synopsis "Calculation of bank holidays in England and Wales")
    (description
     "Calculation of bank holidays in England and Wales, using the rules that have
been in place since 1978, and including all exceptions to the rules in the
years 1995 to 2020.")
    (license license:bsd-3)))

haskell-9.2-bank-holidays-england

(define-public haskell-9.2-base-compat-batteries
  (package
    (name "haskell-9.2-base-compat-batteries")
    (version "0.12.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base-compat-batteries/base-compat-batteries-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16gbqng8556wqcvrmj3dmqxh9sxp7z6ixgv0j5sy017r0wp0ksgd"))))
    (properties `((upstream-name . "base-compat-batteries") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/base-compat-batteries")
    (synopsis "base-compat with extra batteries")
    (description
     "Provides functions available in later versions of @@base@@ to
a wider range of compilers, without requiring you to use CPP
pragmas in your code.

This package provides the same API as the
@@<http://hackage.haskell.org/package/base-compat base-compat>@@
library, but depends on compatibility packages
(such as @@semigroups@@) to offer a wider support window than
@@base-compat@@, which has no dependencies. Most of the modules
in this library have the same names as in @@base-compat@@
to make it easier to switch between the two. There also exist
versions of each module with the suffix @@.Repl.Batteries@@,
which are distinct from anything in @@base-compat@@, to allow
for easier use in GHCi.

See
@@<https://github.com/haskell-compat/base-compat/blob/master/base-compat/README.markdown#dependencies here>@@
for a more comprehensive list of differences between
@@base-compat@@ and @@base-compat-batteries@@.")
    (license license:expat)))

haskell-9.2-base-compat-batteries

(define-public haskell-9.2-base16
  (package
    (name "haskell-9.2-base16")
    (version "0.3.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/base16/base16-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ybmcik5nlly7s9bfwlaqqk8jpgwxp5ac4bhdiq4lckbfynvm0qf"))))
    (properties `((upstream-name . "base16") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0qjaz2kkcmrfzbr6f44jkb1zdgbayh0yahp06j8gb281783ng6d8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-random-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-text-short)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/emilypi/base16")
    (synopsis "Fast RFC 4648-compliant Base16 encoding")
    (description
     "RFC 4648-compliant Base16 encodings and decodings.
This library provides performant encoding and decoding primitives, as well as support for textual values.")
    (license license:bsd-3)))

haskell-9.2-base16

(define-public haskell-9.2-base32
  (package
    (name "haskell-9.2-base32")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/base32/base32-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1g4yb3v1rgggl4ks4wznidssycs23zjl6fz1iiachf730hz79w31"))))
    (properties `((upstream-name . "base32") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-random-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-text-short)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/emilypi/base32")
    (synopsis "Fast RFC 4648-compliant Base32 encoding")
    (description
     "RFC 4648-compliant Base32 encodings and decodings.
This library provides performant encoding and decoding primitives, as well as support for textual values.")
    (license license:bsd-3)))

haskell-9.2-base32

(define-public haskell-9.2-base64
  (package
    (name "haskell-9.2-base64")
    (version "0.4.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/base64/base64-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "119mpqcv1rwkhwm69ga2b4f7hr825fa5wfm1w3i1szmhzh52s2k4"))))
    (properties `((upstream-name . "base64") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0cz3zzz9k490w9nfn4hpgdw4zx4w70fwqrwsfx8svcwqssqibqw3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-text-short)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/emilypi/base64")
    (synopsis "A modern RFC 4648-compliant Base64 library")
    (description
     "RFC 4648-compliant Base64 with an eye towards performance and modernity (additional support for RFC 7049 standards)")
    (license license:bsd-3)))

haskell-9.2-base64

(define-public haskell-9.2-basic-prelude
  (package
    (name "haskell-9.2-basic-prelude")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/basic-prelude/basic-prelude-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yckmnvm6i4vw0mykj4fzl4ldsf67v8d2h0vp1bakyj84n4myx8h"))))
    (properties `((upstream-name . "basic-prelude") (hidden? . #f)))
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
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snoyberg/basic-prelude#readme")
    (synopsis
     "An enhanced core prelude; a common foundation for alternate preludes.")
    (description
     "Please see the README on Github at <https://github.com/snoyberg/basic-prelude#readme>")
    (license license:expat)))

haskell-9.2-basic-prelude

(define-public haskell-9.2-bbdb
  (package
    (name "haskell-9.2-bbdb")
    (version "0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bbdb/bbdb-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0p1aphzp55h4zlh3h8xnm6mxvsxyrab98ms8f07iqvp4p267kryw"))))
    (properties `((upstream-name . "bbdb") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/henrylaxen/bbdb")
    (synopsis "Ability to read, write, and modify BBDB files")
    (description "BBDB (http://savannah.nongnu.org/projects/bbdb/) is a
contact management utility that can be used with
emacs.  It stores its data internally as a lisp
expression.  This module parses the lisp and
provides some convenience functions to get at and
manipulate the data all from within Haskell.  See
the hackage docs for usage and examples.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-bbdb

(define-public haskell-9.2-bencode
  (package
    (name "haskell-9.2-bencode")
    (version "0.6.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bencode/bencode-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0znv0y3b3zm5jvhlvj5f5s7y93db67j9yd59w1bnrw2pqv30gqaq"))))
    (properties `((upstream-name . "bencode") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)))
    (home-page "https://hackage.haskell.org/package/bencode")
    (synopsis "Parsers and printers for bencoded data.")
    (description
     "Parsers and printers for bencoded data. Bencode (pronounced like B
encode) is the encoding used by the peer-to-peer file sharing system
BitTorrent for storing and transmitting loosely structured data.")
    (license license:bsd-3)))

haskell-9.2-bencode

(define-public haskell-9.2-bin
  (package
    (name "haskell-9.2-bin")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bin/bin-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0idm2ix4wv1ppr3fjvd8xdlbkhk6lq4rvfs9dv615lmds4gbzm72"))))
    (properties `((upstream-name . "bin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "052i9qfb037p71fhzl38ly51jkk9q6klb1cb07a0cv2ja5nzrjgn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-boring)
                  (@ (gnu packages stackage ghc-9.2 stage002) haskell-9.2-dec)
                  (@ (gnu packages stackage ghc-9.2 stage009) haskell-9.2-fin)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-some)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/phadej/vec")
    (synopsis "Bin: binary natural numbers.")
    (description
     "This package provides /binary natural numbers/ (\"Data.Bin\");
also utilities to work on the type level with @@DataKinds@@ (\"Data.Type.Bin\").

@@
data Bin
\\    = BZ       -- ^ zero
\\    | BP BinP  -- ^ non-zero

data BinP
\\    = BE       -- ^ one
\\    | B0 BinP  -- ^ double
\\    | B1 BinP  -- ^ double plus 1
@@

There are /ordinals/ in \"Data.Bin.Pos\" module, as well as
fixed width integers in \"Data.Wrd\".

Another implementation is at <https://hackage.haskell.org/package/nat>,
this differs in naming, and provides promoted variant.")
    (license license:gpl2+)))

haskell-9.2-bin

(define-public haskell-9.2-bitset-word8
  (package
    (name "haskell-9.2-bitset-word8")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bitset-word8/bitset-word8-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06axklmjzwq2s9s3p5m5z0isl4smxhs8hij7zm9c7pd5hj7xhipj"))))
    (properties `((upstream-name . "bitset-word8") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-th-lift-instances)))
    (home-page "https://github.com/nshimaza/bitset-word8#readme")
    (synopsis
     "Space efficient set of Word8 and some pre-canned sets useful for parsing HTTP")
    (description
     "Please see the README on GitHub at <https://github.com/nshimaza/bitset-word8#readme>")
    (license license:expat)))

haskell-9.2-bitset-word8

(define-public haskell-9.2-blas-comfort-array
  (package
    (name "haskell-9.2-blas-comfort-array")
    (version "0.0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blas-comfort-array/blas-comfort-array-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g0bvag205ag520vlxv24cv63idjg6j8nwnadq9gbcibn4gvsisz"))))
    (properties `((upstream-name . "blas-comfort-array") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1jdl8x0vs6p0h3qcwal7zr281cxqlxppq43yg2jkidhddqf9sgpd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-blas-ffi)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-comfort-array)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-netlib-comfort-array)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-netlib-ffi)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-storable-complex)))
    (home-page "https://hub.darcs.net/thielema/blas-comfort-array/")
    (synopsis "Auto-generated interface to Fortran BLAS via comfort-array")
    (description
     "BLAS is a package for efficient basic linear algebra operations.
The reference implementation is written in FORTRAN.
This is a semi-automatically generated mid-level wrapper.
The functions are not ready to use for high-level applications,
but they are a step closer.

See also package @@lapack-comfort-array@@.")
    (license license:bsd-3)))

haskell-9.2-blas-comfort-array

(define-public haskell-9.2-boots
  (package
    (name "haskell-9.2-boots")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/boots/boots-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04dh749p5nwar3hgmx5g12814lazwrzzqxbxbk4f003qpbd8np8w"))))
    (properties `((upstream-name . "boots") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/leptonyu/boots#readme")
    (synopsis "IoC Monad in Haskell")
    (description
     "Monad used to encapsulate components, similiar to an IoC container.")
    (license license:expat)))

haskell-9.2-boots

(define-public haskell-9.2-bordacount
  (package
    (name "haskell-9.2-bordacount")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bordacount/bordacount-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1kpx8q50j5k49mbrm1kpcd34jgvx4rfmw3bm4qbjrp48ysai0sfb"))))
    (properties `((upstream-name . "bordacount") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/hverr/bordacount#readme")
    (synopsis "Implementation of the Borda count election method.")
    (description
     "Implementation of the Borda count election method, optionally with
different weights for different participants.

See <https://en.wikipedia.org/wiki/Borda_count>")
    (license license:bsd-3)))

haskell-9.2-bordacount

(define-public haskell-9.2-burrito
  (package
    (name "haskell-9.2-burrito")
    (version "2.0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/burrito/burrito-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1awfxllw4n1zg58q08ml25k0f3mvbrlsws17m40hwp3ddvv8nyfd"))))
    (properties `((upstream-name . "burrito") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pedantic")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/burrito")
    (synopsis "Parse and render URI templates.")
    (description
     "Burrito is a Haskell library for parsing and rendering URI templates.

According to [RFC 6570](https://tools.ietf.org/html/rfc6570): \"A URI Template
is a compact sequence of characters for describing a range of Uniform
Resource Identifiers through variable expansion.\" Burrito implements URI
templates according to the specification in that RFC.

The term \"uniform resource identifiers\" (URI) is often used interchangeably
with other related terms like \"internationalized resource identifier\" (IRI),
\"uniform resource locator\" (URL), and \"uniform resource name\" (URN). Burrito
can be used for all of these. If you want to get technical, its input must be
a valid IRI and its output will be a valid URI or URN.

Although Burrito is primarily intended to be used with HTTP and HTTPS URIs,
it should work with other schemes as well.")
    (license license:expat)))

haskell-9.2-burrito

(define-public haskell-9.2-byte-count-reader
  (package
    (name "haskell-9.2-byte-count-reader")
    (version "0.10.1.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/byte-count-reader/byte-count-reader-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k9ayxy7snxp0wc9wqqb8yka4zyc6s3bkm98znzbpznhqld81x8v"))))
    (properties `((upstream-name . "byte-count-reader") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-parsec-numbers)))
    (home-page "https://github.com/danielrolls/byte-count-reader#readme")
    (synopsis "Read strings describing a number of bytes like 2Kb and 0.5 MiB")
    (description
     "Please see the README on GitHub at <https://github.com/danielrolls/byte-count-reader#readme>")
    (license license:gpl3)))

haskell-9.2-byte-count-reader

(define-public haskell-9.2-byte-order
  (package
    (name "haskell-9.2-byte-order")
    (version "0.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/byte-order/byte-order-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0lr5ijhc165qhviabklnl0zpbk5400wb1fqd1xn7x0ga1vvclxhl"))))
    (properties `((upstream-name . "byte-order") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0gkp45pasdg9k98yaw3fpsch4wy50q5n4wdmqlsffciimc0k11x1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-primitive-unaligned)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-wide-word)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/andrewthad/byte-order")
    (synopsis "Portable big-endian and little-endian conversions")
    (description
     "This library provides an interface to portably work with byte
arrays whose contents are known to be of a fixed endianness.
There are two ways to use this module. See the `System.ByteOrder`
module for more documentation.")
    (license license:bsd-3)))

haskell-9.2-byte-order

(define-public haskell-9.2-bytes
  (package
    (name "haskell-9.2-bytes")
    (version "0.17.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bytes/bytes-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "06kqqk19qjhrwdqi6pyd1lwqfnj2sw3b3s49lc5vr2fmv8gg8mdw"))))
    (properties `((upstream-name . "bytes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0frs6ag93kmg2fw3vd686czx8g7h9qmdn1ip6wdk96d94ap0fz9i")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-binary-orphans)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ekmett/bytes")
    (synopsis "Sharing code for serialization between binary and cereal")
    (description "Sharing code for serialization between binary and cereal.")
    (license license:bsd-3)))

haskell-9.2-bytes

(define-public haskell-9.2-cache
  (package
    (name "haskell-9.2-cache")
    (version "0.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cache/cache-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0d75257kvjpnv95ja50x5cs77pj8ccfr0nh9q5gzvcps83qdksa2"))))
    (properties `((upstream-name . "cache") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-clock)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hverr/haskell-cache#readme")
    (synopsis "An in-memory key/value store with expiration support")
    (description
     "An in-memory key/value store with expiration support, similar
to patrickmn/go-cache for Go.

The cache is a shared mutable HashMap implemented using STM and
with support for expiration times.")
    (license license:bsd-3)))

haskell-9.2-cache

(define-public haskell-9.2-call-plantuml
  (package
    (name "haskell-9.2-call-plantuml")
    (version "0.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/call-plantuml/call-plantuml-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wipnjcwv4d92vh1nmf228gf8bdy2yc0fana0a7zg5fxkaqznq0v"))))
    (properties `((upstream-name . "call-plantuml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/marcellussiegburg/call-plantuml#readme")
    (synopsis
     "A simple library to call PlantUML given a diagram specification")
    (description
     "Please see the README on GitHub at <https://github.com/marcellussiegburg/call-plantuml#readme>")
    (license license:expat)))

haskell-9.2-call-plantuml

(define-public haskell-9.2-calligraphy
  (package
    (name "haskell-9.2-calligraphy")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/calligraphy/calligraphy-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fkjvvisrnadli5i8l7b8d8n7z3lwhzrihfrl3h9jkgham54f5mp"))))
    (properties `((upstream-name . "calligraphy") (hidden? . #f)))
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
                     haskell-9.2-enummapset)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)))
    (home-page "https://github.com/jonascarpay/calligraphy#readme")
    (synopsis "HIE-based Haskell call graph and source code visualizer")
    (description
     "Calligraphy is a Haskell call graph/source code visualizer.
It works directly on GHC-generated HIE files, giving us features that would otherwise be tricky, like type information and support for generated files.
Calligraphy has been tested with all versions of GHC that can produce HIE files (i.e. GHC 8.8, 8.10, 9.0, and 9.2.)
See the project's github page for more information.")
    (license license:bsd-3)))

haskell-9.2-calligraphy

(define-public haskell-9.2-can-i-haz
  (package
    (name "haskell-9.2-can-i-haz")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/can-i-haz/can-i-haz-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0pwwl5pawvd1sygc8k7ichfk15inhcy4has40zplqqws5lmm6mz8"))))
    (properties `((upstream-name . "can-i-haz") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/0xd34df00d/can-i-haz#readme")
    (synopsis "Generic implementation of the Has and CoHas patterns")
    (description
     "Please see the README on GitHub at <https://github.com/0xd34df00d/can-i-haz#readme>")
    (license license:bsd-3)))

haskell-9.2-can-i-haz

(define-public haskell-9.2-cereal-unordered-containers
  (package
    (name "haskell-9.2-cereal-unordered-containers")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cereal-unordered-containers/cereal-unordered-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gwg67r8z2jzlnks4pki9lwy4hghpynlrmd504mrnw28ahfmp9wn"))))
    (properties `((upstream-name . "cereal-unordered-containers")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/metrix-ai/cereal-unordered-containers ")
    (synopsis "Integration of \"cereal\" and \"unordered-containers\"")
    (description "")
    (license license:expat)))

haskell-9.2-cereal-unordered-containers

(define-public haskell-9.2-chan
  (package
    (name "haskell-9.2-chan")
    (version "0.0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/chan/chan-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1ks74njh8fj9dh8qhydwjyqdx8lrdj5fif455cxfshvdbwhcnvwj"))))
    (properties `((upstream-name . "chan") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/athanclark/chan#readme")
    (synopsis "Some extra kit for Chans")
    (description
     "Please see the README on Github at <https://github.com/athanclark/chan#readme>")
    (license license:bsd-3)))

haskell-9.2-chan

(define-public haskell-9.2-charset
  (package
    (name "haskell-9.2-charset")
    (version "0.3.9")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/charset/charset-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "12wrphd5j1asb3n6awbph4n695mfmnzk6yzggrp387hx960qfkyb"))))
    (properties `((upstream-name . "charset") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/charset")
    (synopsis
     "Fast unicode character sets based on complemented PATRICIA tries")
    (description
     "Fast unicode character sets based on complemented PATRICIA tries.")
    (license license:bsd-3)))

haskell-9.2-charset

(define-public haskell-9.2-clientsession
  (package
    (name "haskell-9.2-clientsession")
    (version "0.9.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/clientsession/clientsession-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s6h4ykj16mpf7nlw2iqn2ji0p8g1fn5ni0s7yqaili6vv2as5ar"))))
    (properties `((upstream-name . "clientsession") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-test")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-cipher-aes)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-cprng-aes)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-crypto-api)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-crypto-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-entropy)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-setenv)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-skein)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)))
    (home-page "http://github.com/yesodweb/clientsession/tree/master")
    (synopsis "Securely store session data in a client-side cookie.")
    (description "Achieves security through AES-CTR encryption and
Skein-MAC-512-256 authentication.  Uses Base64
encoding to avoid any issues with characters.")
    (license license:expat)))

haskell-9.2-clientsession

(define-public haskell-9.2-compactmap
  (package
    (name "haskell-9.2-compactmap")
    (version "0.1.4.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/compactmap/compactmap-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0x7ps0pnjnyfr2pyjk839z7dwidizkcqwi29zxy2pgvq5856w5i2"))))
    (properties `((upstream-name . "compactmap") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (home-page "https://hackage.haskell.org/package/compactmap")
    (synopsis "A read-only memory-efficient key-value store.")
    (description "")
    (license license:bsd-3)))

haskell-9.2-compactmap

(define-public haskell-9.2-concurrent-output
  (package
    (name "haskell-9.2-concurrent-output")
    (version "1.10.17")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/concurrent-output/concurrent-output-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12dmpjdiv3y1jnljvsbx258plzjvsjnizn25csmy7w4scfbrjl0b"))))
    (properties `((upstream-name . "concurrent-output") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-terminal-size)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/concurrent-output")
    (synopsis "Ungarble output from several threads or commands")
    (description
     "Lets multiple threads and external processes concurrently output to the
console, without it getting all garbled up.

Built on top of that is a way of defining multiple output regions,
which are automatically laid out on the screen and can be individually
updated by concurrent threads. Can be used for progress displays etc.

<<https://joeyh.name/code/concurrent-output/demo2.gif>>")
    (license license:bsd-2)))

haskell-9.2-concurrent-output

(define-public haskell-9.2-conferer
  (package
    (name "haskell-9.2-conferer")
    (version "1.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conferer/conferer-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1hkdrqxrac1mbzvd29f6ds4cbihdv0j0daai7yc282myv0varh09"))))
    (properties `((upstream-name . "conferer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "15gs9cv1i9j4qx6vnp32yhcjb5rjaf9g3jsfdzmi5v7i3b1gziwc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "https://conferer.ludat.io")
    (synopsis "Configuration management library")
    (description
     "Library to abstract the parsing of many haskell config values from different config sources")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-9.2-conferer

(define-public haskell-9.2-constraints
  (package
    (name "haskell-9.2-constraints")
    (version "0.13.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/constraints/constraints-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0d248szyp70k1qlivsimk0j5vz9hdx1alhismry5v35qyinr91j1"))))
    (properties `((upstream-name . "constraints") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-type-equality)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/constraints/")
    (synopsis "Constraint manipulation")
    (description
     "GHC 7.4 gave us the ability to talk about @@ConstraintKinds@@. They stopped crashing the compiler in GHC 7.6.

This package provides a vocabulary for working with them.")
    (license license:bsd-2)))

haskell-9.2-constraints

(define-public haskell-9.2-context
  (package
    (name "haskell-9.2-context")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/context/context-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "089v5dkpmlqrpdghhhmwca91dzzigsxwygjpg71ig5352cdfwdf4"))))
    (properties `((upstream-name . "context") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jship/context#readme")
    (synopsis "Thread-indexed, nested contexts")
    (description
     "Thread-indexed storage around arbitrary context values. The interface supports
nesting context values per thread, and at any point, the calling thread may
ask for their current context.")
    (license license:expat)))

haskell-9.2-context

(define-public haskell-9.2-core-text
  (package
    (name "haskell-9.2-core-text")
    (version "0.3.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/core-text/core-text-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vl463wdgnfb795nbir355w1cgy5ndqnwgfiiyr1j73xmngmvw04"))))
    (properties `((upstream-name . "core-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-colour)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-fingertree)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-text-short)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/aesiniath/unbeliever#readme")
    (synopsis "A rope type based on a finger tree over UTF-8 fragments")
    (description
     "A rope data type for text, built as a finger tree over UTF-8 text
fragments. The package also includes utiltiy functions for breaking and
re-wrapping lines, conveniences for pretty printing and colourizing
terminal output, and a simple mechanism for multi-line Rope literals.

The main @@Rope@@ type and its usage are described at \"Core.Text.Rope\" in
this package.

This is part of a library intended to ease interoperability and assist in
building command-line programs, both tools and longer-running daemons.
A list of features and some background to the library's design is contained
in the
<https://github.com/aesiniath/unbeliever/blob/master/README.markdown README>
on GitHub.")
    (license license:expat)))

haskell-9.2-core-text

(define-public haskell-9.2-currencies
  (package
    (name "haskell-9.2-currencies")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/currencies/currencies-" version
                    ".tar.gz"))
              (sha256
               (base32
                "16c4m6px6kvdr8v2k5gspjn3xag69ki6yf6ij2b3ii5rlpa94wpv"))))
    (properties `((upstream-name . "currencies") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/alx741/currencies#readme")
    (synopsis "Currencies representation, pretty printing and conversion")
    (description
     "ISO 4217 Currencies representation, pretty printing and conversion:

* Represent monetary amounts of a particular currency in a type-safe manner

* Convert amounts between different currencies

* Print human readable amounts")
    (license license:bsd-3)))

haskell-9.2-currencies

(define-public haskell-9.2-data-default-instances-case-insensitive
  (package
    (name "haskell-9.2-data-default-instances-case-insensitive")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-default-instances-case-insensitive/data-default-instances-case-insensitive-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1d0a0y3fgq820brwbad58xsz1imxfjsiwg9s9h577l6ri9q3a0a3"))))
    (properties `((upstream-name . "data-default-instances-case-insensitive")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0w8k7zjxwbj1y2acxadg956pfpf7y70jc23wgjivqvafbv69ra25")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/trskop/data-default-extra")
    (synopsis "Default instance for CI type from case-insensitive package.")
    (description
     "Orphan instances for @@Default@@ type class, which is defined in package
<https://hackage.haskell.org/package/data-default-class data-default-class>.

Following @@Default@@ instances are provided:

> instance (Default s, FoldCase s) => Default (CI s) where
>     def = mk def")
    (license license:bsd-3)))

haskell-9.2-data-default-instances-case-insensitive

(define-public haskell-9.2-data-default-instances-unordered-containers
  (package
    (name "haskell-9.2-data-default-instances-unordered-containers")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-default-instances-unordered-containers/data-default-instances-unordered-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h1gap1afpyixz2amw1bfsdrc5rsxvksapz9h9vi4qgxj3mag0mk"))))
    (properties `((upstream-name . "data-default-instances-unordered-containers")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1ghfz68s70jrkz91qhnawc4bq3ylmqxg849d49zxckzg0pk7jbpw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/trskop/data-default-extra")
    (synopsis "Default instances for unordered-containers.")
    (description
     "Orphan instances for @@Default@@ type class, which is defined in package
<https://hackage.haskell.org/package/data-default-class data-default-class>.

Following @@Default@@ instances are provided:

> instance Default (HashMap k v) where
>     def = empty
>
> instance Default (HashSet a) where
>     def = empty")
    (license license:bsd-3)))

haskell-9.2-data-default-instances-unordered-containers

(define-public haskell-9.2-data-msgpack-types
  (package
    (name "haskell-9.2-data-msgpack-types")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-msgpack-types/data-msgpack-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05jg19sk42cpn2h1mfaam5khwlda4v99z6v0sdzi4kzkswpfj1i5"))))
    (properties `((upstream-name . "data-msgpack-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://msgpack.org/")
    (synopsis "A Haskell implementation of MessagePack.")
    (description
     "A Haskell implementation of MessagePack <http://msgpack.org/>

This is a fork of msgpack-haskell <https://github.com/msgpack/msgpack-haskell>,
since the original author is unreachable. This fork incorporates a number of
bugfixes and is actively being developed.")
    (license license:bsd-3)))

haskell-9.2-data-msgpack-types

(define-public haskell-9.2-data-reify
  (package
    (name "haskell-9.2-data-reify")
    (version "0.6.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-reify/data-reify-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1sacbil9xn1n2085wpa0dq7ikf1wvh2kkddnvmwsp22ssx059h55"))))
    (properties `((upstream-name . "data-reify") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-tests")
       #:cabal-revision
       ("2" "1ajrndp9251b3pnfm2g56pdp4jynlgbyd8i3qjlsi3wqpngwlhw6")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://ku-fpg.github.io/software/data-reify/")
    (synopsis "Reify a recursive data structure into an explicit graph.")
    (description
     "'data-reify' provided the ability to turn recursive structures into explicit graphs.
Many (implicitly or explicitly) recursive data structure can be given this ability, via
a type class instance. This gives an alternative to using 'Ref' for observable sharing.

Observable sharing in general is unsafe, so we use the IO monad to bound this effect,
but can be used safely even with 'unsafePerformIO' if some simple conditions are met.
Typically this package will be used to tie the knot with DSL's that depend of
observable sharing, like Lava.

Providing an instance for 'MuRef' is the mechanism for allowing a structure to be
reified into a graph, and several examples of this are provided.

&#169; 2009 Andy Gill; BSD3 license.")
    (license license:bsd-3)))

haskell-9.2-data-reify

(define-public haskell-9.2-dense-linear-algebra
  (package
    (name "haskell-9.2-dense-linear-algebra")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dense-linear-algebra/dense-linear-algebra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1m7jjxahqxj7ilic3r9806mwp5rnnsmn8vvipkmk40xl65wplxzp"))))
    (properties `((upstream-name . "dense-linear-algebra") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-math-functions)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-vector-algorithms)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-vector-binary-instances)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-vector-th-unbox)))
    (home-page "https://hackage.haskell.org/package/dense-linear-algebra")
    (synopsis
     "Simple and incomplete pure haskell implementation of linear algebra")
    (description
     "This library is simply collection of linear-algebra related modules
split from statistics library.")
    (license license:bsd-2)))

haskell-9.2-dense-linear-algebra

(define-public haskell-9.2-depq
  (package
    (name "haskell-9.2-depq")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/depq/depq-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "18q953cr93qwjdblr06w8z4ryijzlz7j48hff4xwrdc3yrqk351l"))))
    (properties `((upstream-name . "depq") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-psqueues)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ocramz/depq")
    (synopsis "Double-ended priority queues")
    (description
     "Double-ended priority queues, for efficient retrieval of minimum and maximum elements in ordered collections of items.")
    (license license:bsd-3)))

haskell-9.2-depq

(define-public haskell-9.2-deriving-compat
  (package
    (name "haskell-9.2-deriving-compat")
    (version "0.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/deriving-compat/deriving-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18kpai3jrazcnxcfqqjxkv2ghrz8xyg73rn5x0ipim3z09grj6ki"))))
    (properties `((upstream-name . "deriving-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbase-4-9" "-ftemplate-haskell-2-11" "-fnew-functor-classes")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-orphans)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-th-abstraction)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-void)))
    (home-page "https://github.com/haskell-compat/deriving-compat")
    (synopsis "Backports of GHC deriving extensions")
    (description
     "@@deriving-compat@@ provides Template Haskell functions that
mimic @@deriving@@ extensions that were introduced or modified
in recent versions of GHC. Currently, the following
typeclasses/extensions are covered:

* Deriving @@Bounded@@

* Deriving @@Enum@@

* Deriving @@Ix@@

* Deriving @@Eq@@

* Deriving @@Ord@@

* Deriving @@Read@@

* Deriving @@Show@@

* @@DeriveFoldable@@

* @@DeriveFunctor@@

* @@DeriveTraversable@@

* @@GeneralizedNewtypeDeriving@@ (with GHC 8.2 or later)

* @@DerivingVia@@ (with GHC 8.2 or later)

See the \"Data.Deriving\" module for a full list of backported changes.

In addition, @@deriving-compat@@ also provides some additional
@@deriving@@ functionality that has not yet been merged into
upstream GHC. Aside from the GHC @@deriving@@ extensions
mentioned above, @@deriving-compat@@ also permits deriving
instances of classes in the @@Data.Functor.Classes@@ module,
covering the @@Eq1@@, @@Eq2@@, @@Ord1@@, @@Ord2@@, @@Read1@@,
@@Read2@@, @@Show1@@, and @@Show2@@ classes. This extra
functionality is outside of the main scope of
@@deriving-compat@@, as it does not backport extensions that
exist in today's GHC. Nevertheless, the underlying Template
Haskell machinery needed to derive @@Eq@@ and friends
extends very naturally to @@Eq1@@ and friends, so this extra
functionality is included in @@deriving-compat@@ as a
convenience.

Note that some recent GHC typeclasses/extensions are not covered by this package:

* @@DeriveDataTypeable@@

* @@DeriveGeneric@@, which was introducted in GHC 7.2 for deriving
@@Generic@@ instances, and modified in GHC 7.6 to allow derivation
of @@Generic1@@ instances. Use @@Generics.Deriving.TH@@ from
@@<http://hackage.haskell.org/package/generic-deriving generic-deriving>@@
to derive @@Generic(1)@@ using Template Haskell.

* @@DeriveLift@@, which was introduced in GHC 8.0 for deriving
@@Lift@@ instances. Use @@Language.Haskell.TH.Lift@@ from
@@<http://hackage.haskell.org/package/th-lift th-lift>@@
to derive @@Lift@@ using Template Haskell.

* The @@Bifunctor@@ typeclass, which was introduced in GHC 7.10,
as well as the @@Bifoldable@@ and @@Bitraversable@@ typeclasses, which
were introduced in GHC 8.2. Use @@Data.Bifunctor.TH@@ from
@@<http://hackage.haskell.org/package/bifunctors bifunctors>@@
to derive these typeclasses using Template Haskell.")
    (license license:bsd-3)))

haskell-9.2-deriving-compat

(define-public haskell-9.2-do-list
  (package
    (name "haskell-9.2-do-list")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/do-list/do-list-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "155nqm4wfi9g5qxxx9gl74g6z2w3z08cysz6z60pmbdhc4s1jxxk"))))
    (properties `((upstream-name . "do-list") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/tserduke/do-list#readme")
    (synopsis "Do notation for free")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.2-do-list

(define-public haskell-9.2-dockerfile
  (package
    (name "haskell-9.2-dockerfile")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dockerfile/dockerfile-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1amm7xrfry3fnd53wj50b684lp1vkv98yrz52xxhlldzb4jrk8cp"))))
    (properties `((upstream-name . "dockerfile") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/creichert/dockerfile#readme")
    (synopsis "A Haskell DSL for generating Dockerfiles")
    (description "")
    (license license:expat)))

haskell-9.2-dockerfile

(define-public haskell-9.2-doctest-parallel
  (package
    (name "haskell-9.2-doctest-parallel")
    (version "0.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/doctest-parallel/doctest-parallel-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13hjwhdjw8jrj07zxkrrfbzr0mrk8gwyis1rbdi4ld4jbq3rr1z7"))))
    (properties `((upstream-name . "doctest-parallel") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Glob)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-code-page)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ghc-paths)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/martijnbastiaan/doctest-parallel#readme")
    (synopsis "Test interactive Haskell examples")
    (description
     "The doctest program checks examples in source code comments.  It is modeled
after doctest for Python (<https://docs.python.org/3/library/doctest.html>).

Documentation is at <https://github.com/martijnbastiaan/doctest-parallel#readme>.")
    (license license:expat)))

haskell-9.2-doctest-parallel

(define-public haskell-9.2-dvorak
  (package
    (name "haskell-9.2-dvorak")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dvorak/dvorak-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1kxnzzm24kslsyy9fsjazfz14svbh9svh6f7rnf060as864vmj5g"))))
    (properties `((upstream-name . "dvorak") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/kvanberendonck/codec-dvorak")
    (synopsis "Dvorak encoding for Haskell.")
    (description "")
    (license license:bsd-3)))

haskell-9.2-dvorak

(define-public haskell-9.2-dynamic-state
  (package
    (name "haskell-9.2-dynamic-state")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dynamic-state/dynamic-state-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0drmlb3cvx0blsnqrxzdylpff5jxvpazsy1bxq2szcp70gghpmf4"))))
    (properties `((upstream-name . "dynamic-state") (hidden? . #f)))
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
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/dynamic-state")
    (synopsis "Optionally serializable dynamic state keyed by type")
    (description "Optionally serializable dynamic state keyed by type")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-dynamic-state

(define-public haskell-9.2-ekg-core
  (package
    (name "haskell-9.2-ekg-core")
    (version "0.1.1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ekg-core/ekg-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "04nv6iwzrb63fs97ixb0amj8p6zhabg3ggbrg4nbkq7xjhmkz0a5"))))
    (properties `((upstream-name . "ekg-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "05h0jz42s1d3bjcvzbp3dv5rvil4ar244mdqdvzbf60z848ppygl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/tibbe/ekg-core")
    (synopsis "Tracking of system metrics")
    (description "This library lets you defined and track system metrics.")
    (license license:bsd-3)))

haskell-9.2-ekg-core

(define-public haskell-9.2-elf
  (package
    (name "haskell-9.2-elf")
    (version "0.31")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/elf/elf-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "180h5kz8wmrm6hy4myp83b2sjss7dq8wxvlqryi79qscsrz9n0ln"))))
    (properties `((upstream-name . "elf") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/wangbj/elf")
    (synopsis "An Elf parser")
    (description "Parser for ELF object format.")
    (license license:bsd-3)))

haskell-9.2-elf

(define-public haskell-9.2-enclosed-exceptions
  (package
    (name "haskell-9.2-enclosed-exceptions")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/enclosed-exceptions/enclosed-exceptions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fghjj7nkiddrf03ks8brjpr5x25yi9fs7xg6adbi4mc2gqr6vdg"))))
    (properties `((upstream-name . "enclosed-exceptions") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-lifted-base)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jcristovao/enclosed-exceptions")
    (synopsis "Catching all exceptions from within an enclosed computation")
    (description
     "Catching all exceptions raised within an enclosed computation,
while remaining responsive to (external) asynchronous exceptions.
For more information on the technique, please see:
<https://www.fpcomplete.com/user/snoyberg/general-haskell/exceptions/catching-all-exceptions>")
    (license license:expat)))

haskell-9.2-enclosed-exceptions

(define-public haskell-9.2-envparse
  (package
    (name "haskell-9.2-envparse")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/envparse/envparse-" version
                    ".tar.gz"))
              (sha256
               (base32
                "07fvq07x4i6swcryv3i0vj197zrj8rvvy2vp9q9cvj28xzj4mddd"))))
    (properties `((upstream-name . "envparse") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://supki.github.io/envparse")
    (synopsis "Parse environment variables")
    (description
     "Here's a simple example of a program that uses @@envparse@@'s parser:

@@
module Main (main) where

import Control.Monad (unless)
import Env

data Hello = Hello &#x7b; name :: String, quiet :: Bool &#x7d;

hello :: IO Hello
hello = Env.parse (header \\\"envparse example\\\") $
&#x20; Hello \\<$\\> var (str <=< nonempty) \\\"NAME\\\"  (help \\\"Target for the greeting\\\")
&#x20;       \\<*\\> switch                 \\\"QUIET\\\" (help \\\"Whether to actually print the greeting\\\")
&#x20;
main :: IO ()
main = do
&#x20; Hello &#x7b;name, quiet&#x7d; <- hello
&#x20; unless quiet $
&#x20;   putStrLn (\\\"Hello, \\\" ++ name ++ \\\"!\\\")
@@

The @@NAME@@ environment variable is mandatory and contains the name of the person to
greet. @@QUIET@@, on the other hand, is an optional boolean flag, false by default, that
decides whether the greeting should be silent.

If the @@NAME@@ variable is undefined in the environment then running the program will
result in the following help text:

@@
envparse example
&#x20;
Available environment variables:
&#x20;
&#x20; NAME                   Target for the greeting
&#x20; QUIET                  Whether to actually print the
&#x20;                        greeting
&#x20;
Parsing errors:
&#x20;
&#x20; NAME is unset
@@")
    (license license:bsd-3)))

haskell-9.2-envparse

(define-public haskell-9.2-errorcall-eq-instance
  (package
    (name "haskell-9.2-errorcall-eq-instance")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/errorcall-eq-instance/errorcall-eq-instance-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hqw82m8bbrxy5vgdwb83bhzdx070ibqrm9rshyja7cb808ahijm"))))
    (properties `((upstream-name . "errorcall-eq-instance") (hidden? . #f)))
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
                     haskell-9.2-base-orphans)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/errorcall-eq-instance")
    (synopsis "An orphan Eq instance for ErrorCall")
    (description "Prior to @@base-4.7.0.0@@ there was no @@Eq@@ instance for
@@ErrorCall@@.  This package provides an orphan instance.")
    (license license:expat)))

haskell-9.2-errorcall-eq-instance

(define-public haskell-9.2-every
  (package
    (name "haskell-9.2-every")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/every/every-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1rc0g5rn8hzglm2b4biaf8jvj5kb2j1s5vsxnm24q2gvrvjg03sx"))))
    (properties `((upstream-name . "every") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/athanclark/every#readme")
    (synopsis "Run a process every so often.")
    (description "")
    (license license:bsd-3)))

haskell-9.2-every

(define-public haskell-9.2-executable-hash
  (package
    (name "haskell-9.2-executable-hash")
    (version "0.2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/executable-hash/executable-hash-"
                    version ".tar.gz"))
              (sha256
               (base32
                "191blh2kr2xha8l7j1nbwfq00jf5bfn25cv63y2bglwh5mkgbsil"))))
    (properties `((upstream-name . "executable-hash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-cryptohash)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-executable-path)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/fpco/executable-hash")
    (synopsis "Provides the SHA1 hash of the program executable")
    (description "See README.md")
    (license license:expat)))

haskell-9.2-executable-hash

(define-public haskell-9.2-expiring-cache-map
  (package
    (name "haskell-9.2-expiring-cache-map")
    (version "0.0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/expiring-cache-map/expiring-cache-map-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fb47hsn06ybn2yzw7r6pjkmvvfpbdx7wjhbpxcywilbjyac4fqf"))))
    (properties `((upstream-name . "expiring-cache-map") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1k5wqilafxp3ksqb7qy90cwipk0db568f15amn3mnf9krc1qjabg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://codeberg.org/elblake/expiring-cache-map")
    (synopsis "General purpose simple caching.")
    (description
     "A simple general purpose shared state cache map with automatic expiration
of values, for caching the results of accessing a resource such as reading
a file. With variations for Ord and Hashable keys using \"Data.Map.Strict\"
and \"Data.HashMap.Strict\", respectively.")
    (license license:bsd-3)))

haskell-9.2-expiring-cache-map

(define-public haskell-9.2-fakefs
  (package
    (name "haskell-9.2-fakefs")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fakefs/fakefs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "16hgahq0j7ry1wdzv9syxk652x3wfhw8svpf1szmql2a32b9928b"))))
    (properties `((upstream-name . "fakefs") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://gitlab.com/igrep/haskell-fakefs#readme")
    (synopsis "Extensible fake file system for testing.")
    (description "See <https://gitlab.com/igrep/haskell-fakefs#readme>.")
    (license license:asl2.0)))

haskell-9.2-fakefs

(define-public haskell-9.2-fakepull
  (package
    (name "haskell-9.2-fakepull")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fakepull/fakepull-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1dmpq3wm3qsq4bg6d3zs79pbcp3v0pk72fizdviw6dl8hqmpgphl"))))
    (properties `((upstream-name . "fakepull") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/igrep/haskell-fakepull#readme")
    (synopsis "Monad to pull from fake stream-like objects.")
    (description "See <https://github.com/igrep/haskell-fakepull#readme>.")
    (license license:asl2.0)))

haskell-9.2-fakepull

(define-public haskell-9.2-filelock
  (package
    (name "haskell-9.2-filelock")
    (version "0.1.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/filelock/filelock-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06a44i7a956d7xkk2na4090xj2a7b7a228pk4spmccs4x20ymssh"))))
    (properties `((upstream-name . "filelock") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/takano-akio/filelock")
    (synopsis "Portable interface to file locking (flock / LockFileEx)")
    (description "This package provides an interface to Windows and Unix
file locking functionalities.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.2-filelock

(define-public haskell-9.2-fileplow
  (package
    (name "haskell-9.2-fileplow")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fileplow/fileplow-" version
                    ".tar.gz"))
              (sha256
               (base32
                "017f3f3w69fvlhdagivb5xp72vwzmimcjd94zw9l9ylp5jv7vp4x"))))
    (properties `((upstream-name . "fileplow") (hidden? . #f)))
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
                     haskell-9.2-binary-search)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (home-page "https://github.com/agrafix/fileplow#readme")
    (synopsis
     "Library to process and search large files or a collection of files")
    (description
     "Library to process and search large files or a collection of files")
    (license license:bsd-3)))

haskell-9.2-fileplow

(define-public haskell-9.2-flags-applicative
  (package
    (name "haskell-9.2-flags-applicative")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/flags-applicative/flags-applicative-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sgla62999s9g5a2ckl70nbqi678pqq3zqad7jbm9p0kdm9yn5z3"))))
    (properties `((upstream-name . "flags-applicative") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-casing)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)))
    (home-page "https://github.com/mtth/flags-applicative")
    (synopsis "Applicative flag parsing")
    (description "https://github.com/mtth/flags-applicative")
    (license license:bsd-3)))

haskell-9.2-flags-applicative

(define-public haskell-9.2-flush-queue
  (package
    (name "haskell-9.2-flush-queue")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/flush-queue/flush-queue-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17b6izgpn9rdk3zdhp4kzsna6lv1lhdr8jr6yn2xcwznddb0zb69"))))
    (properties `((upstream-name . "flush-queue") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-atomic-primops)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fpco/flush-queue#readme")
    (synopsis
     "Concurrent bouded blocking queues optimized for flushing. Both IO and STM implementations.")
    (description
     "Please see the README on GitHub at <https://github.com/fpco/flush-queue#readme>")
    (license license:bsd-3)))

haskell-9.2-flush-queue

(define-public haskell-9.2-format-numbers
  (package
    (name "haskell-9.2-format-numbers")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/format-numbers/format-numbers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "193nvj3bf7w0rb1igwl6q27jjijw71v82ik3l7maamfry15hwiaw"))))
    (properties `((upstream-name . "format-numbers") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/agrafix/format-numbers#readme")
    (synopsis "Various number formatting functions")
    (description "Various number formatting functions")
    (license license:expat)))

haskell-9.2-format-numbers

(define-public haskell-9.2-formatting
  (package
    (name "haskell-9.2-formatting")
    (version "7.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/formatting/formatting-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vrc2i1b6lxx2aq5hysfl3gl6miq2wbhxc384axvgrkqjbibnqc0"))))
    (properties `((upstream-name . "formatting") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1i3qkhxqhvqd7mqfdc1mbizw1fin7vp4dwzayc2y0sqcbg7kkns7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-clock)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-double-conversion)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-old-locale)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/AJChapman/formatting#readme")
    (synopsis
     "Combinator-based type-safe formatting (like printf() or FORMAT)")
    (description
     "Combinator-based type-safe formatting (like printf() or FORMAT), modelled from the HoleyMonoids package.

See the README at <https://github.com/AJChapman/formatting#readme> for more info.")
    (license license:bsd-3)))

haskell-9.2-formatting

(define-public haskell-9.2-friendly-time
  (package
    (name "haskell-9.2-friendly-time")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/friendly-time/friendly-time-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j4k8fjmb10zmj9pvn42mgirv9bpbk0w7n0ys7sp3wn34wr49wws"))))
    (properties `((upstream-name . "friendly-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "096nfaqxavi6xblqh4q5dxks824liz75b4rm2la2hlkkn5mhqdgs")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-old-locale)))
    (home-page "https://hackage.haskell.org/package/friendly-time")
    (synopsis "Print time information in friendly ways")
    (description "Print time information in friendly ways")
    (license license:bsd-3)))

haskell-9.2-friendly-time

(define-public haskell-9.2-fuzzcheck
  (package
    (name "haskell-9.2-fuzzcheck")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fuzzcheck/fuzzcheck-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0qfr4f0b50l368b45yzwhqd4g2y1kvfrfj4hr84cdxcwdrwn9mpc"))))
    (properties `((upstream-name . "fuzzcheck") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-lifted-base)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)))
    (home-page "https://github.com/fpco/fuzzcheck")
    (synopsis "A simple checker for stress testing monadic code")
    (description "A simple checker for stress testing monadic code")
    (license license:bsd-3)))

haskell-9.2-fuzzcheck

(define-public haskell-9.2-general-games
  (package
    (name "haskell-9.2-general-games")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/general-games/general-games-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h2h6dbd12xzvgwm7a26scpjyfkcwkmpdkw98nkmb2vk8qsrx3lb"))))
    (properties `((upstream-name . "general-games") (hidden? . #f)))
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
                     haskell-9.2-MonadRandom)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-monad-loops)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-random-shuffle)))
    (home-page "https://github.com/cgorski/general-games")
    (synopsis "Library supporting simulation of a number of games")
    (description
     "Library providing framework for simulating outcomes of a variety
of games, including Poker.")
    (license license:expat)))

haskell-9.2-general-games

(define-public haskell-9.2-generic-deriving
  (package
    (name "haskell-9.2-generic-deriving")
    (version "1.14.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generic-deriving/generic-deriving-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bxacg6b1vz135x93vf7jk6129m08hdyj7426ymaylfl2w8kapi6"))))
    (properties `((upstream-name . "generic-deriving") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fbase-4-9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-th-abstraction)))
    (home-page "https://github.com/dreixel/generic-deriving")
    (synopsis "Generic programming library for generalised deriving.")
    (description
     "This package provides functionality for generalising the deriving mechanism
in Haskell to arbitrary classes. It was first described in the paper:

*  /A generic deriving mechanism for Haskell/.
Jose Pedro Magalhaes, Atze Dijkstra, Johan Jeuring, and Andres Loeh.
Haskell'10.

The current implementation integrates with the new GHC Generics. See
<http://www.haskell.org/haskellwiki/GHC.Generics> for more information.
Template Haskell code is provided for supporting older GHCs.

This library is organized as follows:

* \"Generics.Deriving.Base\" defines the core functionality for GHC generics,
including the @@Generic(1)@@ classes and representation data types.
On modern versions of GHC, this simply re-exports \"GHC.Generics\" from
@@base@@. On older versions of GHC, this module backports parts of
\"GHC.Generics\" that were not included at the time, including @@Generic(1)@@
instances.

* \"Generics.Deriving.TH\" implements Template Haskell functionality for
deriving instances of @@Generic(1)@@.

* Educational code: in order to provide examples of how to define and use
\"GHC.Generics\"-based defaults, this library offers a number of modules
which define examples of type classes along with default implementations
for the classes' methods. Currently, the following modules are provided:
\"Generics.Deriving.Copoint\", \"Generics.Deriving.ConNames\",
\"Generics.Deriving.Enum\", \"Generics.Deriving.Eq\",
\"Generics.Deriving.Foldable\", \"Generics.Deriving.Functor\",
\"Generics.Deriving.Monoid\", \"Generics.Deriving.Semigroup\",
\"Generics.Deriving.Show\", \"Generics.Deriving.Traversable\",
and \"Generics.Deriving.Uniplate\".

It is worth emphasizing that these modules are primarly intended for
educational purposes. Many of the classes in these modules resemble other
commonly used classes—for example, @@GShow@@ from \"Generics.Deriving.Show\"
resembles @@Show@@ from @@base@@—but in general, the classes that
@@generic-deriving@@ defines are not drop-in replacements. Moreover, the
generic defaults that @@generic-deriving@@ provide often make simplifying
assumptions that may violate expectations of how these classes might work
elsewhere. For example, the generic default for @@GShow@@ does not behave
exactly like @@deriving Show@@ would.

If you are seeking \"GHC.Generics\"-based defaults for type classes in
@@base@@, consider using the
@@<http://hackage.haskell.org/package/generic-data generic-data>@@ library.

* \"Generics.Deriving.Default\" provides newtypes that allow leveraging the
generic defaults in this library using the @@DerivingVia@@ GHC language
extension.

* \"Generics.Deriving\" re-exports \"Generics.Deriving.Base\",
\"Generics.Deriving.Default\", and a selection of educational modules.")
    (license license:bsd-3)))

haskell-9.2-generic-deriving

(define-public haskell-9.2-getopt-generics
  (package
    (name "haskell-9.2-getopt-generics")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-orphans)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-generics-sop)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-silently)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)))
    (home-page "https://github.com/soenkehahn/getopt-generics#readme")
    (synopsis "Create command line interfaces with ease")
    (description "Create command line interfaces with ease")
    (license license:bsd-3)))

haskell-9.2-getopt-generics

(define-public haskell-9.2-ghc-syntax-highlighter
  (package
    (name "haskell-9.2-ghc-syntax-highlighter")
    (version "0.0.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-syntax-highlighter/ghc-syntax-highlighter-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1s6bq90s75qfiv54qsskawv3ihwjhdml4fxq56ww01p54mnrwr27"))))
    (properties `((upstream-name . "ghc-syntax-highlighter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ghc-lib-parser)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/mrkkrp/ghc-syntax-highlighter")
    (synopsis "Syntax highlighter for Haskell using the lexer of GHC")
    (description "Syntax highlighter for Haskell using the lexer of GHC.")
    (license license:bsd-3)))

haskell-9.2-ghc-syntax-highlighter

(define-public haskell-9.2-ghost-buster
  (package
    (name "haskell-9.2-ghost-buster")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghost-buster/ghost-buster-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mpnvdb6p6hda645njnfia5j259byrs0mg2fl3syff3qww797l02"))))
    (properties `((upstream-name . "ghost-buster") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/Lazersmoke/ghost-buster#readme")
    (synopsis "Existential type utilites")
    (description
     "This package provides utilities for working with existential types.")
    (license license:bsd-3)))

haskell-9.2-ghost-buster

(define-public haskell-9.2-gloss-rendering
  (package
    (name "haskell-9.2-gloss-rendering")
    (version "1.13.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gloss-rendering/gloss-rendering-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zrdqh72gswyn27x43ifhy4q8m7hvmv24b5ki3hyra5yq74njlsm"))))
    (properties `((upstream-name . "gloss-rendering") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009) haskell-9.2-GLUT)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-OpenGL)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-bmp)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "https://hackage.haskell.org/package/gloss-rendering")
    (synopsis "Gloss picture data types and rendering functions.")
    (description
     "Gloss picture data types and rendering functions. These functions
don't do any window management. If you want gloss to setup your window as
well then use the plain @@gloss@@ package.")
    (license license:expat)))

haskell-9.2-gloss-rendering

(define-public haskell-9.2-graph-wrapper
  (package
    (name "haskell-9.2-graph-wrapper")
    (version "0.2.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/graph-wrapper/graph-wrapper-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19jvr7d1kkyh4qdscljbgqnlpv6rr7fsn3h9dm3bji3dgbsdd7mq"))))
    (properties `((upstream-name . "graph-wrapper") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/soenkehahn/graph-wrapper")
    (synopsis
     "A wrapper around the standard Data.Graph with a less awkward interface")
    (description
     "A wrapper around the standard Data.Graph with a less awkward interface")
    (license license:bsd-3)))

haskell-9.2-graph-wrapper

(define-public haskell-9.2-gtk2hs-buildtools
  (package
    (name "haskell-9.2-gtk2hs-buildtools")
    (version "0.13.8.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gtk2hs-buildtools/gtk2hs-buildtools-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fcm0v32hm9j908nyziia16ahb181y9hqppsy18clx2prvj480rv"))))
    (properties `((upstream-name . "gtk2hs-buildtools") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fclosuresignals")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-alex)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-happy)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hashtables)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://projects.haskell.org/gtk2hs/")
    (synopsis "Tools to build the Gtk2Hs suite of User Interface libraries.")
    (description "This package provides a set of helper programs necessary to
build the Gtk2Hs suite of libraries. These tools include
a modified c2hs binding tool that is used to generate
FFI declarations, a tool to build a type hierarchy that
mirrors the C type hierarchy of GObjects found in glib,
and a generator for signal declarations that are used
to call back from C to Haskell. These tools are not needed
to actually run Gtk2Hs programs.")
    (license license:gpl2)))

haskell-9.2-gtk2hs-buildtools

(define-public haskell-9.2-has-transformers
  (package
    (name "haskell-9.2-has-transformers")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/has-transformers/has-transformers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wm8dwgcg1m2104lzgk3vdvng5mvh4xcn736nyarb9q6p99i0bq3"))))
    (properties `((upstream-name . "has-transformers") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-operational)))
    (home-page "https://github.com/turion/has-transformers")
    (synopsis "This library 'Has' transformers")
    (description
     "A very slim library for first-order effects based on monad transformers
(and nearly nothing else).

Given a transformer stack @@t1 (t2 (t3 (... m))) a@@,
you can automatically lift any function @@thing :: tN m a@@ into the stack with a single function, 'liftH'.")
    (license license:expat)))

haskell-9.2-has-transformers

(define-public haskell-9.2-hebrew-time
  (package
    (name "haskell-9.2-hebrew-time")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hebrew-time/hebrew-time-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0as6fhk0vw5dxh44r8c916kf6ly51d36cng11y848wwshamy45j3"))))
    (properties `((upstream-name . "hebrew-time") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/snoyberg/hebrew-time#readme")
    (synopsis "Hebrew dates and prayer times.")
    (description "Conversion to and from Hebrew dates.")
    (license license:expat)))

haskell-9.2-hebrew-time

(define-public haskell-9.2-hex-text
  (package
    (name "haskell-9.2-hex-text")
    (version "0.1.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hex-text/hex-text-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06zp9hwvds9fss2206c34q1zv80pklhbxcyrirz1xnwl3ml28fb5"))))
    (properties `((upstream-name . "hex-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/typeclasses/hex-text")
    (synopsis "ByteString-Text hexidecimal conversions")
    (description "Encode a ByteString as a hexidecimal Text value,
or decode hexidecimal Text as a ByteString.")
    (license license:expat)))

haskell-9.2-hex-text

(define-public haskell-9.2-hformat
  (package
    (name "haskell-9.2-hformat")
    (version "0.3.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hformat/hformat-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0wx7qlhdzd8rl2d351hvxzwlyz9yxza625fklp2p66x7khfxlbih"))))
    (properties `((upstream-name . "hformat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-unicode-symbols)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "http://github.com/mvoidex/hformat")
    (synopsis "Simple Haskell formatting")
    (description "String formatting")
    (license license:bsd-3)))

haskell-9.2-hformat

(define-public haskell-9.2-hierarchical-clustering
  (package
    (name "haskell-9.2-hierarchical-clustering")
    (version "0.4.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hierarchical-clustering/hierarchical-clustering-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15fiqvhcd0i5l1w4s5liggfbdknasdpvyxd54qrjjdp41qb4d3qk"))))
    (properties `((upstream-name . "hierarchical-clustering") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/hierarchical-clustering")
    (synopsis
     "Fast algorithms for single, average/UPGMA and complete linkage clustering.")
    (description
     "This package provides a function to create a dendrogram from a
list of items and a distance function between them.  Initially
a singleton cluster is created for each item, and then new,
bigger clusters are created by merging the two clusters with
least distance between them.  The distance between two clusters
is calculated according to the linkage type.  The dendrogram
represents not only the clusters but also the order on which
they were created.

This package has many implementations with different
performance characteristics.  There are SLINK and CLINK
algorithm implementations that are optimal in both space and
time.  There are also naive implementations using a distance
matrix.  Using the @@dendrogram@@ function from
@@Data.Clustering.Hierarchical@@ automatically chooses the best
implementation we have.

Changes in version 0.4:

* Specialize the distance type to Double for efficiency reasons.
It's uncommon to use distances other than Double.

* Implement SLINK and CLINK.  These are optimal algorithms in
both space and time for single and complete linkage,
respectively, running in /O(n^2)/ time and /O(n)/ space.

* Reorganized internal implementation.

* Some performance improvements for the naive implementation.

* Better test coverage.  Also, performance improvements for the
test suite, now running in 3 seconds (instead of one minute).

Changes in version 0.3.1.2 (version 0.3.1.1 was skipped):

* Added tests for many things.  Use @@cabal test@@ =).

Changes in version 0.3.1:

* Works with containers 0.4 (thanks, Doug Beardsley).

* Removed some internal unnecessary overheads and added some strictness.

Changes in version 0.3.0.1:

* Listed changes of unreleased version 0.2.

Changes in version 0.3:

* Added function @@cutAt@@.

* Fixed complexity in Haddock comments.

Changes in version 0.2:

* Added function @@elements@@.

* Added separate functions for each linkage type.  This may be
useful if you want to create a dendrogram and your distance
data type isn't an instance of @@Floating@@.")
    (license license:bsd-3)))

haskell-9.2-hierarchical-clustering

(define-public haskell-9.2-hinotify
  (package
    (name "haskell-9.2-hinotify")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hinotify/hinotify-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06pqfikfa61i45g92b65br83kplwmizqkm42yp8d0ddgmq0b21qk"))))
    (properties `((upstream-name . "hinotify") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/kolmodin/hinotify")
    (synopsis "Haskell binding to inotify")
    (description
     "This library provides a wrapper to the Linux Kernel's inotify feature,
allowing applications to subscribe to notifications when a file is
accessed or modified.")
    (license license:bsd-3)))

haskell-9.2-hinotify

(define-public haskell-9.2-hlibsass
  (package
    (name "haskell-9.2-hlibsass")
    (version "0.1.10.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hlibsass/hlibsass-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0gfbw6d48dqhc6gm9qwxfn4w6j3zs2xgf7c0kwxmgn4464y93dwy"))))
    (properties `((upstream-name . "hlibsass") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-externallibsass" "-f-sharedlibsass")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages web) libsass)))
    (home-page "https://github.com/jakubfijalkowski/hlibsass")
    (synopsis "Low-level bindings to Libsass")
    (description
     "This package provides (very) low level bindings to LibSass. By default, it
uses LibSass compiled as a static library, so if you use this in your project,
you have to link your project with C++ runtime (which hLibsass does
automatically - links with /libstdc++/).
For documentation visit <https://github.com/sass/libsass>.")
    (license license:expat)))

haskell-9.2-hlibsass

(define-public haskell-9.2-hopfli
  (package
    (name "haskell-9.2-hopfli")
    (version "0.2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hopfli/hopfli-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "061as7aa806xzcpch35isrkqbgqhwdy48fs049f491wwb47xqwad"))))
    (properties `((upstream-name . "hopfli") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "116jns5im51sb9xiwpx308wz3pr67335633anrf8f704pz8vwjka")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/ananthakumaran/hopfli")
    (synopsis "Bidings to Google's Zopfli compression library")
    (description
     "Hopfli provides a pure interface to compress data using the Zopfli library
algorithm.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-hopfli

(define-public haskell-9.2-hpp
  (package
    (name "haskell-9.2-hpp")
    (version "0.6.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hpp/hpp-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0xmnnmw2h4rf0bffncbhy8ja005wfr54cgsnqnc5vsqnl3dmvdlp"))))
    (properties `((upstream-name . "hpp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/acowley/hpp")
    (synopsis "A Haskell pre-processor")
    (description "See the README for usage examples")
    (license license:bsd-3)))

haskell-9.2-hpp

(define-public haskell-9.2-hsemail
  (package
    (name "haskell-9.2-hsemail")
    (version "2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hsemail/hsemail-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "108xjspr7apx248gvv7w1hh2pqnb7qg699a8l8f8z64cv6s9ksmm"))))
    (properties `((upstream-name . "hsemail") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-time-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/peti/hsemail#readme")
    (synopsis "Parsec parsers for the Internet Message format (e-mail)")
    (description
     "Parsec parsers for the Internet Message format defined in RFC2822.")
    (license license:bsd-3)))

haskell-9.2-hsemail

(define-public haskell-9.2-hspec-golden
  (package
    (name "haskell-9.2-hspec-golden")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-golden/hspec-golden-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sg9f73x2i1g6n1pjcvb1zx4nx17w5drdrrhzp2z3lsxc9yxs8nk"))))
    (properties `((upstream-name . "hspec-golden") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hspec-core)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-silently)))
    (home-page "https://github.com/stackbuilders/hspec-golden#readme")
    (synopsis "Golden tests for hspec")
    (description
     "Please see the README on GitHub at <https://github.com/stackbuilders/hspec-golden#README>")
    (license license:expat)))

haskell-9.2-hspec-golden

(define-public haskell-9.2-hspec-leancheck
  (package
    (name "haskell-9.2-hspec-leancheck")
    (version "0.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-leancheck/hspec-leancheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pbvbqjy3smplax626g6dwycqqn9w9i0pg30lqzzq0r32w53z7si"))))
    (properties `((upstream-name . "hspec-leancheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hspec-core)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-leancheck)))
    (home-page "https://github.com/rudymatela/hspec-leancheck#readme")
    (synopsis "LeanCheck support for the Hspec test framework.")
    (description
     "LeanCheck support for the Hspec test framework.

This package can be used to incorporate LeanCheck tests into Hspec test
suites.

Please see the Haddock documentation and README for more details.")
    (license license:bsd-3)))

haskell-9.2-hspec-leancheck

(define-public haskell-9.2-hspec-need-env
  (package
    (name "haskell-9.2-hspec-need-env")
    (version "0.1.0.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-need-env/hspec-need-env-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13ms7ifdszwgmvvv1lbyqs53l86li0k639f3f9blfkz3lk3qx2kn"))))
    (properties `((upstream-name . "hspec-need-env") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hspec-core)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-setenv)))
    (home-page "https://github.com/debug-ito/hspec-need-env")
    (synopsis "Read environment variables for hspec tests")
    (description
     "Read environment variables for hspec tests. See 'Test.Hspec.NeedEnv'.")
    (license license:bsd-3)))

haskell-9.2-hspec-need-env

(define-public haskell-9.2-hspec-parsec
  (package
    (name "haskell-9.2-hspec-parsec")
    (version "0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-parsec/hspec-parsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1q5484dzc9vpbwv7bpx83xha9ly7lsbwn4zjd6z8z5j4p8r5mk6y"))))
    (properties `((upstream-name . "hspec-parsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "03nsxwc5p6whq21dqwba0289g8fqqqws453kyanwgb6vvg1f0s9l")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-hspec-expectations)))
    (home-page "https://github.com/sjakobi/hspec-parsec#readme")
    (synopsis "Hspec expectations for testing Parsec parsers")
    (description "")
    (license license:bsd-3)))

haskell-9.2-hspec-parsec

(define-public haskell-9.2-htaglib
  (package
    (name "haskell-9.2-htaglib")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/htaglib/htaglib-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ph04j1ysjzzrcyllgibzrzfv5g5mgpa6s0ksxww15aryipw65sa"))))
    (properties `((upstream-name . "htaglib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("2" "1vb9izb058z8lsq5yp4c0w4lralb0mzr5g6hw4mvd82yjf07il0z")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages mp3) taglib)))
    (home-page "https://github.com/mrkkrp/htaglib")
    (synopsis "Bindings to TagLib, audio meta-data library")
    (description "Bindings to TagLib, audio meta-data library.")
    (license license:bsd-3)))

haskell-9.2-htaglib

(define-public haskell-9.2-html-entity-map
  (package
    (name "haskell-9.2-html-entity-map")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/html-entity-map/html-entity-map-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k1l1pbmrfmh44v9cc9ka01bx9xm1x4jabbl675fc5c57v1h0dlq"))))
    (properties `((upstream-name . "html-entity-map") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("5" "1776z73bs1v8z3qwpjvqqmzdlj6gm8qba93f41irhn7swdppfq72")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mrkkrp/html-entity-map")
    (synopsis "Map from HTML5 entity names to the corresponding Unicode text")
    (description
     "Map from HTML5 entity names to the corresponding Unicode text.")
    (license license:bsd-3)))

haskell-9.2-html-entity-map

(define-public haskell-9.2-http-common
  (package
    (name "haskell-9.2-http-common")
    (version "0.8.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-common/http-common-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xpbnfac0fqa5r670ggwm4kq3cmz9jpaw9bx40j9w9qiw6xi4i28"))))
    (properties `((upstream-name . "http-common") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/aesiniath/http-common")
    (synopsis "Common types for HTTP clients and servers")
    (description
     "/Overview/

Base types used by a variety of HTTP clients and servers. See http-streams
\"Network.Http.Client\" or pipes-http \"Pipes.Http.Client\" for full
documentation. You can import @@Network.Http.Types@@ if you like, but both
http-streams and pipes-http re-export this package's types and functions.")
    (license license:bsd-3)))

haskell-9.2-http-common

(define-public haskell-9.2-http-media
  (package
    (name "haskell-9.2-http-media")
    (version "0.8.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-media/http-media-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0lww5cxrc9jlvzsysjv99lca33i4rb7cll66p3c0rdpmvz8pk0ir"))))
    (properties `((upstream-name . "http-media") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("7" "1sm8bnrqvwkj7f60x4s8vfsj6lfi0knq38im35x88wk8s9whg6jd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/zmthy/http-media")
    (synopsis "Processing HTTP Content-Type and Accept headers")
    (description
     "This library is intended to be a comprehensive solution to parsing and
selecting quality-indexed values in HTTP headers.  It is capable of
parsing both media types and language parameters from the Accept and
Content header families, and can be extended to match against other
accept headers as well.  Selecting the appropriate header value is
achieved by comparing a list of server options against the
quality-indexed values supplied by the client.

In the following example, the Accept header is parsed and then matched
against a list of server options to serve the appropriate media using
'mapAcceptMedia':

> getHeader >>= maybe send406Error sendResourceWith . mapAcceptMedia
>     [ (\"text/html\",        asHtml)
>     , (\"application/json\", asJson)
>     ]

Similarly, the Content-Type header can be used to produce a parser for
request bodies based on the given content type with 'mapContentMedia':

> getContentType >>= maybe send415Error readRequestBodyWith . mapContentMedia
>     [ (\"application/json\", parseJson)
>     , (\"text/plain\",       parseText)
>     ]

The API is agnostic to your choice of server.")
    (license license:expat)))

haskell-9.2-http-media

(define-public haskell-9.2-hvect
  (package
    (name "haskell-9.2-hvect")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hvect/hvect-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "01fh0nr4dfkn4aj1fx6chiaijwg9azp8qics48n5arlwn2c4kn5p"))))
    (properties `((upstream-name . "hvect") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/agrafix/hvect")
    (synopsis "Simple strict heterogeneous lists")
    (description
     "Small, concise and simple implementation of heterogeneous lists with useful utility functions")
    (license license:expat)))

haskell-9.2-hvect

(define-public haskell-9.2-hyphenation
  (package
    (name "haskell-9.2-hyphenation")
    (version "0.8.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hyphenation/hyphenation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05330kd99cg9v6w26sj87wk2nfvpmn2r177kr66vr9n0rlmia60y"))))
    (properties `((upstream-name . "hyphenation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fembed")
       #:cabal-revision
       ("1" "1ylp7a274rg3ymkj39v27ab387dp04cbagd5jxb4qfqqjrbkvyrs")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/ekmett/hyphenation")
    (synopsis "Configurable Knuth-Liang hyphenation")
    (description
     "Configurable Knuth-Liang hyphenation

Uses the UTF8 encoded hyphenation patterns provided by
hyph-utf8 from
<http://www.ctan.org/tex-archive/language/hyph-utf8>

Usage:

>>> hyphenate english_US \"supercalifragilisticexpialadocious\"
[\"su\",\"per\",\"cal\",\"ifrag\",\"ilis\",\"tic\",\"ex\",\"pi\",\"al\",\"ado\",\"cious\"]

>>> hyphenate english_US \"hyphenation\"
[\"hy\",\"phen\",\"ation\"]

>>> hyphenate icelandic \"va\\240lahei\\240avegavinnuverkf\\230rageymslusk\\250r\"
[\"va\\240la\",\"hei\\240a\",\"vega\",\"vinnu\",\"verk\",\"f\\230ra\",\"geymslu\",\"sk\\250r\"]")
    (license license:bsd-2)))

haskell-9.2-hyphenation

(define-public haskell-9.2-identicon
  (package
    (name "haskell-9.2-identicon")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/identicon/identicon-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0qzj2063sh7phbqyxqxf96avz1zcwd1ry06jdqxwkg55q3yb8y9n"))))
    (properties `((upstream-name . "identicon") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("5" "0aswi9gwa4f1ll5s323qc6g9fm2h9dc8j526izcbflagxicf04a8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mrkkrp/identicon")
    (synopsis "Flexible generation of identicons")
    (description "Flexible generation of identicons.")
    (license license:bsd-3)))

haskell-9.2-identicon

(define-public haskell-9.2-ilist
  (package
    (name "haskell-9.2-ilist")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ilist/ilist-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "016wa9n4glxcyvbifvfz2khk9i1i5wzfyl952vp1fhwpjrr8aj04"))))
    (properties `((upstream-name . "ilist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0iq78rqv6w6vir85p921sawbvkn8lrlhfqd5yx4j2laljcmg2isr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "http://github.com/kowainik/ilist")
    (synopsis "Optimised list functions for doing index-related things")
    (description
     "Optimised list functions for doing index-related things. They're
faster than common idioms in all cases, they avoid
<https://ghc.haskell.org/trac/ghc/ticket/12620 space leaks>, and
sometimes they fuse better as well.")
    (license license:mpl2.0)))

haskell-9.2-ilist

(define-public haskell-9.2-immortal-queue
  (package
    (name "haskell-9.2-immortal-queue")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/immortal-queue/immortal-queue-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14a0sy4j0b0x2l8j4ajqizjkzrgbicavy3k5xzz349cvy3dq6fz7"))))
    (properties `((upstream-name . "immortal-queue") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-immortal)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/prikhi/immortal-queue#readme")
    (synopsis "Build a pool of queue-processing worker threads.")
    (description
     "@@immortal-queue@@ is a library for build an asynchronous worker pool that
processes action from a generic queue. You can use any thread-safe datatype
with a push and pop like a @@TQueue@@ or a @@persistent@@ database table.

The worker pool is configured by building an @@ImmortalQueue@@ type, which
describes how to push and pop from the queue as well as how to process
items and handle errors.

For a simple usage example using a TQueue, see the module documentation.
For a more complex example that uses a @@persistent@@ database as a queue,
see
<https://github.com/Southern-Exposure-Seed-Exchange/southernexposure.com/blob/develop/server/src/Workers.hs Southern Exposure's website code>.")
    (license license:bsd-3)))

haskell-9.2-immortal-queue

(define-public haskell-9.2-inbox
  (package
    (name "haskell-9.2-inbox")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/inbox/inbox-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1f4jrkgrziq10xx344avpxyxxizxrhk8mwr127a5m6gr7vyqimak"))))
    (properties `((upstream-name . "inbox") (hidden? . #f)))
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
                     haskell-9.2-error-or)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/luntain/error-or-bundle/blob/master/inbox#readme")
    (synopsis "Inbox for asychronous messages")
    (description "Facilitates testing of asynchronous behavior")
    (license license:bsd-3)))

haskell-9.2-inbox

(define-public haskell-9.2-indexed-list-literals
  (package
    (name "haskell-9.2-indexed-list-literals")
    (version "0.2.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/indexed-list-literals/indexed-list-literals-"
                    version ".tar.gz"))
              (sha256
               (base32
                "179z0df99ixaplr1qv7dawj3h8fq5qhgfn8mg0i4ix6xhpi9kqr6"))))
    (properties `((upstream-name . "indexed-list-literals") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-Only)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/davidm-d/indexed-list-literals")
    (synopsis "Type safe indexed list literals")
    (description
     "This is an incredibly simple library, which makes writing lists where the length is known at compile time a little bit nicer.

If you write a function with the signature

> vector :: ILL input length output => input -> Vector length output
then

> v :: Vector 3 Int
> v = vector (1,2,3)
>
> x :: Vector 0 Double
> x = vector $ ZeroTuple @@Double
>
> y :: Vector 1 Double
> y = vector (Only 1)
>
> z :: Vector 2 String
> z = vector (\"Hello\", \"World\")

If want matrix literals you can write a function

> matrix :: (ILL row width ty, ILL matrix height row) => matrix -> Matrix width height ty
then

> a :: Matrix 0 0 Bool
> a = matrix $ ZeroTuple @@(ZeroTuple Bool)
>
> b :: Matrix 1 2 String
> b = matrix $ Only (\"Hello\",\"World\")
>
> c :: Matrix 4 5 Double
> c = matrix ((1,2,3,0,0)
>            ,(4,5,6,0,0)
>            ,(7,8,9,0,0)
>            ,(0,0,0,0,0))
The full code is in test\\/Docs.hs

This only supports literals of length up to 20, though that can be easily extended using the code generator in src\\/Data\\/IndexedListLiterals.hs")
    (license license:bsd-3)))

haskell-9.2-indexed-list-literals

(define-public haskell-9.2-indexed-traversable-instances
  (package
    (name "haskell-9.2-indexed-traversable-instances")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/indexed-traversable-instances/indexed-traversable-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1c60vhf47y8ln33scyvwiffg24dvhm4aavya624vbqjr7l3fapl9"))))
    (properties `((upstream-name . "indexed-traversable-instances")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-OneTuple)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://hackage.haskell.org/package/indexed-traversable-instances")
    (synopsis
     "More instances of FunctorWithIndex, FoldableWithIndex, TraversableWithIndex")
    (description
     "This package provides extra instances for type-classes in the [indexed-traversable](https://hackage.haskell.org/package/indexed-traversable) package.

The intention is to keep this package minimal;
it provides instances that formely existed in @@lens@@ or @@optics-extra@@.
We recommend putting other instances directly into their defining packages.
The @@indexed-traversable@@ package is light, having only GHC boot libraries
as its dependencies.")
    (license license:bsd-2)))

haskell-9.2-indexed-traversable-instances

(define-public haskell-9.2-intern
  (package
    (name "haskell-9.2-intern")
    (version "0.9.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/intern/intern-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "00c74apc2ap1pjxmzk1c975zzqrc94p69l7v1fvfakv87mbrg8j0"))))
    (properties `((upstream-name . "intern") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1jd429wyh11py7yd95zgaqf3djwvmqznslanlp7jcbrv8ag3dyg8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/intern/")
    (synopsis "Efficient hash-consing for arbitrary data types")
    (description "Efficient hash-consing for arbitrary data types.")
    (license license:bsd-3)))

haskell-9.2-intern

(define-public haskell-9.2-intset-imperative
  (package
    (name "haskell-9.2-intset-imperative")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/intset-imperative/intset-imperative-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hlh154dlyb0m8alf2zpb4qvsnpnmccmb5jkyhj2fmhg6y3r2m5f"))))
    (properties `((upstream-name . "intset-imperative") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hverr/haskell-intset-imperative#readme")
    (synopsis "An imperative integer set written in Haskell.")
    (description
     "An imperative integer set written in Haskell.

Read <https://deliquus.com/posts/2018-07-30-imperative-programming-in-haskell.html> for more information.")
    (license license:bsd-3)))

haskell-9.2-intset-imperative

(define-public haskell-9.2-invariant
  (package
    (name "haskell-9.2-invariant")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/invariant/invariant-" version
                    ".tar.gz"))
              (sha256
               (base32
                "07ffgcfpacsdihcmcmx2m1gp8czlg28657bxncxjykjiiiwjlaxm"))))
    (properties `((upstream-name . "invariant") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0551ll1swnrmq09j89jqnxl4qnirbbpdpsdym23adaf36qdd7v37")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-StateVar)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bifunctors)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-contravariant)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-th-abstraction)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nfrisby/invariant-functors")
    (synopsis "Haskell98 invariant functors")
    (description
     "Haskell98 invariant functors (also known as exponential functors).

For more information, see Edward Kmett's article \\\"Rotten Bananas\\\":

<http://comonad.com/reader/2008/rotten-bananas/>")
    (license license:bsd-2)))

haskell-9.2-invariant

(define-public haskell-9.2-io-memoize
  (package
    (name "haskell-9.2-io-memoize")
    (version "1.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/io-memoize/io-memoize-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ga85wdvz67jjx8qh6f687kfikcrfmp7winn13v6na7vlaqs2ly7"))))
    (properties `((upstream-name . "io-memoize") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/DanBurton/io-memoize")
    (synopsis "Memoize IO actions")
    (description
     "Transform an IO action into a similar IO action
that performs the original action only once.

You can choose to perform the original action
in one of two ways:

(1) lazily (might never be performed)

(2) eagerly (concurrently performed)

Special thanks to shachaf and headprogrammingczar from #haskell irc
for helping me reason about the behavior of this library.")
    (license license:bsd-3)))

haskell-9.2-io-memoize

(define-public haskell-9.2-io-region
  (package
    (name "haskell-9.2-io-region")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/io-region/io-region-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1w8m21zkhbhqr9lsdzwxfpy0jhb2ciybn3bvhyp3zlxkq9k3yc7f"))))
    (properties `((upstream-name . "io-region") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/Yuras/io-region/wiki")
    (synopsis "Exception safe resource management with dynamic regions")
    (description
     "Region owns resources and automatically frees them on exit.
It is a plain old ADT, so it is possible to pass it to functions,
put into mutable references, store in regular data types.

Resources can be freed earler or transfered to other regions.

Region itself can be used as any other resource. E.g. one region
can own other one.

The library doesn't pretend to solve double throw issue.")
    (license license:bsd-3)))

haskell-9.2-io-region

(define-public haskell-9.2-isbn
  (package
    (name "haskell-9.2-isbn")
    (version "1.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/isbn/isbn-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1s8ypi1rx8iqsn0kvp4k818ljfsj7zdh0rkzii60vblaxrfhhczb"))))
    (properties `((upstream-name . "isbn") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/charukiewicz/hs-isbn")
    (synopsis "ISBN Validation and Manipulation")
    (description
     "See the README at <https://github.com/charukiewicz/hs-isbn#readme>")
    (license license:asl2.0)))

haskell-9.2-isbn

(define-public haskell-9.2-islink
  (package
    (name "haskell-9.2-islink")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/islink/islink-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1mxfs8k0znc7v2iynjnhr4k5c9as4ip37ybvxnvjfqy4dld9rgyg"))))
    (properties `((upstream-name . "islink") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/redneb/islink")
    (synopsis "Check if an HTML element is a link")
    (description
     "This package provides a function that checks whether a particular
combination of an HTML tag name and an attribute corresponds to an HTML
element that links to an external resource. For example, the combination
of the tag @@img@@ and the attribute @@src@@ is an external link whereas
the combination @@div@@ and @@style@@ is not. This is particularly useful
for web scraping.")
    (license license:bsd-3)))

haskell-9.2-islink

(define-public haskell-9.2-iso8601-time
  (package
    (name "haskell-9.2-iso8601-time")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/iso8601-time/iso8601-time-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j7h1xix7vpb88dnksis14rnvw0p528m3d54fg3h51765d5l9kgj"))))
    (properties `((upstream-name . "iso8601-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnew-time")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/nh2/iso8601-time")
    (synopsis "Convert to/from the ISO 8601 time format")
    (description
     "Conversion functions between Haskell time types and the ISO 8601 format,
which is often used for printing times, e.g. JavaScript's @@new Date().toISOString()@@.")
    (license license:expat)))

haskell-9.2-iso8601-time

(define-public haskell-9.2-jalaali
  (package
    (name "haskell-9.2-jalaali")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/jalaali/jalaali-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0hf0vgvjcklf8iq7gcrncmw4pm2c6aawx3cp34fji2bl14dgv4zr"))))
    (properties `((upstream-name . "jalaali") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/jalaali/jalaali-hs#readme")
    (synopsis "Jalaali calendar systems")
    (description
     "Functions for working with Jalaali (Jalali, Persian, Khayyami, Khorshidi, Shamsi) calendar systems. Please see the README on GitHub at <https://github.com/jalaali/jalaali-hs#readme>")
    (license license:expat)))

haskell-9.2-jalaali

(define-public haskell-9.2-lapack-comfort-array
  (package
    (name "haskell-9.2-lapack-comfort-array")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lapack-comfort-array/lapack-comfort-array-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1p4vfw95qnd48cbizncb7b7fgzkxbv7r3rp3ffw6r11wymhm67q0"))))
    (properties `((upstream-name . "lapack-comfort-array") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0z80pnn3fpbfbrxmv2n3gwwwlny4a9hgnivd0b8i25q1agyprzcs")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-comfort-array)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-lapack-ffi)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-netlib-comfort-array)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-netlib-ffi)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-storable-complex)))
    (home-page "https://hub.darcs.net/thielema/lapack-comfort-array/")
    (synopsis "Auto-generated interface to Fortran LAPACK via comfort-array")
    (description
     "LAPACK is a package for efficient numerically robust linear algebra.
The original implementation is written in FORTRAN.
This is a semi-automatically generated mid-level wrapper.
The functions are not ready to use for high-level applications,
but they are a step closer.

The functions are all in IO monad because they are auto-generated and
we cannot make sure automatically that unsafePerformIO is always safe.
Instead of raw pointers we use Arrays and Mutable.Arrays
and assign and check array bounds to LAPACK function parameters,
as far we can retrieve this information from the FORTRAN comments.
We check consistency of dimensions where consistent dimensions are required,
but we cannot do all kind of bound checks.
We use immutable Array for input and output parameters
and mutable Mutable.Array for input/output parameters.
LAPACK plays some nasty tricks of in-place array updates
on input/output arrays
even if the dimensions of input and output array differ (see e.g. GELS).
The wrappers also manage allocation of memory for function parameters.
This is necessary since FORTRAN passes all parameters by reference.
Further on, the wrappers convert from Haskell values like @@Int@@
to low-level values like @@CInt@@.

We provide bindings to functions of all variants
for @@Float@@, @@Double@@, @@Complex Float@@ and @@Complex Double@@.
We do not use TemplateHaskell nor HSC nor CHS, but instead Haskell 98 code
generated by the custom @@lapack-ffi-tools@@ package.")
    (license license:bsd-3)))

haskell-9.2-lapack-comfort-array

(define-public haskell-9.2-lens-family-th
  (package
    (name "haskell-9.2-lens-family-th")
    (version "0.5.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-family-th/lens-family-th-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1w8k68a1lyfd79xkc4fbf6z7p5gpriq4pjgb4n9p58az6awnn7dh"))))
    (properties `((upstream-name . "lens-family-th") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "http://github.com/DanBurton/lens-family-th#readme")
    (synopsis "Generate lens-family style lenses")
    (description "(see README.md)")
    (license license:bsd-3)))

haskell-9.2-lens-family-th

(define-public haskell-9.2-linear-generics
  (package
    (name "haskell-9.2-linear-generics")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/linear-generics/linear-generics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16l117m3zblla1cn5866mknvhc1s9737qhld6bym4xsyqsgvh2sz"))))
    (properties `((upstream-name . "linear-generics") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-th-abstraction)))
    (home-page "https://github.com/linear-generics/linear-generics")
    (synopsis "Generic programming library for generalised deriving.")
    (description
     "This package offers a version of
<https://hackage.haskell.org/package/base/docs/GHC-Generics.html GHC.Generics>
with two important improvements:

1. The @@to@@, @@from@@, @@to1@@, and @@from1@@ methods have multiplicity-polymorphic
types, allowing them to be used with either traditional Haskell code or
linearly typed code.

2. The representations used for @@Generic1@@ are modified slightly. As a result,
@@to1@@ and @@from1@@ never need to use @@fmap@@. This can
<https://gitlab.haskell.org/ghc/ghc/-/issues/15969 greatly improve performance>,
and it is
<https://github.com/tweag/linear-base/pull/316 necessary to support multiplicity polymorphism>.
A smaller change, approximately
<https://gitlab.haskell.org/ghc/ghc/-/issues/7492 as proposed by spl>,
reduces the number of instances that must be written to actually use @@Generic1@@
for deriving instances of other classes.

For more details, see the \"Generics.Linear\" documentation.

This library is organized as follows:

* \"Generics.Linear\" defines the core functionality for generics,
including the multiplicity-polymorphic @@Generic(1)@@ classes and
a replacement for the @@:.:@@ composition type.

* \"Generics.Linear.TH\" implements Template Haskell functionality for
deriving instances of @@Generic(1)@@.

* \"Generics.Linear.Unsafe.ViaGHCGenerics\" offers @@DerivingVia@@ targets to
derive @@Generic@@ and @@Generic1@@ instances from
@@\"GHC.Generics\".'GHC.Generics.Generic'@@. Because these instances necessarily
use unsafe coercions, their use will likely inhibit full optimization of
code using them.

Educational code: the educational modules exported by
<https://hackage.haskell.org/package/generic-deriving generic-deriving>
have been copied into the @@tests\\/Generic\\/Deriving@@ directory
in this repository, with the very few modifications required to
accommodate the differences between the @@Generic1@@ representations
here and in @@base@@. All the same caveats apply as in the originals;
see that package's @@README@@.")
    (license license:bsd-3)))

haskell-9.2-linear-generics

(define-public haskell-9.2-list-predicate
  (package
    (name "haskell-9.2-list-predicate")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/list-predicate/list-predicate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zl2qk4g4wva7gkwbdrpjfvwhh9xa1fngyhhaa8bdl91559v9yrd"))))
    (properties `((upstream-name . "list-predicate") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/pgujjula/list-utilities#readme")
    (synopsis "Predicates on lists")
    (description
     "Please see the README on GitHub at <https://github.com/pgujjula/list-utilities/tree/master/list-predicate#readme>.")
    (license license:bsd-3)))

haskell-9.2-list-predicate

(define-public haskell-9.2-load-env
  (package
    (name "haskell-9.2-load-env")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)))
    (home-page "https://github.com/pbrisbin/load-env#readme")
    (synopsis "Load environment variables from a file.")
    (description
     "Parse a .env file and load any declared variables into the current process's environment. This allows for a .env file to specify development-friendly defaults for configuration values normally set in the deployment environment.")
    (license license:bsd-3)))

haskell-9.2-load-env

(define-public haskell-9.2-locators
  (package
    (name "haskell-9.2-locators")
    (version "0.3.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/locators/locators-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1rjlgjm41mxflq4b7y7cl86mlkdlh5lgxsm40lmy1lwfcx7l2fmq"))))
    (properties `((upstream-name . "locators") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/locators")
    (synopsis "Human exchangable identifiers and locators")
    (description
     "/Overview/

Simple identifiers (as used, for example, as \"locators\" in airline reservation
systems) using a subset of the Latin1 alphabet whose characters are unambigious
when written or spoken.")
    (license license:expat)))

haskell-9.2-locators

(define-public haskell-9.2-logging-facade
  (package
    (name "haskell-9.2-logging-facade")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/logging-facade/logging-facade-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rn12j77gn3p84khrmbn5kq6fyj44i3z1hrdm29apikp7csv65ib"))))
    (properties `((upstream-name . "logging-facade") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-call-stack)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/sol/logging-facade#readme")
    (synopsis "Simple logging abstraction that allows multiple back-ends")
    (description "Simple logging abstraction that allows multiple back-ends")
    (license license:expat)))

haskell-9.2-logging-facade

(define-public haskell-9.2-logict
  (package
    (name "haskell-9.2-logict")
    (version "0.8.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/logict/logict-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0mpv50ifb3x9vfmgi1p9piwcgz8d19x0wdj789wxyhxwjpr6v4py"))))
    (properties `((upstream-name . "logict") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/logict#readme")
    (synopsis "A backtracking logic-programming monad.")
    (description
     "Adapted from the paper
<http://okmij.org/ftp/papers/LogicT.pdf Backtracking, Interleaving, and Terminating Monad Transformers>
by Oleg Kiselyov, Chung-chieh Shan, Daniel P. Friedman, Amr Sabry.")
    (license license:bsd-3)))

haskell-9.2-logict

(define-public haskell-9.2-loop
  (package
    (name "haskell-9.2-loop")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/loop/loop-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1kry1c6jmn96jqsdj46x2z3ibwnn34lf8gyxj80cqa5bpl8215lj"))))
    (properties `((upstream-name . "loop") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/nh2/loop")
    (synopsis "Fast loops (for when GHC can't optimize forM_)")
    (description
     "This package provides a convenient and fast alternative to the common
`forM_ [1..n]` idiom, which in many cases GHC cannot fuse to efficient
code.

See <https://ghc.haskell.org/trac/ghc/ticket/8763>.")
    (license license:expat)))

haskell-9.2-loop

(define-public haskell-9.2-lrucaching
  (package
    (name "haskell-9.2-lrucaching")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lrucaching/lrucaching-" version
                    ".tar.gz"))
              (sha256
               (base32
                "192a2zap1bmxa2y48n48rmngf18fr8k0az4a230hziv3g795yzma"))))
    (properties `((upstream-name . "lrucaching") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("12" "0jc46492lq09yrmp0887q9smk0z6nn35nlgcarm9rndsr2a1x0ya")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-psqueues)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cocreature/lrucaching#readme")
    (synopsis "LRU cache")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.2-lrucaching

(define-public haskell-9.2-lucid
  (package
    (name "haskell-9.2-lucid")
    (version "2.11.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lucid/lucid-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "13krwrvv0w24rnl7pc7qhv18c6030fkxpx7sxkffdm8sr9173xfw"))))
    (properties `((upstream-name . "lucid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0wipmh3xcs00x8lbq5j780rdc2klfj67nzni21qc1pdbhr2whn9d")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bifunctors)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-mmorph)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/chrisdone/lucid")
    (synopsis "Clear to write, read and edit DSL for HTML")
    (description
     "Clear to write, read and edit DSL for HTML.

* Names are consistent, and do not conflict with base or are keywords (all have suffix @@_@@)

* Same combinator can be used for attributes and elements (e.g. 'style_')

* For more, read <https://chrisdone.com/posts/lucid the blog post>

See the \"Lucid\" module for more documentation.")
    (license license:bsd-3)))

haskell-9.2-lucid

(define-public haskell-9.2-lucid2
  (package
    (name "haskell-9.2-lucid2")
    (version "0.0.20221012")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lucid2/lucid2-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "00r3qmxrs3jh3v4gl5m38j86ihh78q4vmsk4bz2pbcc8gh2yficj"))))
    (properties `((upstream-name . "lucid2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bifunctors)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/chrisdone/lucid")
    (synopsis "Clear to write, read and edit DSL for HTML")
    (description
     "Clear to write, read and edit DSL for HTML.

* Names are consistent, and do not conflict with base or are keywords (all have suffix @@_@@)

* Same combinator can be used for attributes and elements (e.g. 'style_')

* For more, read <https://chrisdone.com/posts/lucid the blog post>

See the \"Lucid\" module for more documentation.

This package is the newer version of lucid.")
    (license license:bsd-3)))

haskell-9.2-lucid2

(define-public haskell-9.2-lukko
  (package
    (name "haskell-9.2-lukko")
    (version "0.1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lukko/lukko-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "07xb926kixqv5scqdl8w34z42zjzdpbq06f0ha3f3nm3rxhgn3m8"))))
    (properties `((upstream-name . "lukko") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fofd-locking")
       #:cabal-revision
       ("3" "1a6spmbiv3ias40sjrnsxfgr1d5mwg039a2q7113zb7i9n6c1m7g")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-singleton-bool)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/lukko")
    (synopsis "File locking")
    (description
     "This package provides access to platform dependent file locking APIs:

* <https://www.gnu.org/software/libc/manual/html_node/Open-File-Description-Locks.html Open file descriptor locking> on Linux (\"Lukko.OFD\")
* BSD-style @@flock(2)@@ locks on UNIX platforms (\"Lukko.FLock\")
* Windows locking via <https://docs.microsoft.com/en-us/windows/win32/api/fileapi/nf-fileapi-lockfilee LockFileEx> (\"Lukko.Windows\")
* No-op locking, which throws exceptions (\"Lukko.NoOp\")
* \"Lukko\" module exports the best option for the target platform with uniform API.

There are alternative file locking packages:

* \"GHC.IO.Handle.Lock\" in @@base >= 4.10@@ is good enough for most use cases.
However, uses only 'Handle's so these locks cannot be used for intra-process locking.
(You should use e.g. 'MVar' in addition).

* <https://hackage.haskell.org/package/filelock filelock> doesn't support OFD locking.

/Lukko/ means lock in Finnish.

Submodules \"Lukko.OFD\", \"Lukko.Windows\" etc are available based on following conditions.

@@
if os(windows)
\\  cpp-options: -DHAS_WINDOWS_LOCK

elif (os(linux) && flag(ofd-locking))
\\  cpp-options: -DHAS_OFD_LOCKING
\\  cpp-options: -DHAS_FLOCK

elif !(os(solaris) || os(aix))
\\  cpp-options: -DHAS_FLOCK
@@

\"Lukko.FLock\" is available on not (Windows or Solaris or AIX).
\"Lukko.NoOp\" is always available.")
    (license license:gpl2+)))

haskell-9.2-lukko

(define-public haskell-9.2-main-tester
  (package
    (name "haskell-9.2-main-tester")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hspec-core)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "https://gitlab.com/igrep/main-tester#readme")
    (synopsis
     "Capture stdout/stderr/exit code, and replace stdin of your main function.")
    (description "See README.md for detail.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-main-tester

(define-public haskell-9.2-map-syntax
  (package
    (name "haskell-9.2-map-syntax")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/map-syntax/map-syntax-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0b3ddi998saw5gi5r4bjbpid03rxlifn08zv15wf0b90ambhcc4k"))))
    (properties `((upstream-name . "map-syntax") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "1al0603ldi5vsqid0bdvw4jnasc888cv5qqix5ps711rz86wmrrd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/map-syntax")
    (synopsis "Syntax sugar for defining maps")
    (description
     "Haskell's canonical list of tuples syntax for defining maps is not very
convenient and also has ambiguous semantics.  This package leverages do
notation to create a lighter syntax that makes semantics explicit and also
allows the option of fail-fast handling of duplicate keys.")
    (license license:bsd-3)))

haskell-9.2-map-syntax

(define-public haskell-9.2-megaparsec
  (package
    (name "haskell-9.2-megaparsec")
    (version "9.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/megaparsec/megaparsec-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0d52dbcz9nlqkkfqfs9kck5kmvkfzf3628z4ik4gr7hbbkjh72x4"))))
    (properties `((upstream-name . "megaparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-parser-combinators)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mrkkrp/megaparsec")
    (synopsis "Monadic parser combinators")
    (description
     "This is an industrial-strength monadic parser combinator library.
Megaparsec is a feature-rich package that tries to find a nice balance
between speed, flexibility, and quality of parse errors.")
    (license license:bsd-2)))

haskell-9.2-megaparsec

(define-public haskell-9.2-memcache
  (package
    (name "haskell-9.2-memcache")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/memcache/memcache-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0sbfzmdq0rqzrvrjk7yzkn0mfadbz3dxj1d9n8f3s9mz3s8bv328"))))
    (properties `((upstream-name . "memcache") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-resource-pool)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/dterei/memcache-hs")
    (synopsis "A memcached client library.")
    (description
     "A client library for a Memcached cluster. Memcached is an in-memory key-value
store typically used as a distributed and shared cache. Clients connect to a
group of Memcached servers and perform out-of-band caching for things like
SQL results, rendered pages, or third-party APIs.

It supports the binary Memcached protocol and SASL authentication. No support
for the ASCII protocol is provided. It supports connecting to a single, or a
cluster of Memcached servers. When connecting to a cluser, consistent hashing
is used for routing requests to the appropriate server. Timeouts, retrying
failed operations, and failover to a different server are all supported.

Complete coverage of the Memcached protocol is provided except for multi-get
and other pipelined operations.

Basic usage is:

> import qualified Database.Memcache.Client as M
>
> mc <- M.newClient [M.ServerSpec \"localhost\" \"11211\" M.NoAuth] M.def
> M.set mc \"key\" \"value\" 0 0
> v <- M.get mc \"key\"

You should only need to import 'Database.Memcache.Client', but for now other
modules are exposed.")
    (license license:bsd-3)))

haskell-9.2-memcache

(define-public haskell-9.2-mfsolve
  (package
    (name "haskell-9.2-mfsolve")
    (version "0.3.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mfsolve/mfsolve-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "190dszcnvy5j5bs3n0kya8a9nq0vdhrpgpndjpsxw7x70y3hc9d2"))))
    (properties `((upstream-name . "mfsolve") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0938ji6l1bx787lxcw6rzjwskm9vxm615cvx7hxpbwp0hbxrj5sa")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-mtl-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/mfsolve")
    (synopsis "Equation solver and calculator à la metafont")
    (description
     "An equation solver and calculator in the spirit of Metafont.

Like metafont, it can solve linear equations, and evaluate nonlinear expressions.  In addition to metafont, it also solves for angles, and makes the solution independend of the order of the equations.")
    (license license:bsd-3)))

haskell-9.2-mfsolve

(define-public haskell-9.2-microlens-platform
  (package
    (name "haskell-9.2-microlens-platform")
    (version "0.4.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microlens-platform/microlens-platform-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0z8snyzy18kqj32fb89mzgscjrg6w2z0jkkj4b9vl2jvbps0gkg6"))))
    (properties `((upstream-name . "microlens-platform") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-microlens-ghc)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-microlens-mtl)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-microlens-th)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/monadfix/microlens")
    (synopsis "microlens + all batteries included (best for apps)")
    (description
     "This package exports a module which is the recommended starting point for using <http://hackage.haskell.org/package/microlens microlens> if you aren't trying to keep your dependencies minimal. By importing @@Lens.Micro.Platform@@ you get all functions and instances from <http://hackage.haskell.org/package/microlens microlens>, <http://hackage.haskell.org/package/microlens-th microlens-th>, <http://hackage.haskell.org/package/microlens-mtl microlens-mtl>, <http://hackage.haskell.org/package/microlens-ghc microlens-ghc>, as well as instances for @@Vector@@, @@Text@@, and @@HashMap@@.

The minor and major versions of microlens-platform are incremented whenever the minor and major versions of any other microlens package are incremented, so you can depend on the exact version of microlens-platform without specifying the version of microlens (microlens-mtl, etc) you need.

This package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/monadfix/microlens#readme on Github>.")
    (license license:bsd-3)))

haskell-9.2-microlens-platform

(define-public haskell-9.2-mime-mail
  (package
    (name "haskell-9.2-mime-mail")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mime-mail/mime-mail-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1s1wp8v1xlvw3r4qk1lv9zpm99ihka7a785zjl6i3fq1maqq955g"))))
    (properties `((upstream-name . "mime-mail") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)))
    (home-page "http://github.com/snoyberg/mime-mail")
    (synopsis "Compose MIME email messages.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/mime-mail>.")
    (license license:expat)))

haskell-9.2-mime-mail

(define-public haskell-9.2-mnist-idx
  (package
    (name "haskell-9.2-mnist-idx")
    (version "0.1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mnist-idx/mnist-idx-" version
                    ".tar.gz"))
              (sha256
               (base32
                "12246lq1a0jc91yqyng9v2cgf4pqmfmf820jjwnc6aglx86vsmni"))))
    (properties `((upstream-name . "mnist-idx") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (home-page "https://christof-schramm.net")
    (synopsis
     "Read and write IDX data that is used in e.g. the MNIST database.")
    (description
     "This package provides functionality to read and write data in the IDX
binary format. This format is relevant for machine learning applications,
like the MNIST handwritten digit database.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.2-mnist-idx

(define-public haskell-9.2-more-containers
  (package
    (name "haskell-9.2-more-containers")
    (version "0.2.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/more-containers/more-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zbwqcn34321z2v0lj1lilzbpa8862cpk5ksmg8m8d8hrxa27szx"))))
    (properties `((upstream-name . "more-containers") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/mtth/more-containers")
    (synopsis "A few more collections")
    (description "https://github.com/mtth/more-containers")
    (license license:expat)))

haskell-9.2-more-containers

(define-public haskell-9.2-multi-containers
  (package
    (name "haskell-9.2-multi-containers")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/multi-containers/multi-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vvkdy74xr7jv0w33lrzfvzsjwsfmwlhlbyfql3pi6rb9r4x690v"))))
    (properties `((upstream-name . "multi-containers") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/zliu41/multi-containers#readme")
    (synopsis "A few multimap variants.")
    (description "A library that provides a few multimap variants.")
    (license license:bsd-3)))

haskell-9.2-multi-containers

(define-public haskell-9.2-n2o
  (package
    (name "haskell-9.2-n2o")
    (version "0.11.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/n2o/n2o-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0yvgis2v2jgdny50py8xmc9b1p2zi5kjgf45xsgsyyhzjyr30kb7"))))
    (properties `((upstream-name . "n2o") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/xafizoff/n2o#readme")
    (synopsis "Abstract Protocol Loop")
    (description "Embeddable Application Protocol Loop")
    (license license:bsd-3)))

haskell-9.2-n2o

(define-public haskell-9.2-nagios-check
  (package
    (name "haskell-9.2-nagios-check")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/nagios-check/nagios-check-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dv0g25iz61ql9nz9s7krlpa1hjv3iqf4i1wsm1njf8cn5fbij8v"))))
    (properties `((upstream-name . "nagios-check") (hidden? . #f)))
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
                     haskell-9.2-bifunctors)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/olorin/haskell-nagios-check")
    (synopsis "Package for writing monitoring plugins")
    (description "Implements Nagios plugin development guidelines
within a Haskell framework for writing Nagios
checks.")
    (license license:expat)))

haskell-9.2-nagios-check

(define-public haskell-9.2-newtype-generics
  (package
    (name "haskell-9.2-newtype-generics")
    (version "0.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/newtype-generics/newtype-generics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0km7cp041bgdgrxrbrawz611mcylxp943880a2yg228a09961b51"))))
    (properties `((upstream-name . "newtype-generics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0xgc7sxs1p3qibgwbikjdrhn47j7m4gk5x1wrv9hncks6hd6hsyf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "http://github.com/sjakobi/newtype-generics")
    (synopsis "A typeclass and set of functions for working with newtypes")
    (description
     "Per Conor McBride, the Newtype typeclass represents the packing and unpacking of a newtype,
and allows you to operate under that newtype with functions such as ala.
Generics support was added in version 0.4, making this package a full replacement
for the original newtype package, and a better alternative to newtype-th.")
    (license license:bsd-3)))

haskell-9.2-newtype-generics

(define-public haskell-9.2-once
  (package
    (name "haskell-9.2-once")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/once/once-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0az973cg4mf1azvh3x1gvp395ism7300mlajj9pvqmawvfar3g9h"))))
    (properties `((upstream-name . "once") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://gitlab.com/kaction/haskell-once")
    (synopsis "memoization for IO actions and functions")
    (description
     "Package provides single polymorphic function 'once', that allows you
to memoize IO actions and functions, evaluating them at most once.

>>> let mkStamp = (putStrLn \"stamping\" >> writeFile \"/tmp/stamp\" \"\") :: IO ()
>>> -- onceStamp :: IO ()
>>> onceStamp <- once mkStamp
>>> -- onceStamp actually evaluates mkStamp it wraps first time.
>>> onceStamp
stamping
>>> -- but second time result `()' is memoized, no action is performed.
>>> onceStamp
>>> -- we can memoize functions too
>>> foo <- once $ \\x -> print \"foo\" >> print (x :: Int)
>>> -- action will be performed once for every distinct argument
>>> foo 10
foo
10
>>> foo 10
10
>>> foo 4
foo
4")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-once

(define-public haskell-9.2-openexr-write
  (package
    (name "haskell-9.2-openexr-write")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-vector-split)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "git://klacansky.com/openexr-write.git")
    (synopsis "Library for writing images in OpenEXR HDR file format.")
    (description
     "OpenEXR allows to store pixels as floating point numbers and thus can capture high dynamic range.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.2-openexr-write

(define-public haskell-9.2-optparse-text
  (package
    (name "haskell-9.2-optparse-text")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/optparse-text/optparse-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vw410q7vayfgfbrxpigkpnwm8x1lcdxkh959w9f82l8xkn83h7n"))))
    (properties `((upstream-name . "optparse-text") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)))
    (home-page "https://github.com/passy/optparse-text#readme")
    (synopsis "Data.Text helpers for optparse-applicative")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.2-optparse-text

(define-public haskell-9.2-pagination
  (package
    (name "haskell-9.2-pagination")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pagination/pagination-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0k5rd55ssrk2f4vfzwnz09az6p1d6igbfmyyyjvnwwjrgcsmynig"))))
    (properties `((upstream-name . "pagination") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/mrkkrp/pagination")
    (synopsis "Framework-agnostic pagination boilerplate")
    (description "Framework-agnostic pagination boilerplate.")
    (license license:bsd-3)))

haskell-9.2-pagination

(define-public haskell-9.2-path-pieces
  (package
    (name "haskell-9.2-path-pieces")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/path-pieces/path-pieces-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vx3sivcsld76058925hym2j6hm3g71f0qjr7v59f1g2afgx82q8"))))
    (properties `((upstream-name . "path-pieces") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0p7wsphh513s8l5d62lzgbhk2l1h6kj5y7bc27qqjsry9g8ah4y7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/path-pieces")
    (synopsis "Components of paths.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/path-pieces>.")
    (license license:bsd-3)))

haskell-9.2-path-pieces

(define-public haskell-9.2-pava
  (package
    (name "haskell-9.2-pava")
    (version "0.1.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pava/pava-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1p43yiqkawvl5x6jmivc6y2zvl0azravs0zqhfhjnxbpqv8qd5d7"))))
    (properties `((upstream-name . "pava") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (home-page "https://github.com/dschrempf/pava#readme")
    (synopsis "Greatest convex majorants and least concave minorants")
    (description
     "Please see the README on GitHub at <https://github.com/dschrempf/pava#readme>")
    (license license:gpl3+)))

haskell-9.2-pava

(define-public haskell-9.2-perfect-hash-generator
  (package
    (name "haskell-9.2-perfect-hash-generator")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/perfect-hash-generator/perfect-hash-generator-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gxrba5lpwzifjg5glld6nj54xhvajm4b6cg88cs64iqnwhh2chi"))))
    (properties `((upstream-name . "perfect-hash-generator") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-ordlist)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-sorted-list)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/kostmo/perfect-hash-generator#readme")
    (synopsis "Perfect minimal hashing implementation in native Haskell")
    (description
     "A <https://en.wikipedia.org/wiki/Perfect_hash_function perfect hash function> for a set @@S@@ is a hash function that maps distinct elements in @@S@@ to a set of integers, with __no collisions__. A <https://en.wikipedia.org/wiki/Perfect_hash_function#Minimal_perfect_hash_function minimal perfect hash function> is a perfect hash function that maps @@n@@ keys to @@n@@ __consecutive__ integers, e.g. the numbers from @@0@@ to @@n-1@@.

In contrast with the <https://hackage.haskell.org/package/PerfectHash PerfectHash package>, which is a binding to a C-based library, this package is a fully-native Haskell implementation.

It is intended primarily for generating C code for embedded applications (compare to @@<https://www.gnu.org/software/gperf/manual/gperf.html#Search-Structures gperf>@@). The output of this tool is a pair of arrays that can be included in generated C code for __<https://en.wikipedia.org/wiki/C_dynamic_memory_allocation allocation-free> hash tables__.

Though conceivably this data structure could be used directly in Haskell applications as a read-only hash table, it is not recommened, as lookups are about 10x slower than <https://hackage.haskell.org/package/unordered-containers/docs/Data-HashMap-Strict.html#t:HashMap HashMap>.

This implementation was adapted from <http://stevehanov.ca/blog/index.php?id=119 Steve Hanov's Blog>.

= Usage
The library is written generically to hash both strings and raw integers according to the <http://isthe.com/chongo/tech/comp/fnv/ FNV-1a algorithm>. Integers are split by octets before hashing.

> import Data.PerfectHash.Construction (createMinimalPerfectHash)
> import qualified Data.Map as Map
>
> tuples = [
>    (1000, 1)
>  , (5555, 2)
>  , (9876, 3)
>  ]
>
> lookup_table = createMinimalPerfectHash $ Map.fromList tuples

Generation of C code based on the arrays in @@lookup_table@@ is left as an exercise to the reader. Algorithm documentation in the \"Data.PerfectHash.Hashing\" and \"Data.PerfectHash.Lookup\" modules will be helpful.

= Demo
See the @@hash-perfectly-strings-demo@@ and @@hash-perfectly-ints-demo@@, as well as the test suite, for working examples.

> $ stack build
> $ stack exec hash-perfectly-strings-demo")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-perfect-hash-generator

(define-public haskell-9.2-pinch
  (package
    (name "haskell-9.2-pinch")
    (version "0.4.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pinch/pinch-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "107zxrmhf8bdvjk5yy438xxg7015k1b0zvpkfvh7dif7l3j9c4cm"))))
    (properties `((upstream-name . "pinch") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-network-run)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/abhinav/pinch#readme")
    (synopsis "An alternative implementation of Thrift for Haskell.")
    (description
     "This library provides machinery for types to specify how they can be
serialized and deserialized into/from Thrift payloads. It makes no
assumptions on how these payloads are sent or received and performs no code
generation. Types may specify how to be serialized and deserialized by
defining instances of the @@Pinchable@@ typeclass by hand, with
automatically derived instances by using generics or by using the pinch-gen code
generator. Check the documentation in the \"Pinch\" module for more information.

/What is Thrift?/ Apache Thrift provides an interface description language,
a set of communication protocols, and a code generator and libraries for
various programming languages to interact with the generated code. Pinch
aims to provide an alternative implementation of Thrift for Haskell.")
    (license license:bsd-3)))

haskell-9.2-pinch

(define-public haskell-9.2-pipes-concurrency
  (package
    (name "haskell-9.2-pipes-concurrency")
    (version "2.0.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-concurrency/pipes-concurrency-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1waf70qqakz9car35c1nxb0bdjniq46lfk1vmxdjrp76ri2gzd7f"))))
    (properties `((upstream-name . "pipes-concurrency") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "08gvb94g8fxj41wgrz68f5ccrc9ahdjv5n7v24iclgl731k9cq71")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-contravariant)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-pipes)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/pipes-concurrency")
    (synopsis "Concurrency for the pipes ecosystem")
    (description
     "This library provides light-weight concurrency primitives for
pipes, with the following features:

* /Simple API/: Use only five functions

* /Deadlock Safety/: Automatically avoid concurrency deadlocks

* /Flexibility/: Build many-to-many and cyclic communication topologies

* /Dynamic Graphs/: Add or remove readers and writers at any time

Import \"Pipes.Concurrent\" to use the library.

Read \"Pipes.Concurrent.Tutorial\" for a tutorial.")
    (license license:bsd-3)))

haskell-9.2-pipes-concurrency

(define-public haskell-9.2-polysemy
  (package
    (name "haskell-9.2-polysemy")
    (version "1.7.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/polysemy/polysemy-" version
                    ".tar.gz"))
              (sha256
               (base32
                "09629gyjdp567dsqk0mgzzk5glrwnpn0cwanank5z3zkqg05d5ac"))))
    (properties `((upstream-name . "polysemy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dump-core")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-first-class-families)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-th-abstraction)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-type-errors)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-unagi-chan)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/polysemy-research/polysemy#readme")
    (synopsis "Higher-order, low-boilerplate free monads.")
    (description
     "Please see the README on GitHub at <https://github.com/polysemy-research/polysemy#readme>")
    (license license:bsd-3)))

haskell-9.2-polysemy

(define-public haskell-9.2-pretty-types
  (package
    (name "haskell-9.2-pretty-types")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pretty-types/pretty-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vfsriviwbrbs9kwg8jwfk5ih9ckv1bfgdxbkcqz8cfaxmbqx4f7"))))
    (properties `((upstream-name . "pretty-types") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)))
    (home-page "https://github.com/sheyll/pretty-types#readme")
    (synopsis "A small pretty printing DSL for complex types.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.2-pretty-types

(define-public haskell-9.2-prettyprinter-combinators
  (package
    (name "haskell-9.2-prettyprinter-combinators")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prettyprinter-combinators/prettyprinter-combinators-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1m6338w6cd7fsib00zs8dk16b4mxfa1vswg5bmkzafas1db6qbcg"))))
    (properties `((upstream-name . "prettyprinter-combinators")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0kvfw63g2a6mn4sk3lf8i7g469gz5xazlniivbxxan91gcg7rfb2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bimap)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-pretty-show)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/sergv/prettyprinter-combinators")
    (synopsis "Some useful combinators for the prettyprinter package")
    (description
     "Various utilities that make writing Pretty instances easier.

Notable utilites include automatic deriving of Pretty instance via
Generic, Data, or Show instance.")
    (license license:asl2.0)))

haskell-9.2-prettyprinter-combinators

(define-public haskell-9.2-primitive-unlifted
  (package
    (name "haskell-9.2-primitive-unlifted")
    (version "0.1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/primitive-unlifted/primitive-unlifted-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gilzgclpvz200sybw86nmdm7084nrklscq48cs36qqlgcd0wcwb"))))
    (properties `((upstream-name . "primitive-unlifted") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0y3zdwbs1fdzspj1k95jyjrhm7za38gb6ada031bp02ifxbvsvsf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-text-short)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-primitive/primitive-unlifted")
    (synopsis "Primitive GHC types with unlifted types inside")
    (description "Primitive GHC types with unlifted types inside. There used
to be a module named `Data.Primitive.UnliftedArray` in the
`primitive` library. However, the techniques it used were
unsound in the presence of certain FFI calls. This library
a successor to that module.")
    (license license:bsd-3)))

haskell-9.2-primitive-unlifted

(define-public haskell-9.2-projectroot
  (package
    (name "haskell-9.2-projectroot")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/projectroot/projectroot-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1f0sgrdq83af1wff5pmzfh44rmzmc0k8axhddz7rkl9yaj330xak"))))
    (properties `((upstream-name . "projectroot") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/yamadapc/haskell-projectroot")
    (synopsis "Bindings to the projectroot C logic")
    (description
     "Simple way of finding the root of a project given an
entry-point. This module provides bindings to the
<https://github.com/yamadapc/projectroot projectroot> C library")
    (license license:expat)))

haskell-9.2-projectroot

(define-public haskell-9.2-proto-lens-setup
  (package
    (name "haskell-9.2-proto-lens-setup")
    (version "0.4.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/proto-lens-setup/proto-lens-setup-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jz1d83cbvr7k6igjmjg6z6yl49aci05v8g944whl1j3vkgh4sya"))))
    (properties `((upstream-name . "proto-lens-setup") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-proto-lens-protoc)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/google/proto-lens#readme")
    (synopsis "Cabal support for codegen with proto-lens.")
    (description
     "This package provides Cabal support for the @@proto-lens@@ package.
It automatically generates Haskell source files from protocol buffer
files (@@.proto@@).

To generate Haskell modules for a Cabal package, import
\"Data.ProtoLens.Setup\" from the @@Setup.hs@@ file.  For example:

> import Data.ProtoLens.Setup
> -- Here, \"src\" is the directory where .proto source files may be found
> main = defaultMainGeneratingProtos \"src\"

Then, edit the @@.cabal@@ file of your project to:

* Specify @@build-type: Custom@@, and add a @@custom-setup@@ clause that
depends on @@proto-lens-setup@@.

* List the .proto files in @@extra-source-files@@.  Note that the field belongs
at the top level of the @@.cabal@@ file, rather than once per
library\\/executable\\/etc.

* List the generated modules (e.g. @@Proto.Foo.Bar@@) in @@exposed-modules@@
or @@other-modules@@ of the rule(s) that use them (e.g. the library or
executables).  Additionally, add @@proto-lens-runtime@@ to the @@build-depends@@
of those rules.

For example, in @@foo-bar-proto.cabal@@:

> build-type: Custom
> extra-source-files: src/foo/bar.proto
> ...
> custom-setup
>   setup-depends: base, Cabal, proto-lens-setup

> library
>     exposed-modules: Proto.Foo.Bar, Proto.Foo.Bar_Fields
>     autogen-modules: Proto.Foo.Bar, Proto.Foo.Bar_Fields
>     build-depends: proto-lens-runtime, ...")
    (license license:bsd-3)))

haskell-9.2-proto-lens-setup

(define-public haskell-9.2-protobuf
  (package
    (name "haskell-9.2-protobuf")
    (version "0.2.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/protobuf/protobuf-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1x99rf8hl5kcldj9fj6z22fxffv3wic5k6wmipnrayp9jj6zzyx9"))))
    (properties `((upstream-name . "protobuf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-orphans)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/alphaHeavy/protobuf")
    (synopsis "Google Protocol Buffers via GHC.Generics")
    (description
     "Google Protocol Buffers via GHC.Generics.

Protocol Buffers are a way of encoding structured data in an efficient yet extensible format.
Google uses Protocol Buffers for almost all of its internal RPC protocols and file formats.

This library supports a useful subset of Google Protocol Buffers message specifications
in a Haskell. No preprocessor or additional build steps are required for message encoding and decoding.

Record specifications are built by defining records with specially defined fields that
capture most of the Protocol Buffers specification language.
")
    (license license:bsd-3)))

haskell-9.2-protobuf

(define-public haskell-9.2-protocol-radius-test
  (package
    (name "haskell-9.2-protocol-radius-test")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-protocol-radius)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-quickcheck-simple)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/protocol-radius-test")
    (synopsis "testsuit of protocol-radius haskell package")
    (description "This package provides
testsuit of protocol-radius haskell package.")
    (license license:bsd-3)))

haskell-9.2-protocol-radius-test

(define-public haskell-9.2-protolude
  (package
    (name "haskell-9.2-protolude")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/protolude/protolude-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0i53yxg44nrz0czwr8cqhw1fdapz9db8kfnqz9a3lmj5skrikh3y"))))
    (properties `((upstream-name . "protolude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-mtl-compat)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/sdiehl/protolude")
    (synopsis "A small prelude.")
    (description "A sensible set of defaults for writing custom Preludes.")
    (license license:expat)))

haskell-9.2-protolude

(define-public haskell-9.2-pwstore-fast
  (package
    (name "haskell-9.2-pwstore-fast")
    (version "2.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pwstore-fast/pwstore-fast-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cpvlwzg3qznhygrr78f75p65mnljd9v5cvnagfxjqppnrkay6bj"))))
    (properties `((upstream-name . "pwstore-fast") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-byteable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-cryptohash)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/PeterScott/pwstore")
    (synopsis "Secure password storage.")
    (description "To store passwords securely, they should be salted,
then hashed with a slow hash function. This library
uses PBKDF1-SHA256, and handles all the details.
It uses the cryptohash package for speed; if you need
a pure Haskell library, pwstore-purehaskell has the
exact same API, but uses only pure Haskell. It is
about 25 times slower than this package, but still
quite usable.")
    (license license:bsd-3)))

haskell-9.2-pwstore-fast

(define-public haskell-9.2-qrcode-core
  (package
    (name "haskell-9.2-qrcode-core")
    (version "0.9.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/qrcode-core/qrcode-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gwwvksvxhv8qwjjay4lb1v14n2dp8mkgppv6lv4f858xwfswcp6"))))
    (properties `((upstream-name . "qrcode-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/alexkazik/qrcode#readme")
    (synopsis "QR code library in pure Haskell")
    (description
     "Please see the README on GitHub at <https://github.com/alexkazik/qrcode/qrcode-core#readme>")
    (license license:expat)))

haskell-9.2-qrcode-core

(define-public haskell-9.2-quickcheck-assertions
  (package
    (name "haskell-9.2-quickcheck-assertions")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-assertions/quickcheck-assertions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kyam4cy7qmnizjwjm8jamq43w7f0fs6ljfplwj0ib6wi2kjh0wv"))))
    (properties `((upstream-name . "quickcheck-assertions") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ieee754)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-pretty-show)))
    (home-page "https://github.com/s9gf4ult/quickcheck-assertions")
    (synopsis "HUnit like assertions for QuickCheck")
    (description
     "Library with convenient assertions for QuickCheck properties like in HUnit")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.2-quickcheck-assertions

(define-public haskell-9.2-rampart
  (package
    (name "haskell-9.2-rampart")
    (version "2.0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rampart/rampart-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1g6297vfsa61ygywsc906p5449nzljldl3bbf2jags79b6qwa15n"))))
    (properties `((upstream-name . "rampart") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pedantic")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/rampart")
    (synopsis "Determine how intervals relate to each other.")
    (description "Rampart determines how intervals relate to each other.")
    (license license:expat)))

haskell-9.2-rampart

(define-public haskell-9.2-ramus
  (package
    (name "haskell-9.2-ramus")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ramus/ramus-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0kkr1d7mznkyi4xznmnhxvni9y25m6bp4nsn0hb417772v2dvpfw"))))
    (properties `((upstream-name . "ramus") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-quickcheck-io)))
    (home-page "https://github.com/NickSeagull/ramus#readme")
    (synopsis "Elm signal system for Haskell")
    (description
     "Ramus is a direct port of purescript-signal into Haskell, offering the Elm signal system for Haskell.")
    (license license:expat)))

haskell-9.2-ramus

(define-public haskell-9.2-rec-smallarray
  (package
    (name "haskell-9.2-rec-smallarray")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rec-smallarray/rec-smallarray-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1a4vsag2h955i2pgcwiy9rzs1dpvd3j2lc1drhyg6svpm7h82amk"))))
    (properties `((upstream-name . "rec-smallarray") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0k71n9vqlr7kpjzyqb2pp4lpj8wjla8gfp9f34cmlb8gg7l2g5np")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)))
    (home-page "https://github.com/re-xyr/rec-smallarray#readme")
    (synopsis "SmallArray-based extensible records for small-scale fast reads")
    (description
     "Please see the README on GitHub at <https://github.com/re-xyr/rec-smallarray#readme>")
    (license license:bsd-3)))

haskell-9.2-rec-smallarray

(define-public haskell-9.2-recv
  (package
    (name "haskell-9.2-recv")
    (version "0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/recv/recv-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1yz9b95m9yxcwbbwdvp288y47ycn4yq9g7ixlw0sf98h5rjp4s2w"))))
    (properties `((upstream-name . "recv") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)))
    (home-page "http://github.com/yesodweb/wai")
    (synopsis "Efficient netowrk recv")
    (description "Network recv based on buffer pools")
    (license license:bsd-3)))

haskell-9.2-recv

(define-public haskell-9.2-regex
  (package
    (name "haskell-9.2-regex")
    (version "1.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/regex/regex-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1nzyfkqmclmawmphvksvm9l64awqgnypic4xplc2s9sjcj4h814a"))))
    (properties `((upstream-name . "regex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-regex-base)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-time-locale-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://regex.uk")
    (synopsis "Toolkit for regex-base")
    (description "A regular expression toolkit for regex-base with
compile-time checking of RE syntax, data types for
matches and captures, a text replacement toolkit,
portable options, high-level AWK-like tools
for building text processing apps, regular expression
macros with parsers and test bench, comprehensive
documentation, tutorials and copious examples.")
    (license license:bsd-3)))

haskell-9.2-regex

(define-public haskell-9.2-relude
  (package
    (name "haskell-9.2-relude")
    (version "1.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/relude/relude-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "02dn99v2qmykj0l1qmn15k36hyxccy71b7iqavfk24zgjf5g07dm"))))
    (properties `((upstream-name . "relude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/kowainik/relude")
    (synopsis
     "Safe, performant, user-friendly and lightweight Haskell Standard Library")
    (description
     "@@__relude__@@ is an alternative prelude library. If you find the default
@@Prelude@@ unsatisfying, despite its advantages, consider using @@relude@@
instead.

== Relude goals and design principles
* __Productivity.__ You can be more productive with a \"non-standard\" standard
  library, and @@relude@@ helps you with writing safer and more
  efficient code faster.

* __Total programming__. Usage of [/partial functions/](https://www.reddit.com/r/haskell/comments/5n51u3/why_are_partial_functions_as_in_head_tail_bad/)
  can lead to unexpected bugs and runtime exceptions in pure
  code. The types of partial functions lie about their behaviour. And
  even if it is not always possible to rely only on total functions,
  @@relude@@ strives to encourage best-practices and reduce the
  chances of introducing a bug.

    +---------------------------------+--------------------------------------------+
    | __Partial__                     | __Total__                                  |
    +=================================+============================================+
    | @@head :: [a] -> a@@              | @@head :: NonEmpty a -> a@@                  |
    +---------------------------------+--------------------------------------------+
    | @@tail :: [a] -> [a]@@            | @@tail :: NonEmpty a -> [a]@@                |
    +---------------------------------+--------------------------------------------+
    | @@read :: Read a => String -> a@@ | @@readMaybe :: Read a => String -> Maybe a@@ |
    +---------------------------------+--------------------------------------------+
    | @@fromJust :: Maybe a -> a@@      | @@fromMaybe :: a -> Maybe a -> a@@           |
    +---------------------------------+--------------------------------------------+

* __Type-safety__. We use the /\"make invalid states unrepresentable\"/ motto as one
  of our guiding principles. If it is possible, we express this concept through the
  types.

    /Example:/ @@ whenNotNull :: Applicative f => [a] -> (NonEmpty a -> f ()) -> f () @@

* __Performance.__ We prefer @@Text@@ over @@[String](https://www.reddit.com/r/haskell/comments/29jw0s/whats_wrong_with_string/)@@,
  use space-leaks-free functions (e.g. our custom performant @@sum@@ and @@product@@),
  introduce @@\\@{\\-\\# INLINE \\#\\-\\@}@@ and @@\\@{\\-\\# SPECIALIZE \\#\\-\\@}@@ pragmas where
  appropriate, and make efficient container types
  (e.g. @@Map@@, @@HashMap@@, @@Set@@) more accessible.

* __Minimalism__ (low number of dependencies). We do not force users of
  @@relude@@ to stick to any specific lens or text formatting or logging
  library. Where possible, @@relude@@ depends only on boot libraries.
  The [Dependency graph](https://raw.githubusercontent.com/kowainik/relude/main/relude-dependency-graph.png)
  of @@relude@@ can give you a clearer picture.

* __Convenience__. Despite minimalism, we want to bring commonly used
   types and functions into scope, and make available functions easier
   to use. Some examples of conveniences:

    1. No need to add @@containers@@, @@unordered-containers@@, @@text@@
       and @@bytestring@@ to dependencies in your @@.cabal@@ file to
       use the main API of these libraries
    2. No need to import types like @@NonEmpty@@, @@Text@@, @@Set@@, @@Reader[T]@@, @@MVar@@, @@STM@@
    3. Functions like @@liftIO@@, @@fromMaybe@@, @@sortWith@@ are available by default as well
    4. @@IO@@ actions are lifted to @@MonadIO@@

* __Excellent documentation.__

    1. Tutorial
    2. Migration guide from @@Prelude@@
    3. Haddock for every function with examples tested by
       [doctest](http://hackage.haskell.org/package/doctest).
    4. Documentation regarding [internal module structure](http://hackage.haskell.org/package/relude/docs/Relude.html)
    5. @@relude@@-specific [HLint](http://hackage.haskell.org/package/hlint) rules: @@[.hlint.yaml](https://github.com/kowainik/relude/blob/main/.hlint.yaml)@@

* __User-friendliness.__ Anyone should be able to quickly migrate to @@relude@@. Only
  some basic familiarity with the common libraries like @@text@@ and @@containers@@
  should be enough (but not necessary).

* __Exploration.__ We have space to experiment with new ideas and proposals
  without introducing breaking changes. @@relude@@ uses the approach with
  @@Extra.*@@ modules which are not exported by default. The chosen approach makes it quite
  easy for us to provide new functionality without breaking anything and let
  the users decide to use it or not.")
    (license license:expat)))

haskell-9.2-relude

(define-public haskell-9.2-resourcet
  (package
    (name "haskell-9.2-resourcet")
    (version "1.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/resourcet/resourcet-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0d7xnpysrick56gxzkkj0mpblywbxaaldhziyl77am3822r3afzq"))))
    (properties `((upstream-name . "resourcet") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)))
    (home-page "http://github.com/snoyberg/conduit")
    (synopsis "Deterministic allocation and freeing of scarce resources.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/resourcet>.")
    (license license:bsd-3)))

haskell-9.2-resourcet

(define-public haskell-9.2-rfc1751
  (package
    (name "haskell-9.2-rfc1751")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rfc1751/rfc1751-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1f68rss3y64g2s7dmzb635986vf682gb1yvv4x720b29gh65dahk"))))
    (properties `((upstream-name . "rfc1751") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (home-page "https://github.com/xenog/rfc1751.git#readme")
    (synopsis "RFC-1751 library for Haskell")
    (description "Convert 128-bit ByteString to/from 12 English words.")
    (license license:expat)))

haskell-9.2-rfc1751

(define-public haskell-9.2-rot13
  (package
    (name "haskell-9.2-rot13")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rot13/rot13-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1p6lrjgigzbjigsyfsmx3kxrzm1aws3i708yl4xyh73arhcd89p0"))))
    (properties `((upstream-name . "rot13") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/kvanberendonck/codec-rot13")
    (synopsis "Fast ROT13 cipher for Haskell.")
    (description
     "A fast ROT13 cipher for Haskell implemented using as few branches as possible.
For more information on ROT13, see: <https://en.wikipedia.org/wiki/ROT13>")
    (license license:bsd-3)))

haskell-9.2-rot13

(define-public haskell-9.2-rpm-nvr
  (package
    (name "haskell-9.2-rpm-nvr")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rpm-nvr/rpm-nvr-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0g4fpay6rry9mnvy6mk793my1fkvpdxx40b5hn6gjr0vr1mvg2yp"))))
    (properties `((upstream-name . "rpm-nvr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/juhp/rpm-nvr")
    (synopsis "RPM package name-version-release data types")
    (description
     "The library provides types related to RPM package
name-version-releases. There are modules for reading and showing:

* NV (name-version)

* NVR (name-version-release)

* NVRA (name-version-release.arch)

* VerRel (version-release)

* VerCmp for comparing RPM versions or releases
(used to order VerRel).")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-rpm-nvr

(define-public haskell-9.2-safe-decimal
  (package
    (name "haskell-9.2-safe-decimal")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fpco/safe-decimal#readme")
    (synopsis
     "Safe and very efficient arithmetic operations on fixed decimal point numbers")
    (description
     "Please see the README on GitHub at <https://github.com/fpco/safe-decimal#readme>")
    (license license:bsd-3)))

haskell-9.2-safe-decimal

(define-public haskell-9.2-safe-exceptions
  (package
    (name "haskell-9.2-safe-exceptions")
    (version "0.1.7.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safe-exceptions/safe-exceptions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gxm61mccivrdz2qcfh5sim596nbrpapx0nli0bx7vx6z3c2ikli"))))
    (properties `((upstream-name . "safe-exceptions") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-void)))
    (home-page "https://github.com/fpco/safe-exceptions#readme")
    (synopsis "Safe, consistent, and easy exception handling")
    (description "Please see README.md")
    (license license:expat)))

haskell-9.2-safe-exceptions

(define-public haskell-9.2-scanner
  (package
    (name "haskell-9.2-scanner")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/scanner/scanner-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1mhqh94qra08zidqfsq0gxi83cgflqldnk9rr53haynbgmd5y82k"))))
    (properties `((upstream-name . "scanner") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-fail)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/Yuras/scanner")
    (synopsis
     "Fast non-backtracking incremental combinator parsing for bytestrings")
    (description "Parser combinator library designed to be fast. It doesn't
support backtracking.")
    (license license:bsd-3)))

haskell-9.2-scanner

(define-public haskell-9.2-search-algorithms
  (package
    (name "haskell-9.2-search-algorithms")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/devonhollowood/search-algorithms#readme")
    (synopsis "Common graph search algorithms")
    (description "Library containing common graph search algorithms,
including depth-first and breadth-first searches,
Dijkstra's algorithm, and A*")
    (license license:bsd-3)))

haskell-9.2-search-algorithms

(define-public haskell-9.2-selda
  (package
    (name "haskell-9.2-selda")
    (version "0.5.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/selda/selda-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1n0zkd80a9z83q5nld0gyg2p25nfy4rjkihql88binhknhk3hkgk"))))
    (properties `((upstream-name . "selda") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-uuid-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://selda.link")
    (synopsis
     "Multi-backend, high-level EDSL for interacting with SQL databases.")
    (description
     "This package provides an EDSL for writing portable, type-safe, high-level
database code. Its feature set includes querying and modifying databases,
automatic, in-process caching with consistency guarantees, and transaction
support.
See the project website for a comprehensive tutorial.
To use this package you need at least one backend package, in addition to
this package. There are currently two different backend packages:
selda-sqlite and selda-postgresql.")
    (license license:expat)))

haskell-9.2-selda

(define-public haskell-9.2-semigroupoids
  (package
    (name "haskell-9.2-semigroupoids")
    (version "5.3.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/semigroupoids/semigroupoids-"
                    version ".tar.gz"))
              (sha256
               (base32
                "169pjrm7lxjxrqj5q1iyl288bx5nj8n0pf2ri1cclxccqnvcsibd"))))
    (properties `((upstream-name . "semigroupoids") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fcontainers" "-fcontravariant" "-fdistributive" "-fcomonad" "-ftagged" "-funordered-containers")
       #:cabal-revision
       ("1" "063xzbp4p93kbaygn26rzs4wmwf01mcj7d4qfsiwf39gd0wkf2dc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-orphans)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bifunctors)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-contravariant)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-distributive)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/semigroupoids")
    (synopsis "Semigroupoids: Category sans id")
    (description
     "Provides a wide array of (semi)groupoids and operations for working with them.

A 'Semigroupoid' is a 'Category' without the requirement of identity arrows for every object in the category.

A 'Category' is any 'Semigroupoid' for which the Yoneda lemma holds.

When working with comonads you often have the @@\\<*\\>@@ portion of an @@Applicative@@, but
not the @@pure@@. This was captured in Uustalu and Vene's \\\"Essence of Dataflow Programming\\\"
in the form of the @@ComonadZip@@ class in the days before @@Applicative@@. Apply provides a weaker invariant, but for the comonads used for data flow programming (found in the streams package), this invariant is preserved. Applicative function composition forms a semigroupoid.

Similarly many structures are nearly a comonad, but not quite, for instance lists provide a reasonable 'extend' operation in the form of 'tails', but do not always contain a value.

We describe the relationships between the type classes defined in this package
and those from `base` (and some from `contravariant`) in the diagram below.
Thick-bordered nodes correspond to type classes defined in this package;
thin-bordered ones correspond to type classes from elsewhere. Solid edges
indicate a subclass relationship that actually exists; dashed edges indicate a
subclass relationship that /should/ exist, but currently doesn't.

<<https://raw.githubusercontent.com/ekmett/semigroupoids/master/img/classes.svg Relationships among type classes from this package and others>>

Apply, Bind, and Extend (not shown) give rise the Static, Kleisli and Cokleisli semigroupoids respectively.

This lets us remove many of the restrictions from various monad transformers
as in many cases the binding operation or @@\\<*\\>@@ operation does not require them.

Finally, to work with these weaker structures it is beneficial to have containers
that can provide stronger guarantees about their contents, so versions of 'Traversable'
and 'Foldable' that can be folded with just a 'Semigroup' are added.")
    (license license:bsd-2)))

haskell-9.2-semigroupoids

(define-public haskell-9.2-set-cover
  (package
    (name "haskell-9.2-set-cover")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/set-cover/set-cover-" version
                    ".tar.gz"))
              (sha256
               (base32
                "04jjcmjll0azz24rx91p0dp5b8ya5jc0qacr21764ri1dbkfflgw"))))
    (properties `((upstream-name . "set-cover") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-buildexamples" "-f-llvm")
       #:cabal-revision
       ("2" "05kisz47xka696fwszlxkvna2zv5qczaww8mpmn1g66sdppa5kzg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-enummapset)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-non-empty)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prelude-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-psqueues)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-utility-ht)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://hub.darcs.net/thielema/set-cover/")
    (synopsis
     "Solve exact set cover problems like Sudoku, 8 Queens, Soma Cube, Tetris Cube")
    (description
     "Solver for exact set cover problems.
Included examples:
Sudoku, Nonogram, 8 Queens, Domino tiling, Mastermind, Alphametics,
Soma Cube, Tetris Cube, Cube of L's,
Logika's Baumeister puzzle, Lonpos pyramid, Conway's puzzle.
The generic algorithm allows to choose between
slow but flexible @@Set@@ from @@containers@@ package
and fast but cumbersome bitvectors.

For getting familiar with the package
I propose to study the Queen8 example along with \"Math.SetCover.Exact\".

The Sudoku and Nonogram examples also demonstrate
how to interpret the set-cover solution in a human-friendly way.

Build examples with @@cabal install -fbuildExamples@@.

The package needs only Haskell 98.
There is also an experimental implementation using LLVM and @@knead@@.
Do not rely on that interface in released packages.")
    (license license:bsd-3)))

haskell-9.2-set-cover

(define-public haskell-9.2-shake
  (package
    (name "haskell-9.2-shake")
    (version "0.19.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/shake/shake-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1lcr6q53qwm308bny6gfawcjhxsmalqi3dnwckam02zp2apmcaim"))))
    (properties `((upstream-name . "shake") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-portable" "-f-cloud" "-f-embed-files")
       #:cabal-revision
       ("1" "1hz57kw5pp5cpbicbi7x8sz8c6qy58dzyiljz9b9f2r1rr683d9w")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-filepattern)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-heaps)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-js-dgtable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-js-flot)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-js-jquery)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://shakebuild.com")
    (synopsis
     "Build system library, like Make, but more accurate dependencies.")
    (description
     "Shake is a Haskell library for writing build systems - designed as a
replacement for @@make@@. See \"Development.Shake\" for an introduction,
including an example. The homepage contains links to a user
manual, an academic paper and further information:
<https://shakebuild.com>

To use Shake the user writes a Haskell program
that imports \"Development.Shake\", defines some build rules, and calls
the 'Development.Shake.shakeArgs' function. Thanks to do notation and infix
operators, a simple Shake build system
is not too dissimilar from a simple Makefile. However, as build systems
get more complex, Shake is able to take advantage of the excellent
abstraction facilities offered by Haskell and easily support much larger
projects. The Shake library provides all the standard features available in other
build systems, including automatic parallelism and minimal rebuilds.
Shake also provides more accurate dependency tracking, including seamless
support for generated files, and dependencies on system information
(e.g. compiler version).")
    (license license:bsd-3)))

haskell-9.2-shake

(define-public haskell-9.2-should-not-typecheck
  (package
    (name "haskell-9.2-should-not-typecheck")
    (version "2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/should-not-typecheck/should-not-typecheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14fmv0mv2v4fqzynamlrmdj6d1l65aw1srf1wv19nrq7rrqaqf7m"))))
    (properties `((upstream-name . "should-not-typecheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-hspec-expectations)))
    (home-page "http://github.com/CRogers/should-not-typecheck")
    (synopsis
     "A HUnit/hspec assertion library to verify that an expression does not typecheck")
    (description
     "For examples and an introduction to the library please take a look at the <https://github.com/CRogers/should-not-typecheck#should-not-typecheck- README> on github.")
    (license license:bsd-3)))

haskell-9.2-should-not-typecheck

(define-public haskell-9.2-simple-cmd
  (package
    (name "haskell-9.2-simple-cmd")
    (version "0.2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simple-cmd/simple-cmd-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1pjkcww6s45s6w757cyxniis2w4ndg7vgz6gj3c1iwfh10ajk0q4"))))
    (properties `((upstream-name . "simple-cmd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/juhp/simple-cmd")
    (synopsis "Simple String-based process commands")
    (description
     "Simple wrappers over System.Process
(readProcess, readProcessWithExitCode, rawSystem, and createProcess).
The idea is to provide some common idioms for calling out to commands
from programs.  For more advanced shell-scripting or streaming
use turtle, shelly, shake, etc.")
    (license license:bsd-3)))

haskell-9.2-simple-cmd

(define-public haskell-9.2-socket
  (package
    (name "haskell-9.2-socket")
    (version "0.8.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/socket/socket-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0gd0rw6mpzlimvcn3jiw7l0q9h4l3rhfr2n5hhg6k0bkklqp6rbr"))))
    (properties `((upstream-name . "socket") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "07n19jbgn6459v13l7x55x8l73d48jrn48dcf4402hnyab1mzhr5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/lpeterse/haskell-socket")
    (synopsis "An extensible socket library.")
    (description "This library is a minimal cross-platform interface for
BSD style networking.")
    (license license:expat)))

haskell-9.2-socket

(define-public haskell-9.2-special-values
  (package
    (name "haskell-9.2-special-values")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/special-values/special-values-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kkdw2c4d2hha99v9f89ahmifjxp7fxmxyfwq9a8xk6s0h9xs51w"))))
    (properties `((upstream-name . "special-values") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1vv5gydjd65jniifl3mnch8bzvpvdahi913gsa3kv5zijwhad699")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ieee754)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/minad/special-values#readme")
    (synopsis "Typeclass providing special values")
    (description
     "Special values are provided by a SpecialValues typeclass. Those can be used for example by QuickCheck, see quickcheck-special.")
    (license license:expat)))

haskell-9.2-special-values

(define-public haskell-9.2-splitmix-distributions
  (package
    (name "haskell-9.2-splitmix-distributions")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/splitmix-distributions/splitmix-distributions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03ffkpz3877y2jj1cblxk5gvcpl8zdsiccaq0x7xh761fgz3vsd6"))))
    (properties `((upstream-name . "splitmix-distributions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-erf)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-splitmix)))
    (home-page "https://github.com/ocramz/splitmix-distributions#readme")
    (synopsis
     "Random samplers for some common distributions, based on splitmix.")
    (description
     "Random samplers for some common distributions, as well as a convenient interface for composing them, based on splitmix. Please see the README on GitHub at <https://github.com/ocramz/splitmix-distributions#readme>")
    (license license:bsd-3)))

haskell-9.2-splitmix-distributions

(define-public haskell-9.2-stitch
  (package
    (name "haskell-9.2-stitch")
    (version "0.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/stitch/stitch-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1pk2snnvdn9f7xpnhgffzdqxps4spgvmcrbhjdfwpjxrlnxgviq9"))))
    (properties `((upstream-name . "stitch") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-werror")
       #:cabal-revision
       ("1" "0w4d5m5682nv1aas7d47rk1ddgdxc3rvc0qz1dsmxkajfqi1axpk")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/stitch")
    (synopsis "lightweight CSS DSL")
    (description
     "a tiny css preprocessor dsl for haskell – check out the readme at <https://github.com/intolerable/stitch>")
    (license license:bsd-3)))

haskell-9.2-stitch

(define-public haskell-9.2-stopwatch
  (package
    (name "haskell-9.2-stopwatch")
    (version "0.1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stopwatch/stopwatch-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1gvlh58hkg02a5814lm5f123p853z92dlmv4r5mhhlg5j6g7c62h"))))
    (properties `((upstream-name . "stopwatch") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-test_delay_upper_bound" "-f-test_threaded")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-clock)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/debug-ito/stopwatch")
    (synopsis "A simple stopwatch utility")
    (description "A simple stopwatch utility")
    (license license:bsd-3)))

haskell-9.2-stopwatch

(define-public haskell-9.2-streaming
  (package
    (name "haskell-9.2-streaming")
    (version "0.2.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/streaming/streaming-" version
                    ".tar.gz"))
              (sha256
               (base32
                "127azyczj0ab2wv7d4mb86zsbffkvjg9fpjwrqlrf2vmjgizlppw"))))
    (properties `((upstream-name . "streaming") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-mmorph)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)))
    (home-page "https://github.com/haskell-streaming/streaming")
    (synopsis "an elementary streaming prelude and general stream type.")
    (description
     "This package contains two modules, <http://hackage.haskell.org/package/streaming/docs/Streaming.html Streaming>
and <http://hackage.haskell.org/package/streaming/docs/Streaming-Prelude.html Streaming.Prelude>.
The principal module, <http://hackage.haskell.org/package/streaming-0.1.4.3/docs/Streaming-Prelude.html Streaming.Prelude>, exports an elementary streaming prelude focused on
a simple \\\"source\\\" or \\\"producer\\\" type, namely @@Stream (Of a) m r@@.
This is a sort of effectful version of
@@([a],r)@@ in which successive elements of type @@a@@ arise from some sort of monadic
action before the succession ends with a value of type @@r@@.
Everything in the library is organized to make
programming with this type as simple as possible,
by the simple expedient of making it as close to @@Prelude@@
and @@Data.List@@ as possible. Thus for example
the trivial program

> >>> S.sum $ S.take 3 (S.readLn :: Stream (Of Int) IO ())
> 1<Enter>
> 2<Enter>
> 3<Enter>
> 6 :> ()

sums the first three valid integers from user input. Similarly,

> >>> S.stdoutLn $ S.map (map toUpper) $ S.take 2 S.stdinLn
> hello<Enter>
> HELLO
> world!<Enter>
> WORLD!

upper-cases the first two lines from stdin as they arise,
and sends them to stdout. And so on,
with filtering, mapping, breaking, chunking, zipping, unzipping, replicating
and so forth:
we program with streams of @@Int@@s or @@String@@s directly as
if they constituted something like a list. That's because streams really do constitute something
like a list, and the associated operations can mostly have the same names.
(A few, like @@reverse@@, don't stream and thus disappear;
others like @@unzip@@ are here given properly streaming formulation for the first time.)
And we everywhere
oppose \\\"extracting a pure list from IO\\\",
which is the origin of typical Haskell memory catastrophes.
Basically any case where you are
tempted to use @@mapM@@, @@replicateM@@, @@traverse@@ or @@sequence@@
with Haskell lists, you would do better to use something like
@@Stream (Of a) m r@@. The type signatures are a little fancier, but
the programs themselves are mostly the same. /In fact, they are mostly simpler./ Thus,
consider the trivial demo program mentioned in
<http://stackoverflow.com/questions/24068399/haskell-performance-of-iorefs this SO question>

> main = mapM newIORef [1..10^8::Int] >>= mapM readIORef >>= mapM_ print

The new user notices that this exhausts memory, and worries about the efficiency of Haskell @@IORefs@@.
But of course it exhausts memory! Look what it says!
The problem is immediately cured by writing

> main = S.print $ S.mapM readIORef $ S.mapM newIORef $ S.each [1..10^8::Int]

which really does what the other program was meant to do,
uses no more memory than @@hello-world@@, /and is simpler anyway/, since it
doesn't involve the detour of \\\"extracting a list from IO\\\". Almost
every use of list @@mapM@@, @@replicateM@@, @@traverse@@ and @@sequence@@ produces
this problem on a smaller scale. People get used to it, as if it were
characteristic of Haskell programs to use a lot of memory. But in truth
\\\"extracting a list or sequence from IO\\\" is mostly just bad practice pure and simple.
Of course, @@mapM@@, @@replicateM@@, @@traverse@@ and @@sequence@@ make sense for lists,
under certain conditions! But @@unsafePerformIO@@ also makes sense under
certain conditions.

The <http://hackage.haskell.org/package/streaming-0.1.4.3/docs/Streaming.html Streaming> module exports the general type,
@@Stream f m r@@, which can be used to stream successive distinct
steps characterized by /any/
functor @@f@@, though we are mostly interested in organizing computations
of the form @@Stream (Of a) m r@@. The streaming-IO libraries have
various devices for dealing
with effectful variants of @@[a]@@ or @@([a],r)@@ in which the emergence of
successive elements somehow depends on IO. But it is only with
the general type @@Stream f m r@@, or some equivalent,
that one can envisage (for example) the connected streaming of their
sorts of stream - as one makes lists of lists in the Haskell
@@Prelude@@ and @@Data.List@@. One needs some such type if we are
to express properly streaming equivalents of e.g.

> group :: Ord a => [a] -> [[a]]
> chunksOf :: Int -> [a] -> [[a]]
> lines :: [Char] -> [[Char]] -- but similarly with byte streams, etc.

to mention a few obviously desirable operations.
(This is explained more elaborately in the <https://hackage.haskell.org/package/streaming#readme readme> below.)

One could of course throw something
like the present @@Stream@@ type on top of a prior stream concept: this is how @@pipes@@ and
@@pipes-group@@ (which are very much our model here) use @@FreeT@@.
But once one grasps the iterable stream concept needed to express
those functions then one will also see that,
with it, one is /already/ in possession of a complete
elementary streaming library - since one possesses @@Stream ((,) a) m r@@
or equivalently @@Stream (Of a) m r@@. This
is the type of a \\'generator\\' or \\'producer\\' or \\'source\\' or whatever
you call an effectful stream of items.
/The present Streaming.Prelude is thus the simplest streaming library that can replicate anything like the API of the Prelude and Data.List/.

The emphasis of the library is on interoperation; for
the rest its advantages are: extreme simplicity, re-use of
intuitions the user has gathered from mastery of @@Prelude@@ and
@@Data.List@@, and a total and systematic rejection of type synonyms.
The two conceptual pre-requisites are some
comprehension of monad transformers and some familiarity
with \\'rank 2 types\\'. It is hoped that experimentation with this
simple material, starting with the ghci examples in @@Streaming.Prelude@@,
will give people who are new to these concepts some
intuition about their importance. The most fundamental purpose of the
library is to express elementary streaming ideas without reliance on
a complex framework, but in a way that integrates transparently with
the rest of Haskell, using ideas - e.g. rank 2 types, which are here
implicit or explicit in most mapping - that the user can carry elsewhere,
rather than chaining her understanding to the curiosities of
a so-called streaming IO framework (as necessary as that is for certain purposes.)

See the
<https://hackage.haskell.org/package/streaming#readme readme>
below for further explanation, including the examples linked there.
Elementary usage can be divined from the ghci examples in
@@Streaming.Prelude@@ and perhaps from this rough beginning of a
<https://github.com/michaelt/streaming-tutorial/blob/master/tutorial.md tutorial>.
Note also the
<https://hackage.haskell.org/package/streaming-bytestring streaming bytestring>
and
<https://hackage.haskell.org/package/streaming-utils streaming utils>
packages. Questions about usage can be put
raised on StackOverflow with the tag @@[haskell-streaming]@@,
or as an issue on Github, or on the
<https://groups.google.com/forum/#!forum/haskell-pipes pipes list>
(the package understands itself as part of the pipes \\'ecosystem\\'.)

The simplest form of interoperation with
<http://hackage.haskell.org/package/pipes pipes>
is accomplished with this isomorphism:

> Pipes.unfoldr Streaming.next        :: Stream (Of a) m r   -> Producer a m r
> Streaming.unfoldr Pipes.next        :: Producer a m r      -> Stream (Of a) m r

Interoperation with
<http://hackage.haskell.org/package/io-streams io-streams>
is thus:

> Streaming.reread IOStreams.read     :: InputStream a       -> Stream (Of a) IO ()
> IOStreams.unfoldM Streaming.uncons  :: Stream (Of a) IO () -> IO (InputStream a)

With
<http://hackage.haskell.org/package/conduit conduit>
one might use, e.g.:

> Conduit.unfoldM Streaming.uncons                        :: Stream (Of a) m () -> Source m a
> \\str -> Streaming.mapM_ Conduit.yield (hoist lift str)  :: Stream (Of o) m r  -> ConduitM i o m r
> \\src -> hoist lift str $$ Conduit.mapM_ Streaming.yield :: Source m a         -> Stream (Of a) m ()

These conversions should never be more expensive than a single @@>->@@ or @@=$=@@.
The simplest interoperation with regular Haskell lists is provided by, say

> Streaming.each                                 :: [a]               -> Stream (Of a) m ()
> Streaming.toList_                              :: Stream (Of a) m r -> m [a]

The latter of course accumulates the whole list in memory, and is mostly what we are trying
to avoid. Every use of @@Prelude.mapM f@@ should be reconceived as using the
composition @@Streaming.toList_ . Streaming.mapM f . Streaming.each@@ with a view to
considering whether the accumulation required by @@Streaming.toList_@@ is really necessary.

Here are the results of some
<https://gist.github.com/michaelt/96606bbf05b29bf43a05aba081dc9bd4#file-benchmachines-hs microbenchmarks>
based on the
<https://github.com/ekmett/machines/blob/master/benchmarks/Benchmarks.hs benchmarks>
included in the machines package:

<<http://i.imgur.com/YbQtlXm.png>>

Because these are microbenchmarks for individual functions,
they represent a sort of \\\"worst case\\\"; many other factors can influence
the speed of a complex program.
")
    (license license:bsd-3)))

haskell-9.2-streaming

(define-public haskell-9.2-streaming-commons
  (package
    (name "haskell-9.2-streaming-commons")
    (version "0.2.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/streaming-commons/streaming-commons-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0157xjz8nhr65y9rm7rdf3pnjlrsgaqam7qfg7nqq91bvfdq2l6a"))))
    (properties `((upstream-name . "streaming-commons") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-use-bytestring-builder")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/fpco/streaming-commons")
    (synopsis
     "Common lower-level functions needed by various streaming data libraries")
    (description
     "Provides low-dependency functionality commonly needed by various streaming data libraries, such as conduit and pipes.")
    (license license:expat)))

haskell-9.2-streaming-commons

(define-public haskell-9.2-strict
  (package
    (name "haskell-9.2-strict")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/strict/strict-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0hb24a09c3agsq7sdv8r2b2jc2f4g1blg2xvj4cfadynib0apxnz"))))
    (properties `((upstream-name . "strict") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fassoc")
       #:cabal-revision
       ("4" "0pdzqhy7z70m8gxcr54jf04qhncl1jbvwybigb8lrnxqirs5l86n")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-assoc)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-these)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-strict/strict")
    (synopsis "Strict data types and String IO.")
    (description
     "This package provides strict versions of some standard Haskell data
types (pairs, Maybe and Either). It also contains strict IO operations.

It is common knowledge that lazy datastructures can lead to space-leaks.
This problem is particularly prominent, when using lazy datastructures to
store the state of a long-running application in memory. One common
solution to this problem is to use @@seq@@ and its variants in every piece of
code that updates your state. However a much easier solution is to use
fully strict types to store such state values. By \\\"fully strict types\\\" we
mean types for whose values it holds that, if they are in weak-head normal
form, then they are also in normal form. Intuitively, this means that
values of fully strict types cannot contain unevaluated thunks.

To define a fully strict datatype, one typically uses the following recipe.

1. Make all fields of every constructor strict; i.e., add a bang to
all fields.

2. Use only strict types for the fields of the constructors.

The second requirement is problematic as it rules out the use of
the standard Haskell 'Maybe', 'Either', and pair types. This library
solves this problem by providing strict variants of these types and their
corresponding standard support functions and type-class instances.

Note that this library does currently not provide fully strict lists.
They can be added if they are really required. However, in many cases one
probably wants to use unboxed or strict boxed vectors from the 'vector'
library (<http://hackage.haskell.org/package/vector>) instead of strict
lists.  Moreover, instead of @@String@@s one probably wants to use strict
@@Text@@ values from the @@text@@ library
(<http://hackage.haskell.org/package/text>).

This library comes with batteries included; i.e., mirror functions and
instances of the lazy versions in @@base@@. It also includes instances for
type-classes from the @@deepseq@@, @@binary@@, and @@hashable@@ packages.")
    (license license:bsd-3)))

haskell-9.2-strict

(define-public haskell-9.2-stringbuilder
  (package
    (name "haskell-9.2-stringbuilder")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stringbuilder/stringbuilder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fh3csx1wcssn8xyvl4ip4aprh9l4qyz2kk8mgjvqvc0vb2bsy6q"))))
    (properties `((upstream-name . "stringbuilder") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/stringbuilder")
    (synopsis "A writer monad for multi-line string literals")
    (description "<https://github.com/sol/stringbuilder#readme>")
    (license license:expat)))

haskell-9.2-stringbuilder

(define-public haskell-9.2-svg-builder
  (package
    (name "haskell-9.2-svg-builder")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/svg-builder/svg-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1k420f497lzkymmxin88ql6ib8dziic43avykv31yq65rgrf7l2g"))))
    (properties `((upstream-name . "svg-builder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "1cprm8ya1rdid4pz1dk6692mv0kqkaxrsqaxg83bca5z4dkgqi2z")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/diagrams/svg-builder.git")
    (synopsis "DSL for building SVG.")
    (description "Fast, easy to write SVG.")
    (license license:bsd-3)))

haskell-9.2-svg-builder

(define-public haskell-9.2-sysinfo
  (package
    (name "haskell-9.2-sysinfo")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sysinfo/sysinfo-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0afa9nv1sf1c4w2d9ysm0ass4a48na1mb3x9ri3nb5c6s7r41ns6"))))
    (properties `((upstream-name . "sysinfo") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-hspec-expectations)))
    (home-page "https://github.com/psibi/sysinfo#readme")
    (synopsis "Haskell Interface for getting overall system statistics")
    (description "This package can be used to get system statistics like
uptime, free memory, system load etc. Note that
the package works *only* on Linux system with
kernel version >= 2.3.23 and uses FFI calls.")
    (license license:bsd-3)))

haskell-9.2-sysinfo

(define-public haskell-9.2-tensors
  (package
    (name "haskell-9.2-tensors")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tensors/tensors-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "181jiffwp3varv9xzb8if22lwwi1vhhgqf7hai373vn2yavk5wal"))))
    (properties `((upstream-name . "tensors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1mq51vajlj15356f3hjqxwq0q4lk9dpv0xpsk26wfzf7y55l4d3p")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-reflection)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (home-page "https://github.com/leptonyu/tensors#readme")
    (synopsis "Tensor in Haskell")
    (description "Tensor use type level programming in haskell.")
    (license license:bsd-3)))

haskell-9.2-tensors

(define-public haskell-9.2-text-conversions
  (package
    (name "haskell-9.2-text-conversions")
    (version "0.3.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-conversions/text-conversions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pbjlzsjd3m8np5p6iq7zb0bx6n40d8jha76r8s07s4wg2x0yxy8"))))
    (properties `((upstream-name . "text-conversions") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/cjdev/text-conversions")
    (synopsis "Safe conversions between textual types")
    (description "Safe conversions between textual types")
    (license license:isc)))

haskell-9.2-text-conversions

(define-public haskell-9.2-text-latin1
  (package
    (name "haskell-9.2-text-latin1")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-latin1/text-latin1-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wxbv6m567n3330baw2k0xxd50nhn2k6w3lgmpk6zq7x1jp84x3c"))))
    (properties `((upstream-name . "text-latin1") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-checked)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mvv/text-latin1")
    (synopsis "Latin-1 (including ASCII) utility functions")
    (description
     "This package provides various functions over the ASCII ang Latin-1
portions of the 'Char' and 'Word8' data types.")
    (license license:bsd-3)))

haskell-9.2-text-latin1

(define-public haskell-9.2-text-metrics
  (package
    (name "haskell-9.2-text-metrics")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-metrics/text-metrics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vl3vnm7xhy2zwcx1m293gp64q5sxfa3vmzdaqnqmjgby6l31mxx"))))
    (properties `((upstream-name . "text-metrics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("2" "0h146i2dvv21nc5z1x9a5a9c2v5ml2kvd10krd5p5aaqpng6i1g4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (home-page "https://github.com/mrkkrp/text-metrics")
    (synopsis "Calculate various string metrics efficiently")
    (description "Calculate various string metrics efficiently.")
    (license license:bsd-3)))

haskell-9.2-text-metrics

(define-public haskell-9.2-text-zipper
  (package
    (name "haskell-9.2-text-zipper")
    (version "0.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-zipper/text-zipper-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00k7d6qfznhp6l2ihw3pppkn580pwd7ac7wx9vidil4y9hjagaw6"))))
    (properties `((upstream-name . "text-zipper") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (home-page "https://github.com/jtdaugherty/text-zipper/")
    (synopsis "A text editor zipper library")
    (description "This library provides a zipper and API for editing text.")
    (license license:bsd-3)))

haskell-9.2-text-zipper

(define-public haskell-9.2-th-compat
  (package
    (name "haskell-9.2-th-compat")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-compat/th-compat-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1f5ssi24mnhmmi91dl5ddg2jwci6akwlznqggf56nyxl9b0pmyfq"))))
    (properties `((upstream-name . "th-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0c0p2qy78cwhdfw0hn8g16l5xidikdk5314gam4258pk7q47rbp5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/haskell-compat/th-compat")
    (synopsis "Backward- (and forward-)compatible Quote and Code types")
    (description "This package defines a \"Language.Haskell.TH.Syntax.Compat\"
module, which backports the @@Quote@@ and @@Code@@ types to
work across a wide range of @@template-haskell@@ versions.
The @@makeRelativeToProject@@ utility is also backported.
On recent versions of @@template-haskell@@ (2.17.0.0 or
later), this module simply reexports definitions
from \"Language.Haskell.TH.Syntax\". Refer to the Haddocks
for \"Language.Haskell.TH.Syntax.Compat\" for examples of
how to use this module.")
    (license license:bsd-3)))

haskell-9.2-th-compat

(define-public haskell-9.2-these-optics
  (package
    (name "haskell-9.2-these-optics")
    (version "1.0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/these-optics/these-optics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06jxv320a8f94zjjsqrh072vz2dkzhwgcmpbdy1prgvypiynm4zd"))))
    (properties `((upstream-name . "these-optics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "02xvfk8n40k6r595g8khcnxy1z2jhi2lfmfpi7m0ayrq7il0rls5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-optics-core)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-these)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskellari/these")
    (synopsis "Optics for These")
    (description "This package provides Prism and Traversals for @@These@@.")
    (license license:bsd-3)))

haskell-9.2-these-optics

(define-public haskell-9.2-thread-hierarchy
  (package
    (name "haskell-9.2-thread-hierarchy")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/thread-hierarchy/thread-hierarchy-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bhx1s7xwf4gb8qjbbifwl5cq3gfc1girrmzm4vr0fj05myk9xph"))))
    (properties `((upstream-name . "thread-hierarchy") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/nshimaza/thread-hierarchy#readme")
    (synopsis "Simple Haskell thread management in hierarchical manner")
    (description
     "Please see the README on GitHub at <https://github.com/nshimaza/thread-hierarchy#readme>")
    (license license:expat)))

haskell-9.2-thread-hierarchy

(define-public haskell-9.2-through-text
  (package
    (name "haskell-9.2-through-text")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/through-text/through-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kdl36n98kajaa7v7js2sy8bi09p8rrxmlfcclcfc1l92bd2aclk"))))
    (properties `((upstream-name . "through-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("8" "1h55jhl5igpli19qirk0wv5gl7ihhw0glbha18xpghfz2z6fjwl3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://www.github.com/bergmark/through-text")
    (synopsis
     "Convert textual types through Text without needing O(n^2) instances.")
    (description
     "Convert textual types through Text without needing O(n^2) instances.

See the README for more information: <https://github.com/bergmark/through-text/blob/master/README.md>")
    (license license:bsd-3)))

haskell-9.2-through-text

(define-public haskell-9.2-timer-wheel
  (package
    (name "haskell-9.2-timer-wheel")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/timer-wheel/timer-wheel-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0h8g9mgp7hcmksvgwwx2n1p9mavdsykqlavpdms7xbh0kgsb445z"))))
    (properties `((upstream-name . "timer-wheel") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-atomic-primops)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-ki)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-psqueues)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mitchellwrosen/timer-wheel")
    (synopsis "A timer wheel")
    (description
     "This library provides a timer wheel data structure for

* (Almost) /O(1)/ registering @@IO@@ actions to fire after a given amount of time
* /O(1)/ canceling registered actions

It is similar to @@TimerManager@@ from @@GHC.Event@@, but supports recurring
timers, can scale to handle many more registered timers.
")
    (license license:bsd-3)))

haskell-9.2-timer-wheel

(define-public haskell-9.2-timers-tick
  (package
    (name "haskell-9.2-timers-tick")
    (version "0.5.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/timers-tick/timers-tick-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jhzv5h5jwjgcskimfrvaiv5544czkyngxw9bsjdmxk0y1v698vr"))))
    (properties `((upstream-name . "timers-tick") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-developer")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "http://ariis.it/static/articles/timers-tick/page.html")
    (synopsis "tick based timers")
    (description "Tick-based timers and utilities, for games and
discrete-time programs.
Includes types and functions to work with sequence-based
resources (e.g. animations, frames).")
    (license license:bsd-3)))

haskell-9.2-timers-tick

(define-public haskell-9.2-tmapchan
  (package
    (name "haskell-9.2-tmapchan")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tmapchan/tmapchan-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1q0ia2p8c5ac91n5l3wk6rfmvj93lb9027p9rfq77lydwv1b8vg8"))))
    (properties `((upstream-name . "tmapchan") (hidden? . #f)))
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
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/athanclark/tmapchan#readme")
    (synopsis
     "An insert-ordered multimap (indexed FIFO) which consumes values as you lookup")
    (description "")
    (license license:bsd-3)))

haskell-9.2-tmapchan

(define-public haskell-9.2-tophat
  (package
    (name "haskell-9.2-tophat")
    (version "1.0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tophat/tophat-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1y519agpn8ksybfakgg4n565w26mgr3kvpjk555pq5s6rb77wjdf"))))
    (properties `((upstream-name . "tophat") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages bioinformatics) tophat)))
    (home-page "https://github.com/jcranch/tophat")
    (synopsis "Template-to-Haskell preprocessor, and templating language")
    (description "Please see README.md")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-tophat

(define-public haskell-9.2-tostring
  (package
    (name "haskell-9.2-tostring")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tostring/tostring-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0c95a1vjnnn3bwdz8v5hv7q2sbzn23ban3hcwqmwhmzc9ba019zg"))))
    (properties `((upstream-name . "tostring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1h3cdngxmcxs3bssxmp67s0nipblv0kidq4wr72ln3l090k0ynz0")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/tostring")
    (synopsis "The ToString class")
    (description "A type class for converting text types to String.")
    (license license:bsd-3)))

haskell-9.2-tostring

(define-public haskell-9.2-trimdent
  (package
    (name "haskell-9.2-trimdent")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/trimdent/trimdent-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1jvhfmkha9a0g2ikxqdbwv0mvafysva2hym1z7ws2sfirfx483dp"))))
    (properties `((upstream-name . "trimdent") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-hspec-expectations-pretty-diff)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-raw-strings-qq)))
    (home-page "https://github.com/gregorias/trimdent#readme")
    (synopsis "A utility for neat multiline string trimming")
    (description
     "Please see the README on GitHub at <https://github.com/gregorias/trimdent#readme>")
    (license (license "FSDG-compatible" "AGPL" ""))))

haskell-9.2-trimdent

(define-public haskell-9.2-tuple
  (package
    (name "haskell-9.2-tuple")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tuple/tuple-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "094nx29aahyrvbcn7yca9zs2a5rxz1is7510w1q43rpvza7hdjrg"))))
    (properties `((upstream-name . "tuple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-OneTuple)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/tuple")
    (synopsis "Various functions on tuples")
    (description
     "Various useful functions on tuples, overloaded on tuple size.")
    (license license:bsd-3)))

haskell-9.2-tuple

(define-public haskell-9.2-type-of-html
  (package
    (name "haskell-9.2-type-of-html")
    (version "1.6.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-of-html/type-of-html-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18cwsblbmdh301d4jy3b70rnfni2vf3yzg71353hahv2rgfilh3j"))))
    (properties `((upstream-name . "type-of-html") (hidden? . #f)))
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
                     haskell-9.2-double-conversion)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://github.com/knupfer/type-of-html")
    (synopsis "High performance type driven html generation.")
    (description
     "This library makes most invalid html documents compile time errors and uses advanced type level features to realise compile time computations.")
    (license license:bsd-3)))

haskell-9.2-type-of-html

(define-public haskell-9.2-typed-process
  (package
    (name "haskell-9.2-typed-process")
    (version "0.2.10.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/typed-process/typed-process-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17h9jl7gi26v3cxb4jdcksbp755sqqp8w7303q8x8r36rmf8fdp4"))))
    (properties `((upstream-name . "typed-process") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fpco/typed-process")
    (synopsis "Run external processes, with strong typing of streams")
    (description
     "Please see the tutorial at <https://github.com/fpco/typed-process#readme>")
    (license license:expat)))

haskell-9.2-typed-process

(define-public haskell-9.2-typenums
  (package
    (name "haskell-9.2-typenums")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/typenums/typenums-" version
                    ".tar.gz"))
              (sha256
               (base32
                "16bfn4s8q4w2f8a2c9l93b0yhj9qahccp9fs29rcj9q8873xaz6l"))))
    (properties `((upstream-name . "typenums") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/adituv/typenums#readme")
    (synopsis "Type level numbers using existing Nat functionality")
    (description
     "Type level numbers using existing Nat functionality. Uses kind-polymorphic typeclasses and type families to facilitate more general code compatible with existing code using type-level Naturals.")
    (license license:bsd-3)))

haskell-9.2-typenums

(define-public haskell-9.2-ulid
  (package
    (name "haskell-9.2-ulid")
    (version "0.3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ulid/ulid-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1zhw1n5pqmb74b4120vcg4bdpdl78qwmc3j0815c7h9s9q8kik87"))))
    (properties `((upstream-name . "ulid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-crypto-api)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ad-si/ulid")
    (synopsis "Implementation of ULID - Universally Unique
Lexicographically Sortable Identifier")
    (description "Implementation of Alizain Feerasta's ULID specification.
A 26 character string identifier,
as opposed to the 36 character UUID string.
Uses Douglas Crockford's base 32 encoding
for better efficiency and readability
(5 bits per character).")
    (license license:bsd-3)))

haskell-9.2-ulid

(define-public haskell-9.2-unboxed-ref
  (package
    (name "haskell-9.2-unboxed-ref")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unboxed-ref/unboxed-ref-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gvpp35mzx6ydwhwqdv319pl4yw7g4pyayciry83lnh3a3asisv4"))))
    (properties `((upstream-name . "unboxed-ref") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/winterland1989/unboxed-ref")
    (synopsis "Fast unboxed references for ST and IO monad")
    (description "Fast unboxed references for ST and IO monad")
    (license license:bsd-3)))

haskell-9.2-unboxed-ref

(define-public haskell-9.2-unicode-data
  (package
    (name "haskell-9.2-unicode-data")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unicode-data/unicode-data-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0q2wygqg0z9b22gzi083cxm73a8iz14zqvdsjmix9i57jxa827xy"))))
    (properties `((upstream-name . "unicode-data") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-ucd2haskell")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "http://github.com/composewell/unicode-data")
    (synopsis "Access Unicode Character Database (UCD)")
    (description
     "@@unicode-data@@ provides Haskell APIs to efficiently access the
<https://www.unicode.org/ucd/ Unicode character database> (UCD).
Performance is the primary goal in the design of this package.

The Haskell data structures are generated programmatically from the UCD files.
The latest Unicode version supported by this library is
@@<https://www.unicode.org/versions/Unicode14.0.0/ 14.0.0>@@.")
    (license license:asl2.0)))

haskell-9.2-unicode-data

(define-public haskell-9.2-unidecode
  (package
    (name "haskell-9.2-unidecode")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unidecode/unidecode-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1s8j1vpdhj6fby9r2vi9yyyjd960mvz6hh0lx25p38hl9akkvjrz"))))
    (properties `((upstream-name . "unidecode") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/mwotton/unidecode#readme")
    (synopsis "Haskell binding of Unidecode")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.2-unidecode

(define-public haskell-9.2-uniplate
  (package
    (name "haskell-9.2-uniplate")
    (version "1.6.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uniplate/uniplate-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1lis5qcb5j7yzd1cqjaqpb6bmkyjfb7l4nhk3ykmcma4513cjxz7"))))
    (properties `((upstream-name . "uniplate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1rvvzmi43gbrww0f17dzchm3g61zvm97arrfa5raljqb1mbibdy8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ndmitchell/uniplate#readme")
    (synopsis "Help writing simple, concise and fast generic operations.")
    (description
     "Uniplate is library for writing simple and concise generic operations.
Uniplate has similar goals to the original Scrap Your Boilerplate work,
but is substantially simpler and faster.

To get started with Uniplate you should import one of the three following
modules:

* \"Data.Generics.Uniplate.Data\" - to quickly start writing generic functions.
Most users should start by importing this module.

* \"Data.Generics.Uniplate.Direct\" - a replacement for \"Data.Generics.Uniplate.Data\"
with substantially higher performance (around 5 times), but requires writing
instance declarations.

* \"Data.Generics.Uniplate.Operations\" - definitions of all the operations defined
by Uniplate. Both the above two modules re-export this module.

In addition, some users may want to make use of the following modules:

* \"Data.Generics.Uniplate.Zipper\" - a zipper built on top of Uniplate instances.

* \"Data.Generics.SYB\" - users transitioning from the Scrap Your Boilerplate library.

* \"Data.Generics.Compos\" - users transitioning from the Compos library.

* \"Data.Generics.Uniplate.DataOnly\" - users making use of both @@Data@@ and @@Direct@@
to avoid getting instance conflicts.")
    (license license:bsd-3)))

haskell-9.2-uniplate

(define-public haskell-9.2-uniq-deep
  (package
    (name "haskell-9.2-uniq-deep")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uniq-deep/uniq-deep-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0281yfiv6qmq1q5pvrvf6qg4nwzzav6rvb4mcdzqshsrbw9n12ig"))))
    (properties `((upstream-name . "uniq-deep") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ncaq/uniq-deep#readme")
    (synopsis "uniq-deep")
    (description
     "alternative of unix uniq command. 'uniq-deep' detect repeated lines unless they are adjacent.")
    (license license:expat)))

haskell-9.2-uniq-deep

(define-public haskell-9.2-unix-time
  (package
    (name "haskell-9.2-unix-time")
    (version "0.4.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unix-time/unix-time-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hz8mi08kg84hiqnch5ycscgqmjyn1mnl5ih1bsrclyb3fhvdppy"))))
    (properties `((upstream-name . "unix-time") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-old-locale)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-old-time)))
    (home-page "https://hackage.haskell.org/package/unix-time")
    (synopsis "Unix time parser/formatter and utilities")
    (description "Fast parser\\/formatter\\/utilities for Unix time")
    (license license:bsd-3)))

haskell-9.2-unix-time

(define-public haskell-9.2-unliftio-pool
  (package
    (name "haskell-9.2-unliftio-pool")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unliftio-pool/unliftio-pool-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08246kbmgxv5afm6kngag2mh8mswifsh6017z8rirca37cwp01vr"))))
    (properties `((upstream-name . "unliftio-pool") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-resource-pool)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/unliftio-pool")
    (synopsis "Data.Pool generalized to MonadUnliftIO.")
    (description "This is a generalization of Data.Pool to MonadUnliftIO.")
    (license license:bsd-3)))

haskell-9.2-unliftio-pool

(define-public haskell-9.2-uuid
  (package
    (name "haskell-9.2-uuid")
    (version "1.3.15")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/uuid/uuid-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0r05h16gd7fgfpq9iz43jcn9jzrgfa0gk4cv1xy0p4rli66rb1gq"))))
    (properties `((upstream-name . "uuid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "06j1hk4alypnwd4v55w6lfm1jrsaqh85k350qmymw0sqbrd9rmx3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cryptohash-md5)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cryptohash-sha1)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-entropy)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-network-info)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-uuid-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-hvr/uuid")
    (synopsis
     "For creating, comparing, parsing and printing Universally Unique Identifiers")
    (description
     "This library is useful for creating, comparing, parsing and
printing Universally Unique Identifiers.

See <http://en.wikipedia.org/wiki/UUID> for the general idea.")
    (license license:bsd-3)))

haskell-9.2-uuid

(define-public haskell-9.2-validity
  (package
    (name "haskell-9.2-validity")
    (version "0.12.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity/validity-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1j9yswqas9dpb9mv132myfn1rky5vbh5gdvcxbb7p93k5c2y4g0w"))))
    (properties `((upstream-name . "validity") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity typeclass")
    (description
     "For more info, see <https://github.com/NorfairKing/validity the readme>.

Note: There are companion instance packages for this library:

* <https://hackage.haskell.org/package/validity-aeson validity-aeson>

* <https://hackage.haskell.org/package/validity-bytestring validity-bytestring>

* <https://hackage.haskell.org/package/validity-containers validity-containers>

* <https://hackage.haskell.org/package/validity-path validity-path>

* <https://hackage.haskell.org/package/validity-scientific validity-scientific>

* <https://hackage.haskell.org/package/validity-text validity-text>

* <https://hackage.haskell.org/package/validity-time validity-time>

* <https://hackage.haskell.org/package/validity-unordered-containers validity-unordered-containers>

* <https://hackage.haskell.org/package/validity-uuid validity-uuid>

* <https://hackage.haskell.org/package/validity-vector validity-vector>")
    (license license:expat)))

haskell-9.2-validity

(define-public haskell-9.2-valor
  (package
    (name "haskell-9.2-valor")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/valor/valor-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ssdyy84xh68rxinp6i36zg7c3k10122b1l30q1qi8r10bvyg3r0"))))
    (properties `((upstream-name . "valor") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/mastarija/valor#readme")
    (synopsis "Simple and powerful data validation")
    (description "Simple and powerful data validation library with
Applicative and Monad interface. Great for constructing
structured errors.")
    (license license:expat)))

haskell-9.2-valor

(define-public haskell-9.2-vault
  (package
    (name "haskell-9.2-vault")
    (version "0.3.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/vault/vault-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "181ksk1yixjg0jiggw5jvm8am8m8c7lim4xaixf8qnaqvxm6namc"))))
    (properties `((upstream-name . "vault") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fuseghc")
       #:cabal-revision
       ("2" "1bjwv3nv8jfhrdxa5kn3gvgxmyalpq7592bvyl7bpvcc7bbkfkf3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/HeinrichApfelmus/vault")
    (synopsis "a persistent store for values of arbitrary types")
    (description
     "A /vault/ is a persistent store for values of arbitrary types.
It's like having first-class access to the storage space behind IORefs.

The data structure is analogous to a bank vault,
where you can access different bank boxes with different keys;
hence the name.

Also provided is a /locker/ type, representing a store for a single element.")
    (license license:bsd-3)))

haskell-9.2-vault

(define-public haskell-9.2-vcs-ignore
  (package
    (name "haskell-9.2-vcs-ignore")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Glob)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)))
    (home-page "https://github.com/vaclavsvejcar/vcs-ignore")
    (synopsis "Library for handling files ignored by VCS systems.")
    (description
     "vcs-ignore is small Haskell library used to find, check and process files ignored by selected VCS.")
    (license license:bsd-3)))

haskell-9.2-vcs-ignore

(define-public haskell-9.2-wave
  (package
    (name "haskell-9.2-wave")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/wave/wave-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "149kgwngq3qxc7gxpkqb16j669j0wpv2f3gnvfwp58yg6m4259ki"))))
    (properties `((upstream-name . "wave") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "19rxhnqhhv1qs35y723c15c8nifj8pakcrd09jlvg5271zg4qb0b")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)))
    (home-page "https://github.com/mrkkrp/wave")
    (synopsis "Work with WAVE and RF64 files")
    (description "Work with WAVE and RF64 files.")
    (license license:bsd-3)))

haskell-9.2-wave

(define-public haskell-9.2-with-location
  (package
    (name "haskell-9.2-with-location")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/with-location/with-location-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rzxvsyh8x3ql3zh7gyw9hjx9bl4v73h0y5kzgaxcfcdn86dg49c"))))
    (properties `((upstream-name . "with-location") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/sol/with-location#readme")
    (synopsis
     "Use ImplicitParams-based source locations in a backward compatible way")
    (description "")
    (license license:expat)))

haskell-9.2-with-location

(define-public haskell-9.2-word-trie
  (package
    (name "haskell-9.2-word-trie")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/word-trie/word-trie-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10ljyb1hl4awg2c3wq5shdqj2s53q5fklf7p6np1jhn6i30c5wx3"))))
    (properties `((upstream-name . "word-trie") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "01aanzslm69z94lqy43hgyxj1ys7sqfqwn72l0snw3h2n3pjwn45")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/yi-editor/word-trie")
    (synopsis "Implementation of a finite trie over words.")
    (description "Implementation of a finite trie over words.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-word-trie

(define-public haskell-9.2-word-wrap
  (package
    (name "haskell-9.2-word-wrap")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/word-wrap/word-wrap-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0i57233g4p9p8c0jf9mp3pvknwgv1lsrxm4mxjay38rw0372jpzq"))))
    (properties `((upstream-name . "word-wrap") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/jtdaugherty/word-wrap/")
    (synopsis "A library for word-wrapping")
    (description "A library for wrapping long lines of text.")
    (license license:bsd-3)))

haskell-9.2-word-wrap

(define-public haskell-9.2-word8
  (package
    (name "haskell-9.2-word8")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/word8/word8-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "12jx7f13d2h1djq4fh4dyrab61sm49mj1w61j3rzp2vjfm696c16"))))
    (properties `((upstream-name . "word8") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/word8")
    (synopsis "Word8 library")
    (description "Word8 library to be used with Data.ByteString")
    (license license:bsd-3)))

haskell-9.2-word8

(define-public haskell-9.2-x509-store
  (package
    (name "haskell-9.2-x509-store")
    (version "1.6.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/x509-store/x509-store-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1nn8ql7vkp4qgf2msm600sr6ranpsajbhq0sc4c0l6pk1i9174n5"))))
    (properties `((upstream-name . "x509-store") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-asn1-encoding)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-asn1-types)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-pem)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage009) haskell-9.2-x509)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/vincenthz/hs-certificate")
    (synopsis "X.509 collection accessing and storing methods")
    (description
     "X.509 collection accessing and storing methods for certificate, crl, exception list")
    (license license:bsd-3)))

haskell-9.2-x509-store

(define-public haskell-9.2-xmlbf
  (package
    (name "haskell-9.2-xmlbf")
    (version "0.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/xmlbf/xmlbf-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0kmny9nxn1sj1sk7480lqin0fmq0lgwq6yxdxpnhsig01rgfisp6"))))
    (properties `((upstream-name . "xmlbf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-selective)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://gitlab.com/k0001/xmlbf")
    (synopsis
     "XML back and forth! Parser, renderer, ToXml, FromXml, fixpoints.")
    (description
     "XML back and forth! Parser, renderer, ToXml, FromXml, fixpoints.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-xmlbf

(define-public haskell-9.2-xmlhtml
  (package
    (name "haskell-9.2-xmlhtml")
    (version "0.2.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/xmlhtml/xmlhtml-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0nvwrl4cw7hfsbndmxdmzs3cs35hs01bja6hrjrc8fairaaif2rf"))))
    (properties `((upstream-name . "xmlhtml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-blaze-markup)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-bytestring-builder)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snapframework/xmlhtml")
    (synopsis "XML parser and renderer with HTML 5 quirks mode")
    (description "Contains renderers and parsers for both XML and HTML 5
document fragments, which share data structures so that
it's easy to work with both.  Document fragments are bits
of documents, which are not constrained by some of the
high-level structure rules (in particular, they may
contain more than one root element).

Note that this is not a compliant HTML 5 parser.  Rather,
it is a parser for HTML 5 compliant documents.  It does not
implement the HTML 5 parsing algorithm, and should
generally be expected to perform correctly only on
documents that you trust to conform to HTML 5.  This is
not a suitable library for implementing web crawlers or
other software that will be exposed to documents from
outside sources.  The result is also not the HTML 5
node structure, but rather something closer to the physical
structure.  For example, omitted start tags are not
inserted (and so, their corresponding end tags must also be
omitted).")
    (license license:bsd-3)))

haskell-9.2-xmlhtml

(define-public haskell-9.2-xxhash-ffi
  (package
    (name "haskell-9.2-xxhash-ffi")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xxhash-ffi/xxhash-ffi-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0srfz65dhn8lkxp1b4hiw385zg8kn5n83mnxm642h7jkakm66bpw"))))
    (properties `((upstream-name . "xxhash-ffi") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)))
    (home-page "https://github.com/haskell-haskey/xxhash-ffi#readme")
    (synopsis "Bindings to the C implementation the xxHash algorithm")
    (description
     "Bindings to the C implementation the xxHash algorithm. xxHash provides 32-bit and 64-bit extremely fast non-cryptographic hash functions.")
    (license license:bsd-3)))

haskell-9.2-xxhash-ffi

(define-public haskell-9.2-yes-precure5-command
  (package
    (name "haskell-9.2-yes-precure5-command")
    (version "5.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yes-precure5-command/yes-precure5-command-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zmgl3qdpdvwcs842l6ymy3kh3axb0qim8nda22a28qrv3fg5wi7"))))
    (properties `((upstream-name . "yes-precure5-command") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)))
    (home-page "https://github.com/igrep/yes-precure5-command/")
    (synopsis "Extended yes command to reproduce phrases in Yes! Precure 5.")
    (description
     "Provides extended yes command to reproduce phrases in Yes! Precure 5 or Yes! PreCure5 GoGo!

See <https://github.com/igrep/yes-precure5-command/blob/master/README.mkd> for details.")
    (license license:expat)))

haskell-9.2-yes-precure5-command

(define-public haskell-9.2-zeromq4-haskell
  (package
    (name "haskell-9.2-zeromq4-haskell")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zeromq4-haskell/zeromq4-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sznvz842ycbd73y8q09s6hs4i3yj1b5qm00n06f69p1i5jrkgnk"))))
    (properties `((upstream-name . "zeromq4-haskell") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
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
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages networking) zeromq)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://gitlab.com/twittner/zeromq-haskell/")
    (synopsis "Bindings to ZeroMQ 4.x")
    (description
     "The 0MQ lightweight messaging kernel is a library which extends
the standard socket interfaces with features traditionally provided
by specialised messaging middleware products.

0MQ sockets provide an abstraction of asynchronous message queues,
multiple messaging patterns, message filtering (subscriptions),
seamless access to multiple transport protocols and more.

This library provides the Haskell language binding to 0MQ >= 4.x")
    (license license:expat)))

haskell-9.2-zeromq4-haskell

(define-public haskell-9.2-zlib-bindings
  (package
    (name "haskell-9.2-zlib-bindings")
    (version "0.1.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zlib-bindings/zlib-bindings-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02ciywlz4wdlymgc3jsnicz9kzvymjw1www2163gxidnz4wb8fy8"))))
    (properties `((upstream-name . "zlib-bindings") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0fq49694gqkab8m0vq4i879blswczwd66n7xh4r4gwiahf0ryvqc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/snapframework/zlib-bindings")
    (synopsis "Low-level bindings to the zlib package.")
    (description "Low-level bindings to the zlib package.")
    (license license:bsd-3)))

haskell-9.2-zlib-bindings

