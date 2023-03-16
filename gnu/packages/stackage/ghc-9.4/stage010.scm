;;; generated file
(define-module (gnu packages stackage ghc-9.4 stage010)
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
(define-public haskell-9.4-BNFC
  (package
    (name "haskell-9.4-BNFC")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-alex)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-happy)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-string-qq)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)))
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

haskell-9.4-BNFC

(define-public haskell-9.4-ClustalParser
  (package
    (name "haskell-9.4-ClustalParser")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cmdargs)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-either-unwrap)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
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

haskell-9.4-ClustalParser

(define-public haskell-9.4-ConfigFile
  (package
    (name "haskell-9.4-ConfigFile")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-MissingH)))
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

haskell-9.4-ConfigFile

(define-public haskell-9.4-JuicyPixels-extra
  (package
    (name "haskell-9.4-JuicyPixels-extra")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mrkkrp/JuicyPixels-extra")
    (synopsis "Efficiently scale, crop, flip images with JuicyPixels")
    (description "Efficiently scale, crop, flip images with JuicyPixels.")
    (license license:bsd-3)))

haskell-9.4-JuicyPixels-extra

(define-public haskell-9.4-ViennaRNAParser
  (package
    (name "haskell-9.4-ViennaRNAParser")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-ParsecTools)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/ViennaRNAParser")
    (synopsis "Libary for parsing ViennaRNA package output")
    (description
     "Currently contains parsers and datatypes for: RNAalifold, RNAcode, RNAdistance, RNAcofold, RNAfold, RNAplex, RNAup, RNAz.

For more information on the ViennaRNA package refer to <http://www.tbi.univie.ac.at/RNA/>.

The libary is tested with Version 2.3.2 of the ViennaRNA package.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-ViennaRNAParser

(define-public haskell-9.4-adler32
  (package
    (name "haskell-9.4-adler32")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
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

haskell-9.4-adler32

(define-public haskell-9.4-alarmclock
  (package
    (name "haskell-9.4-alarmclock")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-clock)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unbounded-delays)))
    (home-page "https://github.com/DaveCTurner/alarmclock")
    (synopsis "Wake up and perform an action at a certain time.")
    (description
     "Please see the README at <https://github.com/DaveCTurner/alarmclock/blob/master/README.md>")
    (license license:bsd-3)))

haskell-9.4-alarmclock

(define-public haskell-9.4-app-settings
  (package
    (name "haskell-9.4-app-settings")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
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

haskell-9.4-app-settings

(define-public haskell-9.4-appendmap
  (package
    (name "haskell-9.4-appendmap")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/koterpillar/appendmap#readme")
    (synopsis
     "Map with a Semigroup and Monoid instances delegating to Semigroup of the elements")
    (description
     "Please see the README on GitHub at <https://github.com/koterpillar/appendmap#readme>")
    (license license:bsd-3)))

haskell-9.4-appendmap

(define-public haskell-9.4-ascii-char
  (package
    (name "haskell-9.4-ascii-char")
    (version "1.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-char/ascii-char-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1fls3yw3gs36hwqp32pn7mfibkspx5a80k32wybzc3hfp4qyymlv"))))
    (properties `((upstream-name . "ascii-char") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/typeclasses/ascii-char")
    (synopsis "A Char type representing an ASCII character")
    (description "This package defines a @@Char@@ type that has
128 constructors, one for each ASCII character.")
    (license license:asl2.0)))

haskell-9.4-ascii-char

(define-public haskell-9.4-ascii-progress
  (package
    (name "haskell-9.4-ascii-progress")
    (version "0.3.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-progress/ascii-progress-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0glixkmqk7zz4g88sfrqfrdxd4na0krlwr50m2dkra091jwacgvy"))))
    (properties `((upstream-name . "ascii-progress") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-concurrent-output)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/yamadapc/haskell-ascii-progress")
    (synopsis "A simple progress bar for the console.")
    (description
     "A simple Haskell progress bar for the console. Heavily borrows from TJ
Holowaychuk's Node.JS project
<https://github.com/tj/node-progress progress>

<https://github.com/yamadapc/haskell-ascii-progress github>")
    (license license:expat)))

haskell-9.4-ascii-progress

(define-public haskell-9.4-bank-holidays-england
  (package
    (name "haskell-9.4-bank-holidays-england")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/DaveCTurner/bank-holidays-england")
    (synopsis "Calculation of bank holidays in England and Wales")
    (description
     "Calculation of bank holidays in England and Wales, using the rules that have
been in place since 1978, and including all exceptions to the rules in the
years 1995 to 2020.")
    (license license:bsd-3)))

haskell-9.4-bank-holidays-england

(define-public haskell-9.4-base-compat-batteries
  (package
    (name "haskell-9.4-base-compat-batteries")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
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

haskell-9.4-base-compat-batteries

(define-public haskell-9.4-bbdb
  (package
    (name "haskell-9.4-bbdb")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
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

haskell-9.4-bbdb

(define-public haskell-9.4-bencode
  (package
    (name "haskell-9.4-bencode")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)))
    (home-page "https://hackage.haskell.org/package/bencode")
    (synopsis "Parsers and printers for bencoded data.")
    (description
     "Parsers and printers for bencoded data. Bencode (pronounced like B
encode) is the encoding used by the peer-to-peer file sharing system
BitTorrent for storing and transmitting loosely structured data.")
    (license license:bsd-3)))

haskell-9.4-bencode

(define-public haskell-9.4-bencoding
  (package
    (name "haskell-9.4-bencoding")
    (version "0.4.5.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bencoding/bencoding-" version
                    ".tar.gz"))
              (sha256
               (base32
                "01ncsvlay03h4cnj19mvrwbhmx0mksrvyq96qq8r5f7i8l0l9z8r"))))
    (properties `((upstream-name . "bencoding") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-dev" "-f-benchmark-atto-bencode")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/sergv/bencoding")
    (synopsis "A library for encoding and decoding of BEncode data.")
    (description
     "A library for fast and easy encoding and decoding of BEncode data.")
    (license license:bsd-3)))

haskell-9.4-bencoding

(define-public haskell-9.4-bitset-word8
  (package
    (name "haskell-9.4-bitset-word8")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-th-lift-instances)))
    (home-page "https://github.com/nshimaza/bitset-word8#readme")
    (synopsis
     "Space efficient set of Word8 and some pre-canned sets useful for parsing HTTP")
    (description
     "Please see the README on GitHub at <https://github.com/nshimaza/bitset-word8#readme>")
    (license license:expat)))

haskell-9.4-bitset-word8

(define-public haskell-9.4-blas-comfort-array
  (package
    (name "haskell-9.4-blas-comfort-array")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-blas-ffi)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-comfort-array)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-netlib-comfort-array)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-netlib-ffi)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-storable-complex)))
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

haskell-9.4-blas-comfort-array

(define-public haskell-9.4-boots
  (package
    (name "haskell-9.4-boots")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/leptonyu/boots#readme")
    (synopsis "IoC Monad in Haskell")
    (description
     "Monad used to encapsulate components, similiar to an IoC container.")
    (license license:expat)))

haskell-9.4-boots

(define-public haskell-9.4-bordacount
  (package
    (name "haskell-9.4-bordacount")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/hverr/bordacount#readme")
    (synopsis "Implementation of the Borda count election method.")
    (description
     "Implementation of the Borda count election method, optionally with
different weights for different participants.

See <https://en.wikipedia.org/wiki/Borda_count>")
    (license license:bsd-3)))

haskell-9.4-bordacount

(define-public haskell-9.4-burrito
  (package
    (name "haskell-9.4-burrito")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
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

haskell-9.4-burrito

(define-public haskell-9.4-byte-count-reader
  (package
    (name "haskell-9.4-byte-count-reader")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-parsec-numbers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/danielrolls/byte-count-reader#readme")
    (synopsis "Read strings describing a number of bytes like 2Kb and 0.5 MiB")
    (description
     "Please see the README on GitHub at <https://github.com/danielrolls/byte-count-reader#readme>")
    (license license:gpl3)))

haskell-9.4-byte-count-reader

(define-public haskell-9.4-bytestring-lexing
  (package
    (name "haskell-9.4-bytestring-lexing")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-tasty-smallcheck)))
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

haskell-9.4-bytestring-lexing

(define-public haskell-9.4-cache
  (package
    (name "haskell-9.4-cache")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-clock)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "https://github.com/hverr/haskell-cache#readme")
    (synopsis "An in-memory key/value store with expiration support")
    (description
     "An in-memory key/value store with expiration support, similar
to patrickmn/go-cache for Go.

The cache is a shared mutable HashMap implemented using STM and
with support for expiration times.")
    (license license:bsd-3)))

haskell-9.4-cache

(define-public haskell-9.4-call-plantuml
  (package
    (name "haskell-9.4-call-plantuml")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/marcellussiegburg/call-plantuml#readme")
    (synopsis
     "A simple library to call PlantUML given a diagram specification")
    (description
     "Please see the README on GitHub at <https://github.com/marcellussiegburg/call-plantuml#readme>")
    (license license:expat)))

haskell-9.4-call-plantuml

(define-public haskell-9.4-can-i-haz
  (package
    (name "haskell-9.4-can-i-haz")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/0xd34df00d/can-i-haz#readme")
    (synopsis "Generic implementation of the Has and CoHas patterns")
    (description
     "Please see the README on GitHub at <https://github.com/0xd34df00d/can-i-haz#readme>")
    (license license:bsd-3)))

haskell-9.4-can-i-haz

(define-public haskell-9.4-cdar-mBound
  (package
    (name "haskell-9.4-cdar-mBound")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
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
    (home-page "https://hackage.haskell.org/package/cdar-mBound")
    (synopsis "Exact real arithmetic using Centred Dyadic Approximations")
    (description
     "Please see https://github.com/michalkonecny/cdar/tree/mBound#readme")
    (license license:bsd-3)))

haskell-9.4-cdar-mBound

(define-public haskell-9.4-clientsession
  (package
    (name "haskell-9.4-clientsession")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-cipher-aes)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-cprng-aes)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-crypto-api)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-crypto-random)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-entropy)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-setenv)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-skein)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)))
    (home-page "http://github.com/yesodweb/clientsession/tree/master")
    (synopsis "Securely store session data in a client-side cookie.")
    (description "Achieves security through AES-CTR encryption and
Skein-MAC-512-256 authentication.  Uses Base64
encoding to avoid any issues with characters.")
    (license license:expat)))

haskell-9.4-clientsession

(define-public haskell-9.4-colourista
  (package
    (name "haskell-9.4-colourista")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/colourista/colourista-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0g06116kjg9pbp0l7n33agqbks3kw5z4rjqyhylha8miah5sxbwn"))))
    (properties `((upstream-name . "colourista") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/kowainik/colourista")
    (synopsis "Convenient interface for printing colourful messages")
    (description
     "Convenient interface for printing colourful messages based on the @@ansi-terminal@@ library.")
    (license license:mpl2.0)))

haskell-9.4-colourista

(define-public haskell-9.4-compactmap
  (package
    (name "haskell-9.4-compactmap")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://hackage.haskell.org/package/compactmap")
    (synopsis "A read-only memory-efficient key-value store.")
    (description "")
    (license license:bsd-3)))

haskell-9.4-compactmap

(define-public haskell-9.4-constraints
  (package
    (name "haskell-9.4-constraints")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-type-equality)))
    (home-page "http://github.com/ekmett/constraints/")
    (synopsis "Constraint manipulation")
    (description
     "GHC 7.4 gave us the ability to talk about @@ConstraintKinds@@. They stopped crashing the compiler in GHC 7.6.

This package provides a vocabulary for working with them.")
    (license license:bsd-2)))

haskell-9.4-constraints

(define-public haskell-9.4-context
  (package
    (name "haskell-9.4-context")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/jship/context#readme")
    (synopsis "Thread-indexed, nested contexts")
    (description
     "Thread-indexed storage around arbitrary context values. The interface supports
nesting context values per thread, and at any point, the calling thread may
ask for their current context.")
    (license license:expat)))

haskell-9.4-context

(define-public haskell-9.4-data-msgpack-types
  (package
    (name "haskell-9.4-data-msgpack-types")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-void)))
    (home-page "http://msgpack.org/")
    (synopsis "A Haskell implementation of MessagePack.")
    (description
     "A Haskell implementation of MessagePack <http://msgpack.org/>

This is a fork of msgpack-haskell <https://github.com/msgpack/msgpack-haskell>,
since the original author is unreachable. This fork incorporates a number of
bugfixes and is actively being developed.")
    (license license:bsd-3)))

haskell-9.4-data-msgpack-types

(define-public haskell-9.4-data-reify
  (package
    (name "haskell-9.4-data-reify")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
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

haskell-9.4-data-reify

(define-public haskell-9.4-data-serializer
  (package
    (name "haskell-9.4-data-serializer")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-endian)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-parsers)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mvv/data-serializer")
    (synopsis "Common API for serialization libraries")
    (description
     "This package provides a common API for serialization libraries like
<http://hackage.haskell.org/package/binary binary> and
<http://hackage.haskell.org/package/cereal cereal>.")
    (license license:bsd-3)))

haskell-9.4-data-serializer

(define-public haskell-9.4-data-textual
  (package
    (name "haskell-9.4-data-textual")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-parsers)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-text-latin1)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-text-printer)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-type-hint)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mvv/data-textual")
    (synopsis "Human-friendly textual representations.")
    (description
     "This package provides an interface for converting between data and its
(human-friendly) textual representation.")
    (license license:bsd-3)))

haskell-9.4-data-textual

(define-public haskell-9.4-dawg-ord
  (package
    (name "haskell-9.4-dawg-ord")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-smallcheck)
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

haskell-9.4-dawg-ord

(define-public haskell-9.4-depq
  (package
    (name "haskell-9.4-depq")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-psqueues)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ocramz/depq")
    (synopsis "Double-ended priority queues")
    (description
     "Double-ended priority queues, for efficient retrieval of minimum and maximum elements in ordered collections of items.")
    (license license:bsd-3)))

haskell-9.4-depq

(define-public haskell-9.4-deriving-compat
  (package
    (name "haskell-9.4-deriving-compat")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-th-abstraction)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-void)))
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

haskell-9.4-deriving-compat

(define-public haskell-9.4-dirichlet
  (package
    (name "haskell-9.4-dirichlet")
    (version "0.1.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dirichlet/dirichlet-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1mphjhizkm8jrwf698kbi1gxgx01wvmxb7v4an9gnnpwyybmcy7w"))))
    (properties `((upstream-name . "dirichlet") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-log-domain)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-math-functions)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-mwc-random)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://github.com/dschrempf/dirichlet")
    (synopsis "Multivariate Dirichlet distribution")
    (description
     "Please see the README on GitHub at <https://github.com/dschrempf/dirichlet#readme>")
    (license license:bsd-3)))

haskell-9.4-dirichlet

(define-public haskell-9.4-do-list
  (package
    (name "haskell-9.4-do-list")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/tserduke/do-list#readme")
    (synopsis "Do notation for free")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.4-do-list

(define-public haskell-9.4-dockerfile
  (package
    (name "haskell-9.4-dockerfile")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/creichert/dockerfile#readme")
    (synopsis "A Haskell DSL for generating Dockerfiles")
    (description "")
    (license license:expat)))

haskell-9.4-dockerfile

(define-public haskell-9.4-dvorak
  (package
    (name "haskell-9.4-dvorak")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/kvanberendonck/codec-dvorak")
    (synopsis "Dvorak encoding for Haskell.")
    (description "")
    (license license:bsd-3)))

haskell-9.4-dvorak

(define-public haskell-9.4-either-both
  (package
    (name "haskell-9.4-either-both")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-smallcheck)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-tasty-smallcheck)))
    (home-page "https://hackage.haskell.org/package/either-both")
    (synopsis "Either or both")
    (description "")
    (license license:bsd-3)))

haskell-9.4-either-both

(define-public haskell-9.4-elf
  (package
    (name "haskell-9.4-elf")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/wangbj/elf")
    (synopsis "An Elf parser")
    (description "Parser for ELF object format.")
    (license license:bsd-3)))

haskell-9.4-elf

(define-public haskell-9.4-elynx-nexus
  (package
    (name "haskell-9.4-elynx-nexus")
    (version "0.7.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/elynx-nexus/elynx-nexus-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yl3wkk5nz5hn11h1rmpmp7vzjf94n6bmylq16cik44kj1723y59"))))
    (properties `((upstream-name . "elynx-nexus") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/dschrempf/elynx#readme")
    (synopsis "Import and export Nexus files")
    (description
     "Examine, modify, and simulate molecular sequences in a reproducible way. Please see the README on GitHub at <https://github.com/dschrempf/elynx>.")
    (license license:gpl3+)))

haskell-9.4-elynx-nexus

(define-public haskell-9.4-enclosed-exceptions
  (package
    (name "haskell-9.4-enclosed-exceptions")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-lifted-base)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)))
    (home-page "https://github.com/jcristovao/enclosed-exceptions")
    (synopsis "Catching all exceptions from within an enclosed computation")
    (description
     "Catching all exceptions raised within an enclosed computation,
while remaining responsive to (external) asynchronous exceptions.
For more information on the technique, please see:
<https://www.fpcomplete.com/user/snoyberg/general-haskell/exceptions/catching-all-exceptions>")
    (license license:expat)))

haskell-9.4-enclosed-exceptions

(define-public haskell-9.4-envparse
  (package
    (name "haskell-9.4-envparse")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
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

haskell-9.4-envparse

(define-public haskell-9.4-envy
  (package
    (name "haskell-9.4-envy")
    (version "2.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/envy/envy-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0cc4lxh4zyg388s794i4ydixi83mgzarjldssmccmss9gp90qcj6"))))
    (properties `((upstream-name . "envy") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/envy")
    (synopsis
     "An environmentally friendly way to deal with environment variables")
    (description
     "For package use information see the <https://github.com/dmjio/envy/blob/master/README.md README.md>")
    (license license:bsd-3)))

haskell-9.4-envy

(define-public haskell-9.4-errorcall-eq-instance
  (package
    (name "haskell-9.4-errorcall-eq-instance")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/errorcall-eq-instance")
    (synopsis "An orphan Eq instance for ErrorCall")
    (description "Prior to @@base-4.7.0.0@@ there was no @@Eq@@ instance for
@@ErrorCall@@.  This package provides an orphan instance.")
    (license license:expat)))

haskell-9.4-errorcall-eq-instance

(define-public haskell-9.4-executable-hash
  (package
    (name "haskell-9.4-executable-hash")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-cryptohash)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-executable-path)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-file-embed)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/fpco/executable-hash")
    (synopsis "Provides the SHA1 hash of the program executable")
    (description "See README.md")
    (license license:expat)))

haskell-9.4-executable-hash

(define-public haskell-9.4-fakedata-parser
  (package
    (name "haskell-9.4-fakedata-parser")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fakedata-parser/fakedata-parser-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rf4mr9977p70vsinr3iga6l5wzkxnkxd52j4jmdmrk5b6i3flcp"))))
    (properties `((upstream-name . "fakedata-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/psibi/fakedata-parser#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/psibi/fakedata-parser#readme>")
    (license license:bsd-3)))

haskell-9.4-fakedata-parser

(define-public haskell-9.4-fakefs
  (package
    (name "haskell-9.4-fakefs")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://gitlab.com/igrep/haskell-fakefs#readme")
    (synopsis "Extensible fake file system for testing.")
    (description "See <https://gitlab.com/igrep/haskell-fakefs#readme>.")
    (license license:asl2.0)))

haskell-9.4-fakefs

(define-public haskell-9.4-fakepull
  (package
    (name "haskell-9.4-fakepull")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/igrep/haskell-fakepull#readme")
    (synopsis "Monad to pull from fake stream-like objects.")
    (description "See <https://github.com/igrep/haskell-fakepull#readme>.")
    (license license:asl2.0)))

haskell-9.4-fakepull

(define-public haskell-9.4-filepattern
  (package
    (name "haskell-9.4-filepattern")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/filepattern/filepattern-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dlnwnwhsfdkwm69z66wj5d2x9n3la55glq4fsn5rxm2kr1msi6c"))))
    (properties `((upstream-name . "filepattern") (hidden? . #f)))
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
                     haskell-9.4-extra)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ndmitchell/filepattern#readme")
    (synopsis "File path glob-like matching")
    (description
     "A library for matching files using patterns such as @@\\\"src\\/**\\/*.png\\\"@@ for all @@.png@@ files
recursively under the @@src@@ directory. Features:

* All matching is /O(n)/. Most functions precompute some information given only one argument.

* See \"System.FilePattern\" and @@?==@@ simple matching and semantics.

* Use @@match@@ and @@substitute@@ to extract suitable
strings from the @@*@@ and @@**@@ matches, and substitute them back into other patterns.

* Use @@step@@ and @@matchMany@@ to perform bulk matching
of many patterns against many paths simultaneously.

* Use \"System.FilePattern.Directory\" to perform optimised directory traverals using patterns.

Originally taken from the <https://hackage.haskell.org/package/shake Shake library>.")
    (license license:bsd-3)))

haskell-9.4-filepattern

(define-public haskell-9.4-fileplow
  (package
    (name "haskell-9.4-fileplow")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-binary-search)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://github.com/agrafix/fileplow#readme")
    (synopsis
     "Library to process and search large files or a collection of files")
    (description
     "Library to process and search large files or a collection of files")
    (license license:bsd-3)))

haskell-9.4-fileplow

(define-public haskell-9.4-flags-applicative
  (package
    (name "haskell-9.4-flags-applicative")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-casing)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)))
    (home-page "https://github.com/mtth/flags-applicative")
    (synopsis "Applicative flag parsing")
    (description "https://github.com/mtth/flags-applicative")
    (license license:bsd-3)))

haskell-9.4-flags-applicative

(define-public haskell-9.4-flush-queue
  (package
    (name "haskell-9.4-flush-queue")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-atomic-primops)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/fpco/flush-queue#readme")
    (synopsis
     "Concurrent bouded blocking queues optimized for flushing. Both IO and STM implementations.")
    (description
     "Please see the README on GitHub at <https://github.com/fpco/flush-queue#readme>")
    (license license:bsd-3)))

haskell-9.4-flush-queue

(define-public haskell-9.4-format-numbers
  (package
    (name "haskell-9.4-format-numbers")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/agrafix/format-numbers#readme")
    (synopsis "Various number formatting functions")
    (description "Various number formatting functions")
    (license license:expat)))

haskell-9.4-format-numbers

(define-public haskell-9.4-formatting
  (package
    (name "haskell-9.4-formatting")
    (version "7.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/formatting/formatting-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0vbaf1p2grz8irh92d4v44f1np5kywjdjvrfygjyf57ng8bihyy0"))))
    (properties `((upstream-name . "formatting") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fno-double-conversion")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-clock)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-old-locale)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)))
    (home-page "https://github.com/AJChapman/formatting#readme")
    (synopsis
     "Combinator-based type-safe formatting (like printf() or FORMAT)")
    (description
     "Combinator-based type-safe formatting (like printf() or FORMAT), modelled from the HoleyMonoids package.

See the README at <https://github.com/AJChapman/formatting#readme> for more info.")
    (license license:bsd-3)))

haskell-9.4-formatting

(define-public haskell-9.4-friendly-time
  (package
    (name "haskell-9.4-friendly-time")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-old-locale)))
    (home-page "https://hackage.haskell.org/package/friendly-time")
    (synopsis "Print time information in friendly ways")
    (description "Print time information in friendly ways")
    (license license:bsd-3)))

haskell-9.4-friendly-time

(define-public haskell-9.4-fuzzcheck
  (package
    (name "haskell-9.4-fuzzcheck")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-lifted-base)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)))
    (home-page "https://github.com/fpco/fuzzcheck")
    (synopsis "A simple checker for stress testing monadic code")
    (description "A simple checker for stress testing monadic code")
    (license license:bsd-3)))

haskell-9.4-fuzzcheck

(define-public haskell-9.4-fuzzy
  (package
    (name "haskell-9.4-fuzzy")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-monoid-subclasses)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/joom/fuzzy")
    (synopsis "Filters a list based on a fuzzy string search.")
    (description "")
    (license license:expat)))

haskell-9.4-fuzzy

(define-public haskell-9.4-general-games
  (package
    (name "haskell-9.4-general-games")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-MonadRandom)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-monad-loops)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-random-shuffle)))
    (home-page "https://github.com/cgorski/general-games")
    (synopsis "Library supporting simulation of a number of games")
    (description
     "Library providing framework for simulating outcomes of a variety
of games, including Poker.")
    (license license:expat)))

haskell-9.4-general-games

(define-public haskell-9.4-generic-deriving
  (package
    (name "haskell-9.4-generic-deriving")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-th-abstraction)))
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

haskell-9.4-generic-deriving

(define-public haskell-9.4-getopt-generics
  (package
    (name "haskell-9.4-getopt-generics")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-generics-sop)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-silently)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)))
    (home-page "https://github.com/soenkehahn/getopt-generics#readme")
    (synopsis "Create command line interfaces with ease")
    (description "Create command line interfaces with ease")
    (license license:bsd-3)))

haskell-9.4-getopt-generics

(define-public haskell-9.4-ghc-lib-parser-ex
  (package
    (name "haskell-9.4-ghc-lib-parser-ex")
    (version "9.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-lib-parser-ex/ghc-lib-parser-ex-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06qrfg4icp66lyhzncvsaqdcmsijayrlgi91x65a2nd2l0wz6gyf"))))
    (properties `((upstream-name . "ghc-lib-parser-ex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-auto" "-f-no-ghc-lib")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ghc-lib-parser)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-uniplate)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/shayne-fletcher/ghc-lib-parser-ex#readme")
    (synopsis "Algorithms on GHC parse trees")
    (description
     "Please see the README on GitHub at <https://github.com/shayne-fletcher/ghc-lib-parser-ex#readme>")
    (license license:bsd-3)))

haskell-9.4-ghc-lib-parser-ex

(define-public haskell-9.4-ghc-syntax-highlighter
  (package
    (name "haskell-9.4-ghc-syntax-highlighter")
    (version "0.0.9.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-syntax-highlighter/ghc-syntax-highlighter-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dan000fg9ipfh8knhrdscnr8lvcf6p2djl9b4bgqd4nc65pcf8a"))))
    (properties `((upstream-name . "ghc-syntax-highlighter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ghc-lib-parser)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/mrkkrp/ghc-syntax-highlighter")
    (synopsis "Syntax highlighter for Haskell using the lexer of GHC")
    (description "Syntax highlighter for Haskell using the lexer of GHC.")
    (license license:bsd-3)))

haskell-9.4-ghc-syntax-highlighter

(define-public haskell-9.4-ghost-buster
  (package
    (name "haskell-9.4-ghost-buster")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/Lazersmoke/ghost-buster#readme")
    (synopsis "Existential type utilites")
    (description
     "This package provides utilities for working with existential types.")
    (license license:bsd-3)))

haskell-9.4-ghost-buster

(define-public haskell-9.4-graph-wrapper
  (package
    (name "haskell-9.4-graph-wrapper")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/soenkehahn/graph-wrapper")
    (synopsis
     "A wrapper around the standard Data.Graph with a less awkward interface")
    (description
     "A wrapper around the standard Data.Graph with a less awkward interface")
    (license license:bsd-3)))

haskell-9.4-graph-wrapper

(define-public haskell-9.4-graphite
  (package
    (name "haskell-9.4-graphite")
    (version "0.10.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/graphite/graphite-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1aqadpg3jm9f1z43ylpmh512gi320kqnnfl6qksp2l1w26lnd0vs"))))
    (properties `((upstream-name . "graphite") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cassava)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-graphviz)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/alx741/graphite#readme")
    (synopsis "Graphs and networks library")
    (description "Represent, analyze and visualize graphs")
    (license license:bsd-3)))

haskell-9.4-graphite

(define-public haskell-9.4-has-transformers
  (package
    (name "haskell-9.4-has-transformers")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-operational)))
    (home-page "https://github.com/turion/has-transformers")
    (synopsis "This library 'Has' transformers")
    (description
     "A very slim library for first-order effects based on monad transformers
(and nearly nothing else).

Given a transformer stack @@t1 (t2 (t3 (... m))) a@@,
you can automatically lift any function @@thing :: tN m a@@ into the stack with a single function, 'liftH'.")
    (license license:expat)))

haskell-9.4-has-transformers

(define-public haskell-9.4-hebrew-time
  (package
    (name "haskell-9.4-hebrew-time")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/snoyberg/hebrew-time#readme")
    (synopsis "Hebrew dates and prayer times.")
    (description "Conversion to and from Hebrew dates.")
    (license license:expat)))

haskell-9.4-hebrew-time

(define-public haskell-9.4-hex-text
  (package
    (name "haskell-9.4-hex-text")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/typeclasses/hex-text")
    (synopsis "ByteString-Text hexidecimal conversions")
    (description "Encode a ByteString as a hexidecimal Text value,
or decode hexidecimal Text as a ByteString.")
    (license license:expat)))

haskell-9.4-hex-text

(define-public haskell-9.4-hexml
  (package
    (name "haskell-9.4-hexml")
    (version "0.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hexml/hexml-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0amy5gjk1sqj5dq8a8gp7d3z9wfhcflhxkssijnklnfn5s002x4k"))))
    (properties `((upstream-name . "hexml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ndmitchell/hexml#readme")
    (synopsis "XML subset DOM parser")
    (description
     "An XML DOM-style parser, that only parses a subset of XML, but is designed to be fast.")
    (license license:bsd-3)))

haskell-9.4-hexml

(define-public haskell-9.4-hformat
  (package
    (name "haskell-9.4-hformat")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-unicode-symbols)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "http://github.com/mvoidex/hformat")
    (synopsis "Simple Haskell formatting")
    (description "String formatting")
    (license license:bsd-3)))

haskell-9.4-hformat

(define-public haskell-9.4-hlibsass
  (package
    (name "haskell-9.4-hlibsass")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
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

haskell-9.4-hlibsass

(define-public haskell-9.4-hopfli
  (package
    (name "haskell-9.4-hopfli")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/ananthakumaran/hopfli")
    (synopsis "Bidings to Google's Zopfli compression library")
    (description
     "Hopfli provides a pure interface to compress data using the Zopfli library
algorithm.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.4-hopfli

(define-public haskell-9.4-hsemail
  (package
    (name "haskell-9.4-hsemail")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-time-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/peti/hsemail#readme")
    (synopsis "Parsec parsers for the Internet Message format (e-mail)")
    (description
     "Parsec parsers for the Internet Message format defined in RFC2822.")
    (license license:bsd-3)))

haskell-9.4-hsemail

(define-public haskell-9.4-hspec-attoparsec
  (package
    (name "haskell-9.4-hspec-attoparsec")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-attoparsec/hspec-attoparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0r7v6x0k5r8jxl0rnsq8h3gqhbiimsic3kiphn6dxaw954zqnypa"))))
    (properties `((upstream-name . "hspec-attoparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-hspec-expectations)))
    (home-page "http://github.com/alpmestan/hspec-attoparsec")
    (synopsis
     "Utility functions for testing your attoparsec parsers with hspec")
    (description
     "This package provides some helper functions for testing attoparsec parsers with hspec.

See the documentation in @@Test.Hspec.Attoparsec@@ for examples, or this package's own test suite.")
    (license license:bsd-3)))

haskell-9.4-hspec-attoparsec

(define-public haskell-9.4-hspec-checkers
  (package
    (name "haskell-9.4-hspec-checkers")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-checkers/hspec-checkers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16by6gw5gg4sifb44w0cdabrfhh7398kvgivf83bixbwabf7knz7"))))
    (properties `((upstream-name . "hspec-checkers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-checkers)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/hspec-checkers")
    (synopsis "Allows to use checkers properties from hspec")
    (description
     "Allows to use <http://hackage.haskell.org/package/checkers checkers>
properties from <http://hackage.haskell.org/package/hspec hspec>.")
    (license license:bsd-3)))

haskell-9.4-hspec-checkers

(define-public haskell-9.4-hspec-golden
  (package
    (name "haskell-9.4-hspec-golden")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-hspec-core)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-silently)))
    (home-page "https://github.com/stackbuilders/hspec-golden#readme")
    (synopsis "Golden tests for hspec")
    (description
     "Please see the README on GitHub at <https://github.com/stackbuilders/hspec-golden#README>")
    (license license:expat)))

haskell-9.4-hspec-golden

(define-public haskell-9.4-hspec-leancheck
  (package
    (name "haskell-9.4-hspec-leancheck")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-hspec-core)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-leancheck)))
    (home-page "https://github.com/rudymatela/hspec-leancheck#readme")
    (synopsis "LeanCheck support for the Hspec test framework.")
    (description
     "LeanCheck support for the Hspec test framework.

This package can be used to incorporate LeanCheck tests into Hspec test
suites.

Please see the Haddock documentation and README for more details.")
    (license license:bsd-3)))

haskell-9.4-hspec-leancheck

(define-public haskell-9.4-hspec-megaparsec
  (package
    (name "haskell-9.4-hspec-megaparsec")
    (version "2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-megaparsec/hspec-megaparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hyf06gzzqd6sqd76crwxycwgx804sd39z7i0c2vmv1qgsxv82gn"))))
    (properties `((upstream-name . "hspec-megaparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)))
    (home-page "https://github.com/mrkkrp/hspec-megaparsec")
    (synopsis "Utility functions for testing Megaparsec parsers with Hspec")
    (description
     "Utility functions for testing Megaparsec parsers with Hspec.")
    (license license:bsd-3)))

haskell-9.4-hspec-megaparsec

(define-public haskell-9.4-hspec-parsec
  (package
    (name "haskell-9.4-hspec-parsec")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-hspec-expectations)))
    (home-page "https://github.com/sjakobi/hspec-parsec#readme")
    (synopsis "Hspec expectations for testing Parsec parsers")
    (description "")
    (license license:bsd-3)))

haskell-9.4-hspec-parsec

(define-public haskell-9.4-hspec-smallcheck
  (package
    (name "haskell-9.4-hspec-smallcheck")
    (version "0.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-smallcheck/hspec-smallcheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cjhmhpdll3zg3cy1alqghw86msgafi9b67w5vhd73w7wi5hm0gm"))))
    (properties `((upstream-name . "hspec-smallcheck") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-call-stack)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-hspec-core)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-smallcheck)))
    (home-page "http://hspec.github.io/")
    (synopsis "SmallCheck support for the Hspec testing framework")
    (description "SmallCheck support for the Hspec testing framework")
    (license license:expat)))

haskell-9.4-hspec-smallcheck

(define-public haskell-9.4-htaglib
  (package
    (name "haskell-9.4-htaglib")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages mp3) taglib)))
    (home-page "https://github.com/mrkkrp/htaglib")
    (synopsis "Bindings to TagLib, audio meta-data library")
    (description "Bindings to TagLib, audio meta-data library.")
    (license license:bsd-3)))

haskell-9.4-htaglib

(define-public haskell-9.4-html-email-validate
  (package
    (name "haskell-9.4-html-email-validate")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/html-email-validate/html-email-validate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bvdmaamxbldb8nndi5f330msj1d0mrj8lapvxqyr333bg3kwaix"))))
    (properties `((upstream-name . "html-email-validate") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-regex-pcre-builtin)))
    (home-page "https://hackage.haskell.org/package/html-email-validate")
    (synopsis "Validating an email address against HTML standard")
    (description
     "The library allows to validate and parse an email address
as it's defined in <https://html.spec.whatwg.org/multipage/forms.html#valid-e-mail-address HTML standard>.
Note that HTML specification of a valid email address is a
'willful violation' of RFC 5322. If you want to validate
an address against RFC 5322 you should use <https://hackage.haskell.org/package/email-validate email-validate>.")
    (license license:bsd-3)))

haskell-9.4-html-email-validate

(define-public haskell-9.4-http-date
  (package
    (name "haskell-9.4-http-date")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-old-locale)))
    (home-page "https://hackage.haskell.org/package/http-date")
    (synopsis "HTTP Date parser/formatter")
    (description "Fast parser and formatter for HTTP Date")
    (license license:bsd-3)))

haskell-9.4-http-date

(define-public haskell-9.4-http-types
  (package
    (name "haskell-9.4-http-types")
    (version "0.12.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-types/http-types-" version
                    ".tar.gz"))
              (sha256
               (base32
                "05j00b9nqmwh9zaq9y9x50k81v2pd3j7a71kd91zlnbl8xk4m2jf"))))
    (properties `((upstream-name . "http-types") (hidden? . #f)))
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
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/aristidb/http-types")
    (synopsis
     "Generic HTTP types for Haskell (for both client and server code).")
    (description
     "Generic HTTP types for Haskell (for both client and server code).")
    (license license:bsd-3)))

haskell-9.4-http-types

(define-public haskell-9.4-hvect
  (package
    (name "haskell-9.4-hvect")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/agrafix/hvect")
    (synopsis "Simple strict heterogeneous lists")
    (description
     "Small, concise and simple implementation of heterogeneous lists with useful utility functions")
    (license license:expat)))

haskell-9.4-hvect

(define-public haskell-9.4-identicon
  (package
    (name "haskell-9.4-identicon")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mrkkrp/identicon")
    (synopsis "Flexible generation of identicons")
    (description "Flexible generation of identicons.")
    (license license:bsd-3)))

haskell-9.4-identicon

(define-public haskell-9.4-indexed-list-literals
  (package
    (name "haskell-9.4-indexed-list-literals")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-Only)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
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

haskell-9.4-indexed-list-literals

(define-public haskell-9.4-ini
  (package
    (name "haskell-9.4-ini")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ini/ini-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0dp9c48vli8z6058yajnqg9hyf9swglk8ga4wcwl03aal7n8r7gp"))))
    (properties `((upstream-name . "ini") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "https://github.com/andreasabel/ini")
    (synopsis "Configuration files in the INI format.")
    (description "Quick and easy configuration files in the INI format.")
    (license license:bsd-3)))

haskell-9.4-ini

(define-public haskell-9.4-inline-c
  (package
    (name "haskell-9.4-inline-c")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-parsers)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-regex-posix)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
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

haskell-9.4-inline-c

(define-public haskell-9.4-input-parsers
  (package
    (name "haskell-9.4-input-parsers")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/input-parsers/input-parsers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00xiaxf135v3g8l8gn0lzhfkc1lffvjblrij6lwyfigicm2ggff0"))))
    (properties `((upstream-name . "input-parsers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbinary" "-fparsec" "-fattoparsec")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-monoid-subclasses)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-parsers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/input-parsers")
    (synopsis
     "Extension of the parsers library with more capability and efficiency")
    (description
     "Extended version of the parsers library, with the additional classes providing more
capable and efficient methods.")
    (license license:bsd-3)))

haskell-9.4-input-parsers

(define-public haskell-9.4-invariant
  (package
    (name "haskell-9.4-invariant")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-StateVar)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-bifunctors)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-contravariant)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-th-abstraction)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "https://github.com/nfrisby/invariant-functors")
    (synopsis "Haskell98 invariant functors")
    (description
     "Haskell98 invariant functors (also known as exponential functors).

For more information, see Edward Kmett's article \\\"Rotten Bananas\\\":

<http://comonad.com/reader/2008/rotten-bananas/>")
    (license license:bsd-2)))

haskell-9.4-invariant

(define-public haskell-9.4-io-region
  (package
    (name "haskell-9.4-io-region")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
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

haskell-9.4-io-region

(define-public haskell-9.4-isbn
  (package
    (name "haskell-9.4-isbn")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/charukiewicz/hs-isbn")
    (synopsis "ISBN Validation and Manipulation")
    (description
     "See the README at <https://github.com/charukiewicz/hs-isbn#readme>")
    (license license:asl2.0)))

haskell-9.4-isbn

(define-public haskell-9.4-iso8601-time
  (package
    (name "haskell-9.4-iso8601-time")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/nh2/iso8601-time")
    (synopsis "Convert to/from the ISO 8601 time format")
    (description
     "Conversion functions between Haskell time types and the ISO 8601 format,
which is often used for printing times, e.g. JavaScript's @@new Date().toISOString()@@.")
    (license license:expat)))

haskell-9.4-iso8601-time

(define-public haskell-9.4-jalaali
  (package
    (name "haskell-9.4-jalaali")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/jalaali/jalaali-hs#readme")
    (synopsis "Jalaali calendar systems")
    (description
     "Functions for working with Jalaali (Jalali, Persian, Khayyami, Khorshidi, Shamsi) calendar systems. Please see the README on GitHub at <https://github.com/jalaali/jalaali-hs#readme>")
    (license license:expat)))

haskell-9.4-jalaali

(define-public haskell-9.4-kazura-queue
  (package
    (name "haskell-9.4-kazura-queue")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/kazura-queue/kazura-queue-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zi3b6d97ql3ixml238r50lpmp8aghz2mbc5yi94fyp9xvq42m2y"))))
    (properties `((upstream-name . "kazura-queue") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-atomic-primops)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-free)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)))
    (home-page "https://github.com/asakamirai/kazura-queue#readme")
    (synopsis "Fast concurrent queues much inspired by unagi-chan")
    (description
     "\\\"kazura-queue\\\" provides an implementation of FIFO queue.
It is faster than Chan, TQueue or TChan by the benefit of fetch-and-add
instruction.

Main motivation of this package is to solve some difficulty of
\"unagi-chan\" package.

- In \"unagi-chan\", the item in the queue/chan can be lost when async
exception is throwed to the read thread while waiting for read.
(Although it has handler to recover lost item,
it is difficult to keep FIFO in such case)

- In \"unagi-chan\", garbage items of the queue cannot be collected
immediately.
Since the buffer in the queue has the reference to the items until the
buffer is garbage-collected.

\\\"kazura-queue\\\" is slightly slower than \"unagi-chan\" instead of solving
these issues.

\\\"kazura-queue\\\" lost broadcast function to improve the second issue.
It means that kazura-queue is not \\\"Chan\\\" but is just \\\"Queue\\\".")
    (license license:bsd-3)))

haskell-9.4-kazura-queue

(define-public haskell-9.4-language-thrift
  (package
    (name "haskell-9.4-language-thrift")
    (version "0.12.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-thrift/language-thrift-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cn92cf60j34ybchgg0zyc3nzy1iw6mz69cn16y28pkaymaz5lrn"))))
    (properties `((upstream-name . "language-thrift") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)))
    (home-page "https://github.com/abhinav/language-thrift#readme")
    (synopsis "Parser and pretty printer for the Thrift IDL format.")
    (description "This package provides a parser and pretty printer for the
<http://thrift.apache.org/docs/idl Thrift IDL format>.")
    (license license:bsd-3)))

haskell-9.4-language-thrift

(define-public haskell-9.4-lapack-comfort-array
  (package
    (name "haskell-9.4-lapack-comfort-array")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-comfort-array)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-lapack-ffi)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-netlib-comfort-array)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-netlib-ffi)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-storable-complex)))
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

haskell-9.4-lapack-comfort-array

(define-public haskell-9.4-linebreak
  (package
    (name "haskell-9.4-linebreak")
    (version "1.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/linebreak/linebreak-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0i2b7a9f29iyr98x7j2wcagdwxl79rljamch4893vg2syca3h4f5"))))
    (properties `((upstream-name . "linebreak") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-hyphenation)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://ariis.it/static/articles/linebreak/page.html")
    (synopsis "breaks strings to fit width")
    (description "Simple functions to break a String to fit a maximum text
width, using Knuth-Liang hyphenation algorhitm.")
    (license license:bsd-3)))

haskell-9.4-linebreak

(define-public haskell-9.4-list-predicate
  (package
    (name "haskell-9.4-list-predicate")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/pgujjula/list-utilities#readme")
    (synopsis "Predicates on lists")
    (description
     "Please see the README on GitHub at <https://github.com/pgujjula/list-utilities/tree/master/list-predicate#readme>.")
    (license license:bsd-3)))

haskell-9.4-list-predicate

(define-public haskell-9.4-load-env
  (package
    (name "haskell-9.4-load-env")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)))
    (home-page "https://github.com/pbrisbin/load-env#readme")
    (synopsis "Load environment variables from a file.")
    (description
     "Parse a .env file and load any declared variables into the current process's environment. This allows for a .env file to specify development-friendly defaults for configuration values normally set in the deployment environment.")
    (license license:bsd-3)))

haskell-9.4-load-env

(define-public haskell-9.4-locators
  (package
    (name "haskell-9.4-locators")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)))
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

haskell-9.4-locators

(define-public haskell-9.4-logging-facade
  (package
    (name "haskell-9.4-logging-facade")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-call-stack)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/sol/logging-facade#readme")
    (synopsis "Simple logging abstraction that allows multiple back-ends")
    (description "Simple logging abstraction that allows multiple back-ends")
    (license license:expat)))

haskell-9.4-logging-facade

(define-public haskell-9.4-loop
  (package
    (name "haskell-9.4-loop")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/nh2/loop")
    (synopsis "Fast loops (for when GHC can't optimize forM_)")
    (description
     "This package provides a convenient and fast alternative to the common
`forM_ [1..n]` idiom, which in many cases GHC cannot fuse to efficient
code.

See <https://ghc.haskell.org/trac/ghc/ticket/8763>.")
    (license license:expat)))

haskell-9.4-loop

(define-public haskell-9.4-lucid
  (package
    (name "haskell-9.4-lucid")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-bifunctors)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-mmorph)))
    (home-page "https://github.com/chrisdone/lucid")
    (synopsis "Clear to write, read and edit DSL for HTML")
    (description
     "Clear to write, read and edit DSL for HTML.

* Names are consistent, and do not conflict with base or are keywords (all have suffix @@_@@)

* Same combinator can be used for attributes and elements (e.g. 'style_')

* For more, read <https://chrisdone.com/posts/lucid the blog post>

See the \"Lucid\" module for more documentation.")
    (license license:bsd-3)))

haskell-9.4-lucid

(define-public haskell-9.4-lucid2
  (package
    (name "haskell-9.4-lucid2")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-bifunctors)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
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

haskell-9.4-lucid2

(define-public haskell-9.4-main-tester
  (package
    (name "haskell-9.4-main-tester")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-hspec-core)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://gitlab.com/igrep/main-tester#readme")
    (synopsis
     "Capture stdout/stderr/exit code, and replace stdin of your main function.")
    (description "See README.md for detail.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.4-main-tester

(define-public haskell-9.4-matrix-market-attoparsec
  (package
    (name "haskell-9.4-matrix-market-attoparsec")
    (version "0.1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/matrix-market-attoparsec/matrix-market-attoparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kcjiv7qqlkqqpdv0cyrhfa81m2zxs8w06x51sj22nygr1srmdrj"))))
    (properties `((upstream-name . "matrix-market-attoparsec") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)))
    (home-page "https://github.com/ocramz/matrix-market-attoparsec")
    (synopsis
     "Parsing and serialization functions for the NIST Matrix Market format")
    (description
     "Parsing and serialization functions for the NIST Matrix Market format.")
    (license license:bsd-2)))

haskell-9.4-matrix-market-attoparsec

(define-public haskell-9.4-mime-mail
  (package
    (name "haskell-9.4-mime-mail")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)))
    (home-page "http://github.com/snoyberg/mime-mail")
    (synopsis "Compose MIME email messages.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/mime-mail>.")
    (license license:expat)))

haskell-9.4-mime-mail

(define-public haskell-9.4-mnist-idx
  (package
    (name "haskell-9.4-mnist-idx")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://christof-schramm.net")
    (synopsis
     "Read and write IDX data that is used in e.g. the MNIST database.")
    (description
     "This package provides functionality to read and write data in the IDX
binary format. This format is relevant for machine learning applications,
like the MNIST handwritten digit database.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.4-mnist-idx

(define-public haskell-9.4-more-containers
  (package
    (name "haskell-9.4-more-containers")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/mtth/more-containers")
    (synopsis "A few more collections")
    (description "https://github.com/mtth/more-containers")
    (license license:expat)))

haskell-9.4-more-containers

(define-public haskell-9.4-multi-containers
  (package
    (name "haskell-9.4-multi-containers")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/zliu41/multi-containers#readme")
    (synopsis "A few multimap variants.")
    (description "A library that provides a few multimap variants.")
    (license license:bsd-3)))

haskell-9.4-multi-containers

(define-public haskell-9.4-n2o
  (package
    (name "haskell-9.4-n2o")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/xafizoff/n2o#readme")
    (synopsis "Abstract Protocol Loop")
    (description "Embeddable Application Protocol Loop")
    (license license:bsd-3)))

haskell-9.4-n2o

(define-public haskell-9.4-nagios-check
  (package
    (name "haskell-9.4-nagios-check")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-bifunctors)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/olorin/haskell-nagios-check")
    (synopsis "Package for writing monitoring plugins")
    (description "Implements Nagios plugin development guidelines
within a Haskell framework for writing Nagios
checks.")
    (license license:expat)))

haskell-9.4-nagios-check

(define-public haskell-9.4-netpbm
  (package
    (name "haskell-9.4-netpbm")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/netpbm/netpbm-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0728k34q14f3rv6rfln7lh8clb1r7nigxri6fkl4q7dbf6i8n86p"))))
    (properties `((upstream-name . "netpbm") (hidden? . #f)))
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
                     haskell-9.4-attoparsec-binary)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-storable-record)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-vector-th-unbox)))
    (home-page "https://github.com/nh2/haskell-netpbm")
    (synopsis "Loading PBM, PGM, PPM image files")
    (description
     "This package contains pure Haskell parsers for the netpbm image formats: PBM, PGM and PPM, for both ASCII and binary encodings.

All netpbm image formats are implemented (P1 - P6).

The current implementation parses PPM images at around 10 MB/s on a Core i5-2520M.")
    (license license:expat)))

haskell-9.4-netpbm

(define-public haskell-9.4-newtype-generics
  (package
    (name "haskell-9.4-newtype-generics")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "http://github.com/sjakobi/newtype-generics")
    (synopsis "A typeclass and set of functions for working with newtypes")
    (description
     "Per Conor McBride, the Newtype typeclass represents the packing and unpacking of a newtype,
and allows you to operate under that newtype with functions such as ala.
Generics support was added in version 0.4, making this package a full replacement
for the original newtype package, and a better alternative to newtype-th.")
    (license license:bsd-3)))

haskell-9.4-newtype-generics

(define-public haskell-9.4-once
  (package
    (name "haskell-9.4-once")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
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

haskell-9.4-once

(define-public haskell-9.4-openexr-write
  (package
    (name "haskell-9.4-openexr-write")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-vector-split)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "git://klacansky.com/openexr-write.git")
    (synopsis "Library for writing images in OpenEXR HDR file format.")
    (description
     "OpenEXR allows to store pixels as floating point numbers and thus can capture high dynamic range.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.4-openexr-write

(define-public haskell-9.4-optparse-text
  (package
    (name "haskell-9.4-optparse-text")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)))
    (home-page "https://github.com/passy/optparse-text#readme")
    (synopsis "Data.Text helpers for optparse-applicative")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.4-optparse-text

(define-public haskell-9.4-pagination
  (package
    (name "haskell-9.4-pagination")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/mrkkrp/pagination")
    (synopsis "Framework-agnostic pagination boilerplate")
    (description "Framework-agnostic pagination boilerplate.")
    (license license:bsd-3)))

haskell-9.4-pagination

(define-public haskell-9.4-path-pieces
  (package
    (name "haskell-9.4-path-pieces")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/path-pieces")
    (synopsis "Components of paths.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/path-pieces>.")
    (license license:bsd-3)))

haskell-9.4-path-pieces

(define-public haskell-9.4-pava
  (package
    (name "haskell-9.4-pava")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://github.com/dschrempf/pava#readme")
    (synopsis "Greatest convex majorants and least concave minorants")
    (description
     "Please see the README on GitHub at <https://github.com/dschrempf/pava#readme>")
    (license license:gpl3+)))

haskell-9.4-pava

(define-public haskell-9.4-pcre2
  (package
    (name "haskell-9.4-pcre2")
    (version "2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pcre2/pcre2-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0w08a4gzsll0wwwkn2abjvnrxd7y1irv627v4pc5ha4gsrlqd3fl"))))
    (properties `((upstream-name . "pcre2") (hidden? . #f)))
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
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-microlens-platform)))
    (home-page "https://github.com/sjshuck/hs-pcre2#readme")
    (synopsis "Regular expressions via the PCRE2 C library (included)")
    (description
     "Please see the README on GitHub at <https://github.com/sjshuck/hs-pcre2>")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.4-pcre2

(define-public haskell-9.4-pinch
  (package
    (name "haskell-9.4-pinch")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-network-run)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
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

haskell-9.4-pinch

(define-public haskell-9.4-pipes-bytestring
  (package
    (name "haskell-9.4-pipes-bytestring")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-pipes)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-pipes-group)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-pipes-parse)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-stringsearch)))
    (home-page "https://hackage.haskell.org/package/pipes-bytestring")
    (synopsis "ByteString support for pipes")
    (description
     "This library provides @@pipes@@ utilities for @@ByteString@@s")
    (license license:bsd-3)))

haskell-9.4-pipes-bytestring

(define-public haskell-9.4-polysemy-kvstore
  (package
    (name "haskell-9.4-polysemy-kvstore")
    (version "0.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/polysemy-kvstore/polysemy-kvstore-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1w6b1iwfngsilf1inxpg0y159k16ybdlqkdkdkiyjys7wvdgv24d"))))
    (properties `((upstream-name . "polysemy-kvstore") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-polysemy)))
    (home-page "https://hackage.haskell.org/package/polysemy-kvstore")
    (synopsis "KVStore effect for polysemy.")
    (description "KVStore effect for polysemy.")
    (license license:expat)))

haskell-9.4-polysemy-kvstore

(define-public haskell-9.4-polysemy-several
  (package
    (name "haskell-9.4-polysemy-several")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/polysemy-several/polysemy-several-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hbnvvg33nn2lhlpa1x1dzkmc9fcnfkb0fia0aa3pi5l96fsa0nw"))))
    (properties `((upstream-name . "polysemy-several") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-polysemy)))
    (home-page "https://hackage.haskell.org/package/polysemy-several")
    (synopsis "Run several effects at once, taken from the polysemy-zoo.")
    (description "Run several effects at once, taken from the polysemy-zoo.")
    (license license:expat)))

haskell-9.4-polysemy-several

(define-public haskell-9.4-pretty-types
  (package
    (name "haskell-9.4-pretty-types")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)))
    (home-page "https://github.com/sheyll/pretty-types#readme")
    (synopsis "A small pretty printing DSL for complex types.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.4-pretty-types

(define-public haskell-9.4-profiterole
  (package
    (name "haskell-9.4-profiterole")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-ghc-prof)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ndmitchell/profiterole#readme")
    (synopsis "Restructure GHC profile reports")
    (description
     "Given a GHC profile output, this tool generates alternative views on the data,
which are typically more concise and may reveal new insights.")
    (license license:bsd-3)))

haskell-9.4-profiterole

(define-public haskell-9.4-projectroot
  (package
    (name "haskell-9.4-projectroot")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/yamadapc/haskell-projectroot")
    (synopsis "Bindings to the projectroot C logic")
    (description
     "Simple way of finding the root of a project given an
entry-point. This module provides bindings to the
<https://github.com/yamadapc/projectroot projectroot> C library")
    (license license:expat)))

haskell-9.4-projectroot

(define-public haskell-9.4-protobuf-simple
  (package
    (name "haskell-9.4-protobuf-simple")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/protobuf-simple/protobuf-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j4grl8dvzhrj88q2ig6slsdj60lcw29r1ls123zk66fgj19f8l6"))))
    (properties `((upstream-name . "protobuf-simple") (hidden? . #f)))
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
                     haskell-9.4-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/sru-systems/protobuf-simple")
    (synopsis "Simple Protocol Buffers library (proto2)")
    (description
     "
An Haskell implementation of Google's Protocol Buffers version 2 with an
emphasis on simplicity. The implementation consists of a library for
encoding and decoding of data and the `protobuf-simple-protoc` executable
for generating Haskell types from proto files. In fact, the types that are
used in the tests are generated with the following command:

> $ protobuf-simple-protoc data/Types.proto

In the example below, the `CustomType` is a Haskell type that was generated
with the `protobuf-simple-protoc` executable. The `encCustomType` function
encodes a CustomType into a ByteString. The `decCustomType` function
decodes a ByteString into either a CustomType or an error.

> module Codec where
>
> import Data.ByteString.Lazy (ByteString)
> import Data.ProtoBuf (decode, encode)
> import Types.CustomType (CustomType(..))
>
> encCustomType :: CustomType -> ByteString
> encCustomType = encode
>
> decCustomType :: ByteString -> Either String CustomType
> decCustomType = decode

The library exposes two modules, \"Data.ProtoBuf\", which is used for
encoding and decoding and \"Data.ProtoBufInt\", which is an internal module
that is used by the generated types.")
    (license license:expat)))

haskell-9.4-protobuf-simple

(define-public haskell-9.4-protocol-radius-test
  (package
    (name "haskell-9.4-protocol-radius-test")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-protocol-radius)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-quickcheck-simple)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/protocol-radius-test")
    (synopsis "testsuit of protocol-radius haskell package")
    (description "This package provides
testsuit of protocol-radius haskell package.")
    (license license:bsd-3)))

haskell-9.4-protocol-radius-test

(define-public haskell-9.4-pwstore-fast
  (package
    (name "haskell-9.4-pwstore-fast")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-byteable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-cryptohash)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)))
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

haskell-9.4-pwstore-fast

(define-public haskell-9.4-quickcheck-assertions
  (package
    (name "haskell-9.4-quickcheck-assertions")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-ieee754)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-pretty-show)))
    (home-page "https://github.com/s9gf4ult/quickcheck-assertions")
    (synopsis "HUnit like assertions for QuickCheck")
    (description
     "Library with convenient assertions for QuickCheck properties like in HUnit")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.4-quickcheck-assertions

(define-public haskell-9.4-rampart
  (package
    (name "haskell-9.4-rampart")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/rampart")
    (synopsis "Determine how intervals relate to each other.")
    (description "Rampart determines how intervals relate to each other.")
    (license license:expat)))

haskell-9.4-rampart

(define-public haskell-9.4-ramus
  (package
    (name "haskell-9.4-ramus")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-quickcheck-io)))
    (home-page "https://github.com/NickSeagull/ramus#readme")
    (synopsis "Elm signal system for Haskell")
    (description
     "Ramus is a direct port of purescript-signal into Haskell, offering the Elm signal system for Haskell.")
    (license license:expat)))

haskell-9.4-ramus

(define-public haskell-9.4-recv
  (package
    (name "haskell-9.4-recv")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)))
    (home-page "http://github.com/yesodweb/wai")
    (synopsis "Efficient netowrk recv")
    (description "Network recv based on buffer pools")
    (license license:bsd-3)))

haskell-9.4-recv

(define-public haskell-9.4-regex-applicative
  (package
    (name "haskell-9.4-regex-applicative")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-filtrable)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-smallcheck)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-tasty-smallcheck)))
    (home-page "https://github.com/feuerbach/regex-applicative")
    (synopsis "Regex-based parsing with applicative interface")
    (description
     "regex-applicative is a Haskell library for parsing using regular expressions.
Parsers can be built using Applicative interface.")
    (license license:expat)))

haskell-9.4-regex-applicative

(define-public haskell-9.4-replace-attoparsec
  (package
    (name "haskell-9.4-replace-attoparsec")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-parsers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jamesdbrock/replace-attoparsec")
    (synopsis
     "Find, replace, and split string patterns with Attoparsec parsers (instead of regex)")
    (description
     "Find text patterns, replace the patterns, split on the patterns. Use
Attoparsec monadic parsers instead of regular expressions for pattern matching.")
    (license license:bsd-2)))

haskell-9.4-replace-attoparsec

(define-public haskell-9.4-resourcet
  (package
    (name "haskell-9.4-resourcet")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)))
    (home-page "http://github.com/snoyberg/conduit")
    (synopsis "Deterministic allocation and freeing of scarce resources.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/resourcet>.")
    (license license:bsd-3)))

haskell-9.4-resourcet

(define-public haskell-9.4-result
  (package
    (name "haskell-9.4-result")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-bifunctors)
                  (@ (gnu packages stackage ghc-9.4 stage009) haskell-9.4-keys)))
    (home-page "https://github.com/srijs/haskell-result")
    (synopsis "Encode success or at least one error")
    (description "")
    (license license:expat)))

haskell-9.4-result

(define-public haskell-9.4-rfc1751
  (package
    (name "haskell-9.4-rfc1751")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://github.com/xenog/rfc1751.git#readme")
    (synopsis "RFC-1751 library for Haskell")
    (description "Convert 128-bit ByteString to/from 12 English words.")
    (license license:expat)))

haskell-9.4-rfc1751

(define-public haskell-9.4-rot13
  (package
    (name "haskell-9.4-rot13")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/kvanberendonck/codec-rot13")
    (synopsis "Fast ROT13 cipher for Haskell.")
    (description
     "A fast ROT13 cipher for Haskell implemented using as few branches as possible.
For more information on ROT13, see: <https://en.wikipedia.org/wiki/ROT13>")
    (license license:bsd-3)))

haskell-9.4-rot13

(define-public haskell-9.4-rpm-nvr
  (package
    (name "haskell-9.4-rpm-nvr")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.4-rpm-nvr

(define-public haskell-9.4-safe-exceptions
  (package
    (name "haskell-9.4-safe-exceptions")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-void)))
    (home-page "https://github.com/fpco/safe-exceptions#readme")
    (synopsis "Safe, consistent, and easy exception handling")
    (description "Please see README.md")
    (license license:expat)))

haskell-9.4-safe-exceptions

(define-public haskell-9.4-scanner
  (package
    (name "haskell-9.4-scanner")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-fail)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/Yuras/scanner")
    (synopsis
     "Fast non-backtracking incremental combinator parsing for bytestrings")
    (description "Parser combinator library designed to be fast. It doesn't
support backtracking.")
    (license license:bsd-3)))

haskell-9.4-scanner

(define-public haskell-9.4-search-algorithms
  (package
    (name "haskell-9.4-search-algorithms")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/devonhollowood/search-algorithms#readme")
    (synopsis "Common graph search algorithms")
    (description "Library containing common graph search algorithms,
including depth-first and breadth-first searches,
Dijkstra's algorithm, and A*")
    (license license:bsd-3)))

haskell-9.4-search-algorithms

(define-public haskell-9.4-sets
  (package
    (name "haskell-9.4-sets")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-commutative)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-composition)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-contravariant)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009) haskell-9.4-keys)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-witherable)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/athanclark/sets#readme")
    (synopsis "Ducktyped set interface for Haskell containers.")
    (description
     "Please see the README on Github at <https://github.com/athanclark/sets#readme>")
    (license license:bsd-3)))

haskell-9.4-sets

(define-public haskell-9.4-sexp-grammar
  (package
    (name "haskell-9.4-sexp-grammar")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-alex)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-data-fix)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-happy)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-invertible-grammar)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-recursion-schemes)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/esmolanka/sexp-grammar")
    (synopsis "Invertible grammar combinators for S-expressions")
    (description
     "Serialisation to and deserialisation from S-expressions derived from
a single grammar definition.")
    (license license:bsd-3)))

haskell-9.4-sexp-grammar

(define-public haskell-9.4-shellwords
  (package
    (name "haskell-9.4-shellwords")
    (version "0.1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shellwords/shellwords-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1j7skcylpsi4xjh3icp5mvcr1434bcsf8dvha3wd6znn2s2k7wgb"))))
    (properties `((upstream-name . "shellwords") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)))
    (home-page "https://github.com/pbrisbin/hs-shellwords#readme")
    (synopsis "Parse strings into words, like a shell would")
    (description "See https://github.com/pbrisbin/hs-shellwords#readme")
    (license license:expat)))

haskell-9.4-shellwords

(define-public haskell-9.4-should-not-typecheck
  (package
    (name "haskell-9.4-should-not-typecheck")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-hspec-expectations)))
    (home-page "http://github.com/CRogers/should-not-typecheck")
    (synopsis
     "A HUnit/hspec assertion library to verify that an expression does not typecheck")
    (description
     "For examples and an introduction to the library please take a look at the <https://github.com/CRogers/should-not-typecheck#should-not-typecheck- README> on github.")
    (license license:bsd-3)))

haskell-9.4-should-not-typecheck

(define-public haskell-9.4-simple-cmd
  (package
    (name "haskell-9.4-simple-cmd")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/juhp/simple-cmd")
    (synopsis "Simple String-based process commands")
    (description
     "Simple wrappers over System.Process
(readProcess, readProcessWithExitCode, rawSystem, and createProcess).
The idea is to provide some common idioms for calling out to commands
from programs.  For more advanced shell-scripting or streaming
use turtle, shelly, shake, etc.")
    (license license:bsd-3)))

haskell-9.4-simple-cmd

(define-public haskell-9.4-splitmix-distributions
  (package
    (name "haskell-9.4-splitmix-distributions")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-erf)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-splitmix)))
    (home-page "https://github.com/ocramz/splitmix-distributions#readme")
    (synopsis
     "Random samplers for some common distributions, based on splitmix.")
    (description
     "Random samplers for some common distributions, as well as a convenient interface for composing them, based on splitmix. Please see the README on GitHub at <https://github.com/ocramz/splitmix-distributions#readme>")
    (license license:bsd-3)))

haskell-9.4-splitmix-distributions

(define-public haskell-9.4-stateWriter
  (package
    (name "haskell-9.4-stateWriter")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stateWriter/stateWriter-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0l8x758ywgz3c6fhyw1ajaqnq98l2ra39cj4yl2873z89q2cxdlp"))))
    (properties `((upstream-name . "stateWriter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-free)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/stateWriter")
    (synopsis "A faster variant of the RWS monad transformers.")
    (description
     "This is a version of the RWS monad transformers that should be much faster than what's found in transformers. The writer in the strict version does not leak memory.")
    (license license:bsd-3)))

haskell-9.4-stateWriter

(define-public haskell-9.4-stitch
  (package
    (name "haskell-9.4-stitch")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/stitch")
    (synopsis "lightweight CSS DSL")
    (description
     "a tiny css preprocessor dsl for haskell – check out the readme at <https://github.com/intolerable/stitch>")
    (license license:bsd-3)))

haskell-9.4-stitch

(define-public haskell-9.4-stopwatch
  (package
    (name "haskell-9.4-stopwatch")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-clock)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/debug-ito/stopwatch")
    (synopsis "A simple stopwatch utility")
    (description "A simple stopwatch utility")
    (license license:bsd-3)))

haskell-9.4-stopwatch

(define-public haskell-9.4-streaming
  (package
    (name "haskell-9.4-streaming")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-mmorph)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)))
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

haskell-9.4-streaming

(define-public haskell-9.4-streaming-commons
  (package
    (name "haskell-9.4-streaming-commons")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/fpco/streaming-commons")
    (synopsis
     "Common lower-level functions needed by various streaming data libraries")
    (description
     "Provides low-dependency functionality commonly needed by various streaming data libraries, such as conduit and pipes.")
    (license license:expat)))

haskell-9.4-streaming-commons

(define-public haskell-9.4-string-conversions
  (package
    (name "haskell-9.4-string-conversions")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/string-conversions/string-conversions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "150rdank90h7v08x0wq4dffjbxv2daf5v9sqfs5mab76kinwxg26"))))
    (properties `((upstream-name . "string-conversions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1g3wxx579mhs2icxngi78pvjfybbk606a6vgns88pg6ws5hrvx4s")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/soenkehahn/string-conversions#readme")
    (synopsis "Simplifies dealing with different types for strings")
    (description
     "Provides a simple type class for converting values of different string types into values of other string types.")
    (license license:bsd-3)))

haskell-9.4-string-conversions

(define-public haskell-9.4-string-transform
  (package
    (name "haskell-9.4-string-transform")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)))
    (home-page "https://github.com/ncaq/string-transform#readme")
    (synopsis "simple and easy haskell string transform wrapper")
    (description "")
    (license license:expat)))

haskell-9.4-string-transform

(define-public haskell-9.4-stringbuilder
  (package
    (name "haskell-9.4-stringbuilder")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/stringbuilder")
    (synopsis "A writer monad for multi-line string literals")
    (description "<https://github.com/sol/stringbuilder#readme>")
    (license license:expat)))

haskell-9.4-stringbuilder

(define-public haskell-9.4-sysinfo
  (package
    (name "haskell-9.4-sysinfo")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-hspec-expectations)))
    (home-page "https://github.com/psibi/sysinfo#readme")
    (synopsis "Haskell Interface for getting overall system statistics")
    (description "This package can be used to get system statistics like
uptime, free memory, system load etc. Note that
the package works *only* on Linux system with
kernel version >= 2.3.23 and uses FFI calls.")
    (license license:bsd-3)))

haskell-9.4-sysinfo

(define-public haskell-9.4-tasty-hslua
  (package
    (name "haskell-9.4-tasty-hslua")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hslua-core)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hslua.org/")
    (synopsis "Tasty helpers to test HsLua.")
    (description "Various tasty helpers and utilities to test HsLua
oparations. Built on top of tasty-hunit.")
    (license license:expat)))

haskell-9.4-tasty-hslua

(define-public haskell-9.4-tasty-hspec
  (package
    (name "haskell-9.4-tasty-hspec")
    (version "1.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-hspec/tasty-hspec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "150dvscaa0sv5pjsd74mmnp9f0jmz09qs24swz73wwjzrzmnypcx"))))
    (properties `((upstream-name . "tasty-hspec") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-hspec-core)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-tasty-smallcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mitchellwrosen/tasty-hspec")
    (synopsis "Hspec support for the Tasty test framework.")
    (description "This package provides a Tasty provider for Hspec test
suites.")
    (license license:bsd-3)))

haskell-9.4-tasty-hspec

(define-public haskell-9.4-tensors
  (package
    (name "haskell-9.4-tensors")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-reflection)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://github.com/leptonyu/tensors#readme")
    (synopsis "Tensor in Haskell")
    (description "Tensor use type level programming in haskell.")
    (license license:bsd-3)))

haskell-9.4-tensors

(define-public haskell-9.4-text-conversions
  (package
    (name "haskell-9.4-text-conversions")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/cjdev/text-conversions")
    (synopsis "Safe conversions between textual types")
    (description "Safe conversions between textual types")
    (license license:isc)))

haskell-9.4-text-conversions

(define-public haskell-9.4-text-metrics
  (package
    (name "haskell-9.4-text-metrics")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://github.com/mrkkrp/text-metrics")
    (synopsis "Calculate various string metrics efficiently")
    (description "Calculate various string metrics efficiently.")
    (license license:bsd-3)))

haskell-9.4-text-metrics

(define-public haskell-9.4-text-regex-replace
  (package
    (name "haskell-9.4-text-regex-replace")
    (version "0.1.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-regex-replace/text-regex-replace-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jb45mn1szjdg2m46ig2mgd1yfvywpr566zwf0rmw60bmc4zdnhl"))))
    (properties `((upstream-name . "text-regex-replace") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-smallcheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-text-icu)))
    (propagated-inputs (list (@ (gnu packages icu4c) icu4c-71)))
    (home-page "https://hackage.haskell.org/package/text-regex-replace")
    (synopsis "Easy replacement when using text-icu regexes.")
    (description
     "This provides a convenient API for doing replacements off of a regular
expression, similar to what regex libraries in other languages provide.

At this point, this hasn't been used enough to have any idea of its
performance. Caveat emptor.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.4-text-regex-replace

(define-public haskell-9.4-text-zipper
  (package
    (name "haskell-9.4-text-zipper")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://github.com/jtdaugherty/text-zipper/")
    (synopsis "A text editor zipper library")
    (description "This library provides a zipper and API for editing text.")
    (license license:bsd-3)))

haskell-9.4-text-zipper

(define-public haskell-9.4-th-compat
  (package
    (name "haskell-9.4-th-compat")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
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

haskell-9.4-th-compat

(define-public haskell-9.4-th-printf
  (package
    (name "haskell-9.4-th-printf")
    (version "0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-printf/th-printf-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1f9lw0scm2bpnhmhgvywzphxn85ln3xcn8cjyvy8h4cn2ymw4aza"))))
    (properties `((upstream-name . "th-printf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-werror")
       #:cabal-revision
       ("1" "0q9b8xv6qf8yg5c6rn1jgmgwr4ckf4yzd9qv9ysr3c363cgnccyv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-charset)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-integer-logarithms)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-microlens-platform)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-th-lift)))
    (home-page "https://github.com/pikajude/th-printf#readme")
    (synopsis "Quasiquoters for printf")
    (description "Quasiquoters for string and text printf")
    (license license:expat)))

haskell-9.4-th-printf

(define-public haskell-9.4-thread-hierarchy
  (package
    (name "haskell-9.4-thread-hierarchy")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/nshimaza/thread-hierarchy#readme")
    (synopsis "Simple Haskell thread management in hierarchical manner")
    (description
     "Please see the README on GitHub at <https://github.com/nshimaza/thread-hierarchy#readme>")
    (license license:expat)))

haskell-9.4-thread-hierarchy

(define-public haskell-9.4-time-parsers
  (package
    (name "haskell-9.4-time-parsers")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-parsers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/phadej/time-parsers#readme")
    (synopsis "Parsers for types in `time`.")
    (description
     "Parsers for types in `time` using 'parser' library.

Originally forked from aeson parsers.

See also <http://hackage.haskell.org/package/attoparsec-iso8601 attoparsec-iso-8601> package.")
    (license license:bsd-3)))

haskell-9.4-time-parsers

(define-public haskell-9.4-timerep
  (package
    (name "haskell-9.4-timerep")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-monoid-subclasses)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
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

haskell-9.4-timerep

(define-public haskell-9.4-timers-tick
  (package
    (name "haskell-9.4-timers-tick")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "http://ariis.it/static/articles/timers-tick/page.html")
    (synopsis "tick based timers")
    (description "Tick-based timers and utilities, for games and
discrete-time programs.
Includes types and functions to work with sequence-based
resources (e.g. animations, frames).")
    (license license:bsd-3)))

haskell-9.4-timers-tick

(define-public haskell-9.4-tophat
  (package
    (name "haskell-9.4-tophat")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages bioinformatics) tophat)))
    (home-page "https://github.com/jcranch/tophat")
    (synopsis "Template-to-Haskell preprocessor, and templating language")
    (description "Please see README.md")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-tophat

(define-public haskell-9.4-trimdent
  (package
    (name "haskell-9.4-trimdent")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-hspec-expectations-pretty-diff)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-raw-strings-qq)))
    (home-page "https://github.com/gregorias/trimdent#readme")
    (synopsis "A utility for neat multiline string trimming")
    (description
     "Please see the README on GitHub at <https://github.com/gregorias/trimdent#readme>")
    (license (license "FSDG-compatible" "AGPL" ""))))

haskell-9.4-trimdent

(define-public haskell-9.4-type-of-html
  (package
    (name "haskell-9.4-type-of-html")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-double-conversion)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/knupfer/type-of-html")
    (synopsis "High performance type driven html generation.")
    (description
     "This library makes most invalid html documents compile time errors and uses advanced type level features to realise compile time computations.")
    (license license:bsd-3)))

haskell-9.4-type-of-html

(define-public haskell-9.4-typed-process
  (package
    (name "haskell-9.4-typed-process")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)))
    (home-page "https://github.com/fpco/typed-process")
    (synopsis "Run external processes, with strong typing of streams")
    (description
     "Please see the tutorial at <https://github.com/fpco/typed-process#readme>")
    (license license:expat)))

haskell-9.4-typed-process

(define-public haskell-9.4-typenums
  (package
    (name "haskell-9.4-typenums")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/adituv/typenums#readme")
    (synopsis "Type level numbers using existing Nat functionality")
    (description
     "Type level numbers using existing Nat functionality. Uses kind-polymorphic typeclasses and type families to facilitate more general code compatible with existing code using type-level Naturals.")
    (license license:bsd-3)))

haskell-9.4-typenums

(define-public haskell-9.4-ulid
  (package
    (name "haskell-9.4-ulid")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-crypto-api)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)))
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

haskell-9.4-ulid

(define-public haskell-9.4-unicode-data
  (package
    (name "haskell-9.4-unicode-data")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
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

haskell-9.4-unicode-data

(define-public haskell-9.4-unidecode
  (package
    (name "haskell-9.4-unidecode")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/mwotton/unidecode#readme")
    (synopsis "Haskell binding of Unidecode")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.4-unidecode

(define-public haskell-9.4-unix-compat
  (package
    (name "haskell-9.4-unix-compat")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unix-compat/unix-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1y6m8ix8np6vambabdaj2h7ydgda8igwy3kliv53mba3clx85kdl"))))
    (properties `((upstream-name . "unix-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-old-time")
       #:cabal-revision
       ("1" "0g5mi6rh977idajgxnnlsd7dp28vf4xwiiwpsc4pj1rqv0lhjp8g")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-monad-parallel)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/jacobstanley/unix-compat")
    (synopsis "Portable POSIX-compatibility layer.")
    (description "This package provides portable implementations of parts
of the unix package. This package re-exports the unix
package when available. When it isn't available,
portable implementations are used.")
    (license license:bsd-3)))

haskell-9.4-unix-compat

(define-public haskell-9.4-unix-time
  (package
    (name "haskell-9.4-unix-time")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hsc2hs)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-old-locale)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-old-time)))
    (home-page "https://hackage.haskell.org/package/unix-time")
    (synopsis "Unix time parser/formatter and utilities")
    (description "Fast parser\\/formatter\\/utilities for Unix time")
    (license license:bsd-3)))

haskell-9.4-unix-time

(define-public haskell-9.4-valida
  (package
    (name "haskell-9.4-valida")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
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
    (home-page "https://github.com/TotallyNotChase/valida#readme")
    (synopsis
     "Simple applicative validation for product types, batteries included!")
    (description
     "This package provides an applicative validator with support for contravariance. This makes building validators for product types idiomatic and simple. Many common utilities for building validators are also included.")
    (license license:expat)))

haskell-9.4-valida

(define-public haskell-9.4-valida-base
  (package
    (name "haskell-9.4-valida-base")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
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
    (home-page "https://github.com/TotallyNotChase/valida-base#readme")
    (synopsis
     "Simple applicative validation for product types, batteries included!")
    (description
     "This is a zero dependency version of the valida package. It is equivalent to valida == 0.1.0. Check out the README at github <https://github.com/TotallyNotChase/valida-base#readme>!")
    (license license:expat)))

haskell-9.4-valida-base

(define-public haskell-9.4-validity
  (package
    (name "haskell-9.4-validity")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
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

haskell-9.4-validity

(define-public haskell-9.4-valor
  (package
    (name "haskell-9.4-valor")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/mastarija/valor#readme")
    (synopsis "Simple and powerful data validation")
    (description "Simple and powerful data validation library with
Applicative and Monad interface. Great for constructing
structured errors.")
    (license license:expat)))

haskell-9.4-valor

(define-public haskell-9.4-vcs-ignore
  (package
    (name "haskell-9.4-vcs-ignore")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Glob)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)))
    (home-page "https://github.com/vaclavsvejcar/vcs-ignore")
    (synopsis "Library for handling files ignored by VCS systems.")
    (description
     "vcs-ignore is small Haskell library used to find, check and process files ignored by selected VCS.")
    (license license:bsd-3)))

haskell-9.4-vcs-ignore

(define-public haskell-9.4-wave
  (package
    (name "haskell-9.4-wave")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)))
    (home-page "https://github.com/mrkkrp/wave")
    (synopsis "Work with WAVE and RF64 files")
    (description "Work with WAVE and RF64 files.")
    (license license:bsd-3)))

haskell-9.4-wave

(define-public haskell-9.4-with-location
  (package
    (name "haskell-9.4-with-location")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/sol/with-location#readme")
    (synopsis
     "Use ImplicitParams-based source locations in a backward compatible way")
    (description "")
    (license license:expat)))

haskell-9.4-with-location

(define-public haskell-9.4-word-trie
  (package
    (name "haskell-9.4-word-trie")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/yi-editor/word-trie")
    (synopsis "Implementation of a finite trie over words.")
    (description "Implementation of a finite trie over words.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-word-trie

(define-public haskell-9.4-word-wrap
  (package
    (name "haskell-9.4-word-wrap")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/jtdaugherty/word-wrap/")
    (synopsis "A library for word-wrapping")
    (description "A library for wrapping long lines of text.")
    (license license:bsd-3)))

haskell-9.4-word-wrap

(define-public haskell-9.4-word8
  (package
    (name "haskell-9.4-word8")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/word8")
    (synopsis "Word8 library")
    (description "Word8 library to be used with Data.ByteString")
    (license license:bsd-3)))

haskell-9.4-word8

(define-public haskell-9.4-x509-store
  (package
    (name "haskell-9.4-x509-store")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-asn1-encoding)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-asn1-types)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-pem)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage009) haskell-9.4-x509)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/vincenthz/hs-certificate")
    (synopsis "X.509 collection accessing and storing methods")
    (description
     "X.509 collection accessing and storing methods for certificate, crl, exception list")
    (license license:bsd-3)))

haskell-9.4-x509-store

(define-public haskell-9.4-xmlhtml
  (package
    (name "haskell-9.4-xmlhtml")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-blaze-markup)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-bytestring-builder)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
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

haskell-9.4-xmlhtml

(define-public haskell-9.4-xxhash-ffi
  (package
    (name "haskell-9.4-xxhash-ffi")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/haskell-haskey/xxhash-ffi#readme")
    (synopsis "Bindings to the C implementation the xxHash algorithm")
    (description
     "Bindings to the C implementation the xxHash algorithm. xxHash provides 32-bit and 64-bit extremely fast non-cryptographic hash functions.")
    (license license:bsd-3)))

haskell-9.4-xxhash-ffi

(define-public haskell-9.4-yes-precure5-command
  (package
    (name "haskell-9.4-yes-precure5-command")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)))
    (home-page "https://github.com/igrep/yes-precure5-command/")
    (synopsis "Extended yes command to reproduce phrases in Yes! Precure 5.")
    (description
     "Provides extended yes command to reproduce phrases in Yes! Precure 5 or Yes! PreCure5 GoGo!

See <https://github.com/igrep/yes-precure5-command/blob/master/README.mkd> for details.")
    (license license:expat)))

haskell-9.4-yes-precure5-command

(define-public haskell-9.4-yi-rope
  (package
    (name "haskell-9.4-yi-rope")
    (version "0.11")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/yi-rope/yi-rope-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "020hnyhl2g313ch6dng9lq3xdjy3ssnb069wiwzbpg816mlii4ws"))))
    (properties `((upstream-name . "yi-rope") (hidden? . #f)))
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
                     haskell-9.4-fingertree)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/yi-rope")
    (synopsis "A rope data structure used by Yi")
    (description "A rope data structure used by Yi")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-yi-rope

(define-public haskell-9.4-zlib-bindings
  (package
    (name "haskell-9.4-zlib-bindings")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/snapframework/zlib-bindings")
    (synopsis "Low-level bindings to the zlib package.")
    (description "Low-level bindings to the zlib package.")
    (license license:bsd-3)))

haskell-9.4-zlib-bindings

