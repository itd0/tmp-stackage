;;; generated file
(define-module (gnu packages stackage ghc-9.0 stage015)
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
(define-public haskell-9.0-BNFC
  (package
    (name "haskell-9.0-BNFC")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-alex)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-happy)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-string-qq)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)))
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

haskell-9.0-BNFC

(define-public haskell-9.0-ClustalParser
  (package
    (name "haskell-9.0-ClustalParser")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cmdargs)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-either-unwrap)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
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

haskell-9.0-ClustalParser

(define-public haskell-9.0-HasBigDecimal
  (package
    (name "haskell-9.0-HasBigDecimal")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HasBigDecimal/HasBigDecimal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ddyngd1mrx9s11nm7sh0nh76zi1zi7yjzmqk7xbpv6ijqka050a"))))
    (properties `((upstream-name . "HasBigDecimal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/thma/HasBigDecimal#readme")
    (synopsis "A library for arbitrary precision decimal numbers.")
    (description
     "A native Haskell implementation of arbitrary precicion decimal numbers, based on Haskell Integers. Inspired by Java BigDecimals")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.0-HasBigDecimal

(define-public haskell-9.0-JuicyPixels-extra
  (package
    (name "haskell-9.0-JuicyPixels-extra")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/mrkkrp/JuicyPixels-extra")
    (synopsis "Efficiently scale, crop, flip images with JuicyPixels")
    (description "Efficiently scale, crop, flip images with JuicyPixels.")
    (license license:bsd-3)))

haskell-9.0-JuicyPixels-extra

(define-public haskell-9.0-PyF
  (package
    (name "haskell-9.0-PyF")
    (version "0.10.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/PyF/PyF-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0a1bq7c3vx6yp7745xr2vlxjsqgqa0s1f7yzqnfsybqwff03zbcw"))))
    (properties `((upstream-name . "PyF") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-python_test")
       #:cabal-revision
       ("1" "0hinbn56d8bw45zxazpmgv1b6lcmlcys9jfdkv2lyr5j44pzpvvj")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)))
    (home-page "https://hackage.haskell.org/package/PyF")
    (synopsis
     "Quasiquotations for a python like interpolated string formatter")
    (description
     "Quasiquotations for a python like interpolated string formatter.")
    (license license:bsd-3)))

haskell-9.0-PyF

(define-public haskell-9.0-ViennaRNAParser
  (package
    (name "haskell-9.0-ViennaRNAParser")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-ParsecTools)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/ViennaRNAParser")
    (synopsis "Libary for parsing ViennaRNA package output")
    (description
     "Currently contains parsers and datatypes for: RNAalifold, RNAcode, RNAdistance, RNAcofold, RNAfold, RNAplex, RNAup, RNAz.

For more information on the ViennaRNA package refer to <http://www.tbi.univie.ac.at/RNA/>.

The libary is tested with Version 2.3.2 of the ViennaRNA package.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-ViennaRNAParser

(define-public haskell-9.0-ace
  (package
    (name "haskell-9.0-ace")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ace/ace-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0f07j2rj9ylvdrijwwlpx66mj503mhjfq1x2mylpxkr6kmjjniyk"))))
    (properties `((upstream-name . "ace") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-bifunctors)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-blaze-markup)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/ace")
    (synopsis "Attempto Controlled English parser and printer")
    (description
     "Attempto Controlled English is a formally defined unambiguous language which
is a subset of the English language. This package provides a tokenizer,
parser and printer for that language. Specifically, it implements the
declarative mood and the interrogative mood.
The imperative mood is omitted at this time. Interpretation rules,
conversion to FoL, or any further analysis is not implemented by this
library.")
    (license license:bsd-3)))

haskell-9.0-ace

(define-public haskell-9.0-adler32
  (package
    (name "haskell-9.0-adler32")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
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

haskell-9.0-adler32

(define-public haskell-9.0-alarmclock
  (package
    (name "haskell-9.0-alarmclock")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-clock)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unbounded-delays)))
    (home-page "https://github.com/DaveCTurner/alarmclock")
    (synopsis "Wake up and perform an action at a certain time.")
    (description
     "Please see the README at <https://github.com/DaveCTurner/alarmclock/blob/master/README.md>")
    (license license:bsd-3)))

haskell-9.0-alarmclock

(define-public haskell-9.0-align-audio
  (package
    (name "haskell-9.0-align-audio")
    (version "0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/align-audio/align-audio-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sa7q5fzkc0z4vzibs5l21pvrkil0swdpbl27qn30vb6giy3yh7a"))))
    (properties `((upstream-name . "align-audio") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-blas")
       #:cabal-revision
       ("1" "1599vbnfalrnq0zgwmh47k62y9yq30agpjyyfwdzxzszhc0vfq6n")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-Stream)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-comfort-array)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-comfort-fftw)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-netlib-ffi)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-numeric-prelude)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-shell-utility)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-soxlib)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-storablevector)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-synthesizer-core)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "https://hackage.haskell.org/package/align-audio")
    (synopsis
     "Find relative time displacement of two recordings of the same music")
    (description "Say, you have a video with some background music
and a clean recording of the background music.
You want to know exact displacement of the background music.
This program should find it.

> align-audio orig.wav video.wav

The program actually performs a simple correlation.

The program can handle sources of different sample rates
if the sample rates are integers.")
    (license license:bsd-3)))

haskell-9.0-align-audio

(define-public haskell-9.0-app-settings
  (package
    (name "haskell-9.0-app-settings")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
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

haskell-9.0-app-settings

(define-public haskell-9.0-appendmap
  (package
    (name "haskell-9.0-appendmap")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/koterpillar/appendmap#readme")
    (synopsis
     "Map with a Semigroup and Monoid instances delegating to Semigroup of the elements")
    (description
     "Please see the README on GitHub at <https://github.com/koterpillar/appendmap#readme>")
    (license license:bsd-3)))

haskell-9.0-appendmap

(define-public haskell-9.0-ascii-progress
  (package
    (name "haskell-9.0-ascii-progress")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-concurrent-output)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/yamadapc/haskell-ascii-progress")
    (synopsis "A simple progress bar for the console.")
    (description
     "A simple Haskell progress bar for the console. Heavily borrows from TJ
Holowaychuk's Node.JS project
<https://github.com/tj/node-progress progress>

<https://github.com/yamadapc/haskell-ascii-progress github>")
    (license license:expat)))

haskell-9.0-ascii-progress

(define-public haskell-9.0-asn1-parse
  (package
    (name "haskell-9.0-asn1-parse")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-asn1-encoding)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-asn1-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/vincenthz/hs-asn1")
    (synopsis "Simple monadic parser for ASN1 stream types.")
    (description
     "Simple monadic parser for ASN1 stream types, when ASN1 pattern matching is not convenient.")
    (license license:bsd-3)))

haskell-9.0-asn1-parse

(define-public haskell-9.0-async-pool
  (package
    (name "haskell-9.0-async-pool")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-fgl)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)))
    (home-page "https://hackage.haskell.org/package/async-pool")
    (synopsis
     "A modified version of async that supports worker groups and many-to-many task dependencies")
    (description
     "This library modifies the @@async@@ package to allow for task pooling and
many-to-many dependencies between tasks.")
    (license license:expat)))

haskell-9.0-async-pool

(define-public haskell-9.0-atomic-write
  (package
    (name "haskell-9.0-atomic-write")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unix-compat)))
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

haskell-9.0-atomic-write

(define-public haskell-9.0-bank-holidays-england
  (package
    (name "haskell-9.0-bank-holidays-england")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/DaveCTurner/bank-holidays-england")
    (synopsis "Calculation of bank holidays in England and Wales")
    (description
     "Calculation of bank holidays in England and Wales, using the rules that have
been in place since 1978, and including all exceptions to the rules in the
years 1995 to 2020.")
    (license license:bsd-3)))

haskell-9.0-bank-holidays-england

(define-public haskell-9.0-base-compat-batteries
  (package
    (name "haskell-9.0-base-compat-batteries")
    (version "0.11.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base-compat-batteries/base-compat-batteries-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08rh9nlm9ir28fm42xim06ga8qwdqdcvkbb5ckz99bwnmajndq1i"))))
    (properties `((upstream-name . "base-compat-batteries") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
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

haskell-9.0-base-compat-batteries

(define-public haskell-9.0-bbdb
  (package
    (name "haskell-9.0-bbdb")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
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

haskell-9.0-bbdb

(define-public haskell-9.0-bencode
  (package
    (name "haskell-9.0-bencode")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)))
    (home-page "https://hackage.haskell.org/package/bencode")
    (synopsis "Parsers and printers for bencoded data.")
    (description
     "Parsers and printers for bencoded data. Bencode (pronounced like B
encode) is the encoding used by the peer-to-peer file sharing system
BitTorrent for storing and transmitting loosely structured data.")
    (license license:bsd-3)))

haskell-9.0-bencode

(define-public haskell-9.0-bencoding
  (package
    (name "haskell-9.0-bencoding")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/sergv/bencoding")
    (synopsis "A library for encoding and decoding of BEncode data.")
    (description
     "A library for fast and easy encoding and decoding of BEncode data.")
    (license license:bsd-3)))

haskell-9.0-bencoding

(define-public haskell-9.0-binary-parsers
  (package
    (name "haskell-9.0-binary-parsers")
    (version "0.2.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-parsers/binary-parsers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jmr9djkp9ndysly8g1najzy38xhjpflri5jkwlyfnd2vk9x74yi"))))
    (properties `((upstream-name . "binary-parsers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-bytestring-lexing)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/winterland1989/binary-parsers")
    (synopsis
     "Extends binary with parsec/attoparsec style parsing combinators.")
    (description
     "Extends binary with parsec/attoparsec style parsing combinators.")
    (license license:bsd-3)))

haskell-9.0-binary-parsers

(define-public haskell-9.0-bits
  (package
    (name "haskell-9.0-bits")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bits/bits-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "18s2aa99cwcshcws2zl2ll7xgqn9dpznpkv1nplamc9h4vmqqs93"))))
    (properties `((upstream-name . "bits") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1f118vwwskai74l6wn5sfy002k241qv1rhpsahphfr58llzgvv50")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-bytes)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/bits")
    (synopsis "Various bit twiddling and bitwise serialization primitives")
    (description "Various bit twiddling and bitwise serialization primitives.")
    (license license:bsd-3)))

haskell-9.0-bits

(define-public haskell-9.0-bitset-word8
  (package
    (name "haskell-9.0-bitset-word8")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-th-lift-instances)))
    (home-page "https://github.com/nshimaza/bitset-word8#readme")
    (synopsis
     "Space efficient set of Word8 and some pre-canned sets useful for parsing HTTP")
    (description
     "Please see the README on GitHub at <https://github.com/nshimaza/bitset-word8#readme>")
    (license license:expat)))

haskell-9.0-bitset-word8

(define-public haskell-9.0-blas-comfort-array
  (package
    (name "haskell-9.0-blas-comfort-array")
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
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-blas-ffi)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-comfort-array)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-netlib-comfort-array)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-netlib-ffi)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-storable-complex)))
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

haskell-9.0-blas-comfort-array

(define-public haskell-9.0-boots
  (package
    (name "haskell-9.0-boots")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/leptonyu/boots#readme")
    (synopsis "IoC Monad in Haskell")
    (description
     "Monad used to encapsulate components, similiar to an IoC container.")
    (license license:expat)))

haskell-9.0-boots

(define-public haskell-9.0-bordacount
  (package
    (name "haskell-9.0-bordacount")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/hverr/bordacount#readme")
    (synopsis "Implementation of the Borda count election method.")
    (description
     "Implementation of the Borda count election method, optionally with
different weights for different participants.

See <https://en.wikipedia.org/wiki/Borda_count>")
    (license license:bsd-3)))

haskell-9.0-bordacount

(define-public haskell-9.0-burrito
  (package
    (name "haskell-9.0-burrito")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
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

haskell-9.0-burrito

(define-public haskell-9.0-cache
  (package
    (name "haskell-9.0-cache")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-clock)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hverr/haskell-cache#readme")
    (synopsis "An in-memory key/value store with expiration support")
    (description
     "An in-memory key/value store with expiration support, similar
to patrickmn/go-cache for Go.

The cache is a shared mutable HashMap implemented using STM and
with support for expiration times.")
    (license license:bsd-3)))

haskell-9.0-cache

(define-public haskell-9.0-can-i-haz
  (package
    (name "haskell-9.0-can-i-haz")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/0xd34df00d/can-i-haz#readme")
    (synopsis "Generic implementation of the Has and CoHas patterns")
    (description
     "Please see the README on GitHub at <https://github.com/0xd34df00d/can-i-haz#readme>")
    (license license:bsd-3)))

haskell-9.0-can-i-haz

(define-public haskell-9.0-checkers
  (package
    (name "haskell-9.0-checkers")
    (version "0.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/checkers/checkers-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1r4rsa4k0fy8xig3m530ryflry9viv9v47g4gh7h0ld27rbd6z60"))))
    (properties `((upstream-name . "checkers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-checkers/checkers")
    (synopsis "Check properties on standard classes and data structures.")
    (description
     "''Checkers'' wraps up the expected properties associated with various
standard type classes as QuickCheck properties.  Also some morphism
properties.  It also provides arbitrary instances and generator combinators
for common data types.

&#169; 2008-2013 by Conal Elliott; BSD3 license.")
    (license license:bsd-3)))

haskell-9.0-checkers

(define-public haskell-9.0-clientsession
  (package
    (name "haskell-9.0-clientsession")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-cipher-aes)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-cprng-aes)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-crypto-api)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-crypto-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-entropy)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-setenv)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-skein)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)))
    (home-page "http://github.com/yesodweb/clientsession/tree/master")
    (synopsis "Securely store session data in a client-side cookie.")
    (description "Achieves security through AES-CTR encryption and
Skein-MAC-512-256 authentication.  Uses Base64
encoding to avoid any issues with characters.")
    (license license:expat)))

haskell-9.0-clientsession

(define-public haskell-9.0-commutative
  (package
    (name "haskell-9.0-commutative")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/commutative/commutative-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0scrc0bwa3ggvhmhmj0pvi7q7sbm495nc8m30jjjcp5wbd26mg6c"))))
    (properties `((upstream-name . "commutative") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/athanclark/commutative#readme")
    (synopsis "Commutative binary operations.")
    (description
     "Please see the README on Github at <https://github.com/athanclark/commutative#readme>")
    (license license:bsd-3)))

haskell-9.0-commutative

(define-public haskell-9.0-comonad-extras
  (package
    (name "haskell-9.0-comonad-extras")
    (version "4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/comonad-extras/comonad-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vsxxgqsiizprm2xxjks1n77mlx5rb9ybx36ag49fkzyb01rbb34"))))
    (properties `((upstream-name . "comonad-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-distributive)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/comonad-extras/")
    (synopsis "Exotic comonad transformers")
    (description "Exotic comonad transformers")
    (license license:bsd-3)))

haskell-9.0-comonad-extras

(define-public haskell-9.0-compactmap
  (package
    (name "haskell-9.0-compactmap")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://hackage.haskell.org/package/compactmap")
    (synopsis "A read-only memory-efficient key-value store.")
    (description "")
    (license license:bsd-3)))

haskell-9.0-compactmap

(define-public haskell-9.0-conferer
  (package
    (name "haskell-9.0-conferer")
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
       ("2" "0j7q975kg4dchl7pn8cl26sf8945bmhw5mvy73s18ylxqx4qqkwb")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://conferer.ludat.io")
    (synopsis "Configuration management library")
    (description
     "Library to abstract the parsing of many haskell config values from different config sources")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-9.0-conferer

(define-public haskell-9.0-configurator-export
  (package
    (name "haskell-9.0-configurator-export")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-configurator)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
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

haskell-9.0-configurator-export

(define-public haskell-9.0-constraints
  (package
    (name "haskell-9.0-constraints")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-type-equality)))
    (home-page "http://github.com/ekmett/constraints/")
    (synopsis "Constraint manipulation")
    (description
     "GHC 7.4 gave us the ability to talk about @@ConstraintKinds@@. They stopped crashing the compiler in GHC 7.6.

This package provides a vocabulary for working with them.")
    (license license:bsd-2)))

haskell-9.0-constraints

(define-public haskell-9.0-crc32c
  (package
    (name "haskell-9.0-crc32c")
    (version "0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/crc32c/crc32c-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1y008mi1livbm6rpc4rj4nnrkwqqm7xk92sdf14r5iqwj8nnh209"))))
    (properties `((upstream-name . "crc32c") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage004) haskell-9.0-c2hs)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-hspec-core)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://github.com/leptonyu/crc32c#readme")
    (synopsis "Haskell bindings for crc32c")
    (description "")
    (license license:bsd-3)))

haskell-9.0-crc32c

(define-public haskell-9.0-crypt-sha512
  (package
    (name "haskell-9.0-crypt-sha512")
    (version "0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/crypt-sha512/crypt-sha512-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wsma9frdrn39i506zydlzlk1ir6jh1pidqfjms8rwqjpx965gn2"))))
    (properties `((upstream-name . "crypt-sha512") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("8" "09fj4nghk80l8pqxjiddw0v8frwg46v5izkjsx2jvk1ksh6cif2b")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cryptohash-sha512)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages crypto) libxcrypt)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/phadej/crypt-sha512")
    (synopsis "Pure Haskell implelementation for GNU SHA512 crypt algorithm")
    (description
     "crypt() is the password encryption function.  It is based on the Data
Encryption Standard algorithm with variations intended (among other things) to
discourage use of hardware implementations of a key search.

This package provides a pure Haskell implementation of SHA512 crypt scheme.")
    (license license:bsd-3)))

haskell-9.0-crypt-sha512

(define-public haskell-9.0-crypto-pubkey-types
  (package
    (name "haskell-9.0-crypto-pubkey-types")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-asn1-encoding)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-asn1-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/vincenthz/hs-crypto-pubkey-types")
    (synopsis "Generic cryptography Public keys algorithm types")
    (description "Generic cryptography public keys algorithm types")
    (license license:bsd-3)))

haskell-9.0-crypto-pubkey-types

(define-public haskell-9.0-currencies
  (package
    (name "haskell-9.0-currencies")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/alx741/currencies#readme")
    (synopsis "Currencies representation, pretty printing and conversion")
    (description
     "ISO 4217 Currencies representation, pretty printing and conversion:

* Represent monetary amounts of a particular currency in a type-safe manner

* Convert amounts between different currencies

* Print human readable amounts")
    (license license:bsd-3)))

haskell-9.0-currencies

(define-public haskell-9.0-data-default-extra
  (package
    (name "haskell-9.0-data-default-extra")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-default-extra/data-default-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1yg5vvapyj91b0iqi374rali3gbfn9y5g8fr6rbn3bkgwxxarskz"))))
    (properties `((upstream-name . "data-default-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fwith-bytestring" "-fwith-case-insensitive" "-fwith-containers" "-f-with-dlist" "-fwith-text" "-fwith-old-locale" "-fwith-unordered-containers" "-fwith-vector")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-data-default-instances-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-data-default-instances-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-data-default-instances-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-data-default-instances-new-base)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-data-default-instances-old-locale)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-data-default-instances-text)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-data-default-instances-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-data-default-instances-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/trskop/data-default-extra")
    (synopsis "A class for types with a default value.")
    (description
     "An alternative to
<https://hackage.haskell.org/package/data-default data-default> package, that
provides a lot of additional instances for @@Default@@ type class.

@@Default@@ type class provides a default value (@@def@@) of a type. In case when
a particluar type has an instance for @@Monoid@@, then the default value should
be @@mempty@@, otherwise it can cause a great deal of confusion.

One must understand, that @@Default@@ type class, has no axioms associated with
it. Its purpose is to minimize:

* Number of imports.

* Number of introduced definitions that are part of an API.

* Complexity of building more complicated \\\"default values\\\" out of
simpler \\\"default values\\\".

* Cognitive overhead. (Reduction of cognitive overhead is partially a
consequence of reducing above issues.)

As one may notice, most of the listed problems, that @@Default@@ type class
tries to solve, to various degrees of success, are for human benefit, and not
theoretically founded. Because of this, please always try hard to define
sensible instances of @@Default@@. Most importantly, document what @@def@@ means
for particular type, and always check that @@def@@ is sensible, by testing it
on a real world sample of human beings, one is not a big enough sample.

That said, using @@Default@@ may not always be a good idea. If it breaks
people's mental model, or theoretical models with real axioms, then just
don't use it.")
    (license license:bsd-3)))

haskell-9.0-data-default-extra

(define-public haskell-9.0-data-msgpack-types
  (package
    (name "haskell-9.0-data-msgpack-types")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://msgpack.org/")
    (synopsis "A Haskell implementation of MessagePack.")
    (description
     "A Haskell implementation of MessagePack <http://msgpack.org/>

This is a fork of msgpack-haskell <https://github.com/msgpack/msgpack-haskell>,
since the original author is unreachable. This fork incorporates a number of
bugfixes and is actively being developed.")
    (license license:bsd-3)))

haskell-9.0-data-msgpack-types

(define-public haskell-9.0-data-reify
  (package
    (name "haskell-9.0-data-reify")
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
       ("1" "137z993v7af9ym468vprys09416c7l7pys5hrng7k5vafga73y3b")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
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

haskell-9.0-data-reify

(define-public haskell-9.0-dense-linear-algebra
  (package
    (name "haskell-9.0-dense-linear-algebra")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-math-functions)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-vector-algorithms)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-vector-binary-instances)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-vector-th-unbox)))
    (home-page "https://hackage.haskell.org/package/dense-linear-algebra")
    (synopsis
     "Simple and incomplete pure haskell implementation of linear algebra")
    (description
     "This library is simply collection of linear-algebra related modules
split from statistics library.")
    (license license:bsd-2)))

haskell-9.0-dense-linear-algebra

(define-public haskell-9.0-depq
  (package
    (name "haskell-9.0-depq")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-psqueues)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ocramz/depq")
    (synopsis "Double-ended priority queues")
    (description
     "Double-ended priority queues, for efficient retrieval of minimum and maximum elements in ordered collections of items.")
    (license license:bsd-3)))

haskell-9.0-depq

(define-public haskell-9.0-deriving-compat
  (package
    (name "haskell-9.0-deriving-compat")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/deriving-compat/deriving-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09lxms6220saycra4kpxihwa7zh253zmv1zpa41dbnhgffxs3zbb"))))
    (properties `((upstream-name . "deriving-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbase-4-9" "-ftemplate-haskell-2-11" "-fnew-functor-classes")
       #:cabal-revision
       ("1" "0m3ywfvj96yqrdyv6mgnmdhlsvjjn89wl0n1n7v2m60zaan14cgh")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-orphans)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-th-abstraction)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-void)))
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

haskell-9.0-deriving-compat

(define-public haskell-9.0-dlist-nonempty
  (package
    (name "haskell-9.0-dlist-nonempty")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dlist-nonempty/dlist-nonempty-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0csbspdy43pzvasb5mhs5pz2f49ws78pi253cx7pp84wjx6ads20"))))
    (properties `((upstream-name . "dlist-nonempty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("13" "1hbd0j8yw81y4rnxqxxnvhy33ccgl5c7qcr9shzqy97fwi2vkikm")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/phadej/dlist-nonempty")
    (synopsis "Non-empty difference lists")
    (description
     "Difference lists are a list-like type supporting O(1) append. This is
particularly useful for efficient logging and pretty printing (e.g. with the
Writer monad), where list append quickly becomes too expensive.

> DList a         ≅ [a] -> [a]
> NonEmptyDList a ≅ [a] -> NonEmpty a

For empty variant, @@DList@@, see <http://hackage.haskell.org/package/dlist dlist package>.")
    (license license:bsd-3)))

haskell-9.0-dlist-nonempty

(define-public haskell-9.0-do-list
  (package
    (name "haskell-9.0-do-list")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/tserduke/do-list#readme")
    (synopsis "Do notation for free")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.0-do-list

(define-public haskell-9.0-dockerfile
  (package
    (name "haskell-9.0-dockerfile")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/creichert/dockerfile#readme")
    (synopsis "A Haskell DSL for generating Dockerfiles")
    (description "")
    (license license:expat)))

haskell-9.0-dockerfile

(define-public haskell-9.0-dvorak
  (package
    (name "haskell-9.0-dvorak")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/kvanberendonck/codec-dvorak")
    (synopsis "Dvorak encoding for Haskell.")
    (description "")
    (license license:bsd-3)))

haskell-9.0-dvorak

(define-public haskell-9.0-edit-distance-vector
  (package
    (name "haskell-9.0-edit-distance-vector")
    (version "1.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/edit-distance-vector/edit-distance-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07qgc8dyi9kkzkd3xcd78wdlljy0xwhz65b4r2qg2piidpcdvpxp"))))
    (properties `((upstream-name . "edit-distance-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/thsutton/edit-distance-vector")
    (synopsis "Calculate edit distances and edit scripts between vectors.")
    (description
     "An implementation of the Wagner–Fischer dynamic programming algorithm to
find the optimal edit script and cost between two sequences.

The implementation in this package is specialised to sequences represented
with \"Data.Vector\" but is otherwise agnostic to:

* The type of values in the vectors;

* The type representing edit operations; and

* The type representing the cost of operations.
")
    (license license:bsd-3)))

haskell-9.0-edit-distance-vector

(define-public haskell-9.0-either
  (package
    (name "haskell-9.0-either")
    (version "5.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/either/either-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1gl748ia68bldbqb2fl7vjv44g0y8ivn659fjmy1qyypgyb5p95z"))))
    (properties `((upstream-name . "either") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-bifunctors)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/either/")
    (synopsis "Combinators for working with sums")
    (description "Combinators for working with sums.")
    (license license:bsd-3)))

haskell-9.0-either

(define-public haskell-9.0-elf
  (package
    (name "haskell-9.0-elf")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/wangbj/elf")
    (synopsis "An Elf parser")
    (description "Parser for ELF object format.")
    (license license:bsd-3)))

haskell-9.0-elf

(define-public haskell-9.0-elynx-nexus
  (package
    (name "haskell-9.0-elynx-nexus")
    (version "0.6.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/elynx-nexus/elynx-nexus-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qx28djaj3k56wp0qqcdy7zn90alr24q05l9a93qp0wqahlwmgy3"))))
    (properties `((upstream-name . "elynx-nexus") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/dschrempf/elynx#readme")
    (synopsis "Import and export Nexus files")
    (description
     "Examine, modify, and simulate molecular sequences in a reproducible way. Please see the README on GitHub at <https://github.com/dschrempf/elynx>.")
    (license license:gpl3+)))

haskell-9.0-elynx-nexus

(define-public haskell-9.0-enclosed-exceptions
  (package
    (name "haskell-9.0-enclosed-exceptions")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-lifted-base)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)))
    (home-page "https://github.com/jcristovao/enclosed-exceptions")
    (synopsis "Catching all exceptions from within an enclosed computation")
    (description
     "Catching all exceptions raised within an enclosed computation,
while remaining responsive to (external) asynchronous exceptions.
For more information on the technique, please see:
<https://www.fpcomplete.com/user/snoyberg/general-haskell/exceptions/catching-all-exceptions>")
    (license license:expat)))

haskell-9.0-enclosed-exceptions

(define-public haskell-9.0-envparse
  (package
    (name "haskell-9.0-envparse")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/envparse/envparse-" version
                    ".tar.gz"))
              (sha256
               (base32
                "00133c2wcxw8hj93srg39l539zvsahiz6jl4pi6wf6lc1zqdm0d1"))))
    (properties `((upstream-name . "envparse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
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

haskell-9.0-envparse

(define-public haskell-9.0-envy
  (package
    (name "haskell-9.0-envy")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/envy")
    (synopsis
     "An environmentally friendly way to deal with environment variables")
    (description
     "For package use information see the <https://github.com/dmjio/envy/blob/master/README.md README.md>")
    (license license:bsd-3)))

haskell-9.0-envy

(define-public haskell-9.0-eq
  (package
    (name "haskell-9.0-eq")
    (version "4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/eq/eq-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0p3189kq045vxh0h7is81q0qahaghni810x68g31yml05md37giz"))))
    (properties `((upstream-name . "eq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/eq/")
    (synopsis "Leibnizian equality")
    (description "Leibnizian equality.")
    (license license:bsd-3)))

haskell-9.0-eq

(define-public haskell-9.0-errorcall-eq-instance
  (package
    (name "haskell-9.0-errorcall-eq-instance")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-orphans)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/errorcall-eq-instance")
    (synopsis "An orphan Eq instance for ErrorCall")
    (description "Prior to @@base-4.7.0.0@@ there was no @@Eq@@ instance for
@@ErrorCall@@.  This package provides an orphan instance.")
    (license license:expat)))

haskell-9.0-errorcall-eq-instance

(define-public haskell-9.0-executable-hash
  (package
    (name "haskell-9.0-executable-hash")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-cryptohash)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-executable-path)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-file-embed)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/fpco/executable-hash")
    (synopsis "Provides the SHA1 hash of the program executable")
    (description "See README.md")
    (license license:expat)))

haskell-9.0-executable-hash

(define-public haskell-9.0-extra
  (package
    (name "haskell-9.0-extra")
    (version "1.7.12")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/extra/extra-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0g5h8fp0nq4k9asiknw0bhvb10zpfnsixfp0n3xz0rc83pnajwg5"))))
    (properties `((upstream-name . "extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-clock)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ndmitchell/extra#readme")
    (synopsis "Extra functions I use.")
    (description
     "A library of extra functions for the standard Haskell libraries. Most functions are simple additions, filling out missing functionality. A few functions are available in later versions of GHC, but this package makes them available back to GHC 7.2.

The module \"Extra\" documents all functions provided by this library. Modules such as \"Data.List.Extra\" provide extra functions over \"Data.List\" and also reexport \"Data.List\". Users are recommended to replace \"Data.List\" imports with \"Data.List.Extra\" if they need the extra functionality.")
    (license license:bsd-3)))

haskell-9.0-extra

(define-public haskell-9.0-fakedata-parser
  (package
    (name "haskell-9.0-fakedata-parser")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/psibi/fakedata-parser#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/psibi/fakedata-parser#readme>")
    (license license:bsd-3)))

haskell-9.0-fakedata-parser

(define-public haskell-9.0-fakefs
  (package
    (name "haskell-9.0-fakefs")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://gitlab.com/igrep/haskell-fakefs#readme")
    (synopsis "Extensible fake file system for testing.")
    (description "See <https://gitlab.com/igrep/haskell-fakefs#readme>.")
    (license license:asl2.0)))

haskell-9.0-fakefs

(define-public haskell-9.0-fakepull
  (package
    (name "haskell-9.0-fakepull")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/igrep/haskell-fakepull#readme")
    (synopsis "Monad to pull from fake stream-like objects.")
    (description "See <https://github.com/igrep/haskell-fakepull#readme>.")
    (license license:asl2.0)))

haskell-9.0-fakepull

(define-public haskell-9.0-fileplow
  (package
    (name "haskell-9.0-fileplow")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-binary-search)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/agrafix/fileplow#readme")
    (synopsis
     "Library to process and search large files or a collection of files")
    (description
     "Library to process and search large files or a collection of files")
    (license license:bsd-3)))

haskell-9.0-fileplow

(define-public haskell-9.0-flags-applicative
  (package
    (name "haskell-9.0-flags-applicative")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-casing)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)))
    (home-page "https://github.com/mtth/flags-applicative")
    (synopsis "Applicative flag parsing")
    (description "https://github.com/mtth/flags-applicative")
    (license license:bsd-3)))

haskell-9.0-flags-applicative

(define-public haskell-9.0-flush-queue
  (package
    (name "haskell-9.0-flush-queue")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-atomic-primops)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/fpco/flush-queue#readme")
    (synopsis
     "Concurrent bouded blocking queues optimized for flushing. Both IO and STM implementations.")
    (description
     "Please see the README on GitHub at <https://github.com/fpco/flush-queue#readme>")
    (license license:bsd-3)))

haskell-9.0-flush-queue

(define-public haskell-9.0-fold-debounce
  (package
    (name "haskell-9.0-fold-debounce")
    (version "0.2.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fold-debounce/fold-debounce-"
                    version ".tar.gz"))
              (sha256
               (base32
                "032vk4bpmsd7ix00kpfb2vnabivg9vkkfy3nbazdgm8x01jix4wq"))))
    (properties `((upstream-name . "fold-debounce") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-stm-delay)))
    (home-page "https://github.com/debug-ito/fold-debounce")
    (synopsis "Fold multiple events that happen in a given period of time.")
    (description
     "Fold multiple events that happen in a given period of time. See \"Control.FoldDebounce\".")
    (license license:bsd-3)))

haskell-9.0-fold-debounce

(define-public haskell-9.0-foldl
  (package
    (name "haskell-9.0-foldl")
    (version "1.4.12")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/foldl/foldl-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0zf4yljh3s2ddxa7dhzdglmylj14kfldhkclc44g37zvjq6kcnag"))))
    (properties `((upstream-name . "foldl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "1b97k85zryid7x2ygi92ilv480ahfjn5yf1f4blllwyxn7zgvjv4")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/foldl")
    (synopsis "Composable, streaming, and efficient left folds")
    (description
     "This library provides strict left folds that stream in constant
memory, and you can combine folds using @@Applicative@@ style to derive new
folds.  Derived folds still traverse the container just once and are often as
efficient as hand-written folds.")
    (license license:bsd-3)))

haskell-9.0-foldl

(define-public haskell-9.0-format-numbers
  (package
    (name "haskell-9.0-format-numbers")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/agrafix/format-numbers#readme")
    (synopsis "Various number formatting functions")
    (description "Various number formatting functions")
    (license license:expat)))

haskell-9.0-format-numbers

(define-public haskell-9.0-formatting
  (package
    (name "haskell-9.0-formatting")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-clock)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-double-conversion)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-old-locale)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://github.com/AJChapman/formatting#readme")
    (synopsis
     "Combinator-based type-safe formatting (like printf() or FORMAT)")
    (description
     "Combinator-based type-safe formatting (like printf() or FORMAT), modelled from the HoleyMonoids package.

See the README at <https://github.com/AJChapman/formatting#readme> for more info.")
    (license license:bsd-3)))

haskell-9.0-formatting

(define-public haskell-9.0-free
  (package
    (name "haskell-9.0-free")
    (version "5.1.9")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/free/free-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1vlzis9sqxh7xrmh3habbgiw3skkhkn710bhqb6fnl45804i6x9f"))))
    (properties `((upstream-name . "free") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "133nycxnzy7sgp2vib8hpp2jgzm8pxp31ljf7b4v91jn1gqg3kpl")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-distributive)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-th-abstraction)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/free/")
    (synopsis "Monads for free")
    (description
     "Free monads are useful for many tree-like structures and domain specific languages.

If @@f@@ is a 'Functor' then the free 'Monad' on @@f@@ is the type
of trees whose nodes are labeled with the constructors of @@f@@. The word
\\\"free\\\" is used in the sense of \\\"unrestricted\\\" rather than \\\"zero-cost\\\":
@@Free f@@ makes no constraining assumptions beyond those given by @@f@@ and the
definition of 'Monad'. As used here it is a standard term from the
mathematical theory of adjoint functors.

Cofree comonads are dual to free monads. They provide convenient ways to talk
about branching streams and rose-trees, and can be used to annotate syntax
trees. The cofree comonad can be seen as a stream parameterized by a 'Functor'
that controls its branching factor.

More information on free monads, including examples, can be found in the
following blog posts:
<http://comonad.com/reader/2008/monads-for-free/>
<http://comonad.com/reader/2011/free-monads-for-less/>")
    (license license:bsd-3)))

haskell-9.0-free

(define-public haskell-9.0-friendly-time
  (package
    (name "haskell-9.0-friendly-time")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-old-locale)))
    (home-page "https://hackage.haskell.org/package/friendly-time")
    (synopsis "Print time information in friendly ways")
    (description "Print time information in friendly ways")
    (license license:bsd-3)))

haskell-9.0-friendly-time

(define-public haskell-9.0-fuzzcheck
  (package
    (name "haskell-9.0-fuzzcheck")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-lifted-base)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)))
    (home-page "https://github.com/fpco/fuzzcheck")
    (synopsis "A simple checker for stress testing monadic code")
    (description "A simple checker for stress testing monadic code")
    (license license:bsd-3)))

haskell-9.0-fuzzcheck

(define-public haskell-9.0-general-games
  (package
    (name "haskell-9.0-general-games")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-MonadRandom)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-monad-loops)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-random-shuffle)))
    (home-page "https://github.com/cgorski/general-games")
    (synopsis "Library supporting simulation of a number of games")
    (description
     "Library providing framework for simulating outcomes of a variety
of games, including Poker.")
    (license license:expat)))

haskell-9.0-general-games

(define-public haskell-9.0-generic-deriving
  (package
    (name "haskell-9.0-generic-deriving")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-th-abstraction)))
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

haskell-9.0-generic-deriving

(define-public haskell-9.0-getopt-generics
  (package
    (name "haskell-9.0-getopt-generics")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-orphans)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-generics-sop)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-silently)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)))
    (home-page "https://github.com/soenkehahn/getopt-generics#readme")
    (synopsis "Create command line interfaces with ease")
    (description "Create command line interfaces with ease")
    (license license:bsd-3)))

haskell-9.0-getopt-generics

(define-public haskell-9.0-ghc-syntax-highlighter
  (package
    (name "haskell-9.0-ghc-syntax-highlighter")
    (version "0.0.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-syntax-highlighter/ghc-syntax-highlighter-"
                    version ".tar.gz"))
              (sha256
               (base32
                "123kvcdlzx18n14122xbpp587byfd8w0z886grlxkzinb53bmzg6"))))
    (properties `((upstream-name . "ghc-syntax-highlighter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ghc-lib-parser)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/mrkkrp/ghc-syntax-highlighter")
    (synopsis "Syntax highlighter for Haskell using lexer of GHC itself")
    (description "Syntax highlighter for Haskell using lexer of GHC itself.")
    (license license:bsd-3)))

haskell-9.0-ghc-syntax-highlighter

(define-public haskell-9.0-ghost-buster
  (package
    (name "haskell-9.0-ghost-buster")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/Lazersmoke/ghost-buster#readme")
    (synopsis "Existential type utilites")
    (description
     "This package provides utilities for working with existential types.")
    (license license:bsd-3)))

haskell-9.0-ghost-buster

(define-public haskell-9.0-graph-wrapper
  (package
    (name "haskell-9.0-graph-wrapper")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/soenkehahn/graph-wrapper")
    (synopsis
     "A wrapper around the standard Data.Graph with a less awkward interface")
    (description
     "A wrapper around the standard Data.Graph with a less awkward interface")
    (license license:bsd-3)))

haskell-9.0-graph-wrapper

(define-public haskell-9.0-graphite
  (package
    (name "haskell-9.0-graphite")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-cassava)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-graphviz)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/alx741/graphite#readme")
    (synopsis "Graphs and networks library")
    (description "Represent, analyze and visualize graphs")
    (license license:bsd-3)))

haskell-9.0-graphite

(define-public haskell-9.0-has-transformers
  (package
    (name "haskell-9.0-has-transformers")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-operational)))
    (home-page "https://github.com/turion/has-transformers")
    (synopsis "This library 'Has' transformers")
    (description
     "A very slim library for first-order effects based on monad transformers
(and nearly nothing else).

Given a transformer stack @@t1 (t2 (t3 (... m))) a@@,
you can automatically lift any function @@thing :: tN m a@@ into the stack with a single function, 'liftH'.")
    (license license:expat)))

haskell-9.0-has-transformers

(define-public haskell-9.0-haskell-src-exts-util
  (package
    (name "haskell-9.0-haskell-src-exts-util")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-uniplate)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/pepeiborra/haskell-src-exts-util")
    (synopsis "Helper functions for working with haskell-src-exts trees")
    (description "Helper functions for working with haskell-src-exts trees.")
    (license license:bsd-3)))

haskell-9.0-haskell-src-exts-util

(define-public haskell-9.0-hasktags
  (package
    (name "haskell-9.0-hasktags")
    (version "0.72.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasktags/hasktags-" version
                    ".tar.gz"))
              (sha256
               (base32
                "09p79w16fgpqi6bwq162769xdrnyb7wnmz56k00nz6dj1a0bbbdd"))))
    (properties `((upstream-name . "hasktags") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")
       #:cabal-revision
       ("2" "0f3v6k3bvsczz0z5i09286c0i74wz782vayzyp5lndqvrx3b4g0x")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-json)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-microlens-platform)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/MarcWeber/hasktags")
    (synopsis
     "Produces ctags \"tags\" and etags \"TAGS\" files for Haskell programs")
    (description
     "Produces ctags \"tags\" and etags \"TAGS\" files for Haskell programs.")
    (license license:bsd-3)))

haskell-9.0-hasktags

(define-public haskell-9.0-hebrew-time
  (package
    (name "haskell-9.0-hebrew-time")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/snoyberg/hebrew-time#readme")
    (synopsis "Hebrew dates and prayer times.")
    (description "Conversion to and from Hebrew dates.")
    (license license:expat)))

haskell-9.0-hebrew-time

(define-public haskell-9.0-hformat
  (package
    (name "haskell-9.0-hformat")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-unicode-symbols)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "http://github.com/mvoidex/hformat")
    (synopsis "Simple Haskell formatting")
    (description "String formatting")
    (license license:bsd-3)))

haskell-9.0-hformat

(define-public haskell-9.0-hlibsass
  (package
    (name "haskell-9.0-hlibsass")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
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

haskell-9.0-hlibsass

(define-public haskell-9.0-hopfli
  (package
    (name "haskell-9.0-hopfli")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/ananthakumaran/hopfli")
    (synopsis "Bidings to Google's Zopfli compression library")
    (description
     "Hopfli provides a pure interface to compress data using the Zopfli library
algorithm.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.0-hopfli

(define-public haskell-9.0-hsemail
  (package
    (name "haskell-9.0-hsemail")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-time-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/peti/hsemail#readme")
    (synopsis "Parsec parsers for the Internet Message format (e-mail)")
    (description
     "Parsec parsers for the Internet Message format defined in RFC2822.")
    (license license:bsd-3)))

haskell-9.0-hsemail

(define-public haskell-9.0-hsexif
  (package
    (name "haskell-9.0-hsexif")
    (version "0.6.1.9")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hsexif/hsexif-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1k6zq1jjzl7y38yh9cris096i5bba24rwwizdr8a2cyqqxz2g8jf"))))
    (properties `((upstream-name . "hsexif") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ficonv")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-iconv)))
    (home-page "https://github.com/emmanueltouzery/hsexif")
    (synopsis "EXIF handling library in pure Haskell")
    (description
     "The hsexif library provides functions for working with EXIF data
contained in JPEG files. Currently it only supports reading the data.")
    (license license:bsd-3)))

haskell-9.0-hsexif

(define-public haskell-9.0-hslua-core
  (package
    (name "haskell-9.0-hslua-core")
    (version "2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-core/hslua-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1iaii879b13j8a8lgv78wja85ik2y5xlkv1mzckjl4nqn91968wq"))))
    (properties `((upstream-name . "hslua-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-lua)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-lua-arbitrary)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hslua.org/")
    (synopsis "Bindings to Lua, an embeddable scripting language")
    (description "Wrappers and helpers to bridge Haskell and
<https://www.lua.org/ Lua>.

It builds upon the /lua/ package, which allows to bundle
a Lua interpreter with a Haskell program.")
    (license license:expat)))

haskell-9.0-hslua-core

(define-public haskell-9.0-hspec-attoparsec
  (package
    (name "haskell-9.0-hspec-attoparsec")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hspec-expectations)))
    (home-page "http://github.com/alpmestan/hspec-attoparsec")
    (synopsis
     "Utility functions for testing your attoparsec parsers with hspec")
    (description
     "This package provides some helper functions for testing attoparsec parsers with hspec.

See the documentation in @@Test.Hspec.Attoparsec@@ for examples, or this package's own test suite.")
    (license license:bsd-3)))

haskell-9.0-hspec-attoparsec

(define-public haskell-9.0-hspec-contrib
  (package
    (name "haskell-9.0-hspec-contrib")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-contrib/hspec-contrib-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hhzxaa3fxz5mk5qcsrnfr98a7bn3szx2ydgr0x9mbqmm1jg06rc"))))
    (properties `((upstream-name . "hspec-contrib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "12jwqbddqx8j69b04q3kzwvnkwh6l9cv8b5fvph4n6nrqnk81mp9")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-hspec-core)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "http://hspec.github.io/")
    (synopsis "Contributed functionality for Hspec")
    (description "Contributed functionality for Hspec")
    (license license:expat)))

haskell-9.0-hspec-contrib

(define-public haskell-9.0-hspec-golden
  (package
    (name "haskell-9.0-hspec-golden")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-hspec-core)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-silently)))
    (home-page "https://github.com/stackbuilders/hspec-golden#readme")
    (synopsis "Golden tests for hspec")
    (description
     "Please see the README on GitHub at <https://github.com/stackbuilders/hspec-golden#README>")
    (license license:expat)))

haskell-9.0-hspec-golden

(define-public haskell-9.0-hspec-leancheck
  (package
    (name "haskell-9.0-hspec-leancheck")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-hspec-core)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-leancheck)))
    (home-page "https://github.com/rudymatela/hspec-leancheck#readme")
    (synopsis "LeanCheck support for the Hspec test framework.")
    (description
     "LeanCheck support for the Hspec test framework.

This package can be used to incorporate LeanCheck tests into Hspec test
suites.

Please see the Haddock documentation and README for more details.")
    (license license:bsd-3)))

haskell-9.0-hspec-leancheck

(define-public haskell-9.0-hspec-megaparsec
  (package
    (name "haskell-9.0-hspec-megaparsec")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-megaparsec)))
    (home-page "https://github.com/mrkkrp/hspec-megaparsec")
    (synopsis "Utility functions for testing Megaparsec parsers with Hspec")
    (description
     "Utility functions for testing Megaparsec parsers with Hspec.")
    (license license:bsd-3)))

haskell-9.0-hspec-megaparsec

(define-public haskell-9.0-hspec-need-env
  (package
    (name "haskell-9.0-hspec-need-env")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-hspec-core)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-setenv)))
    (home-page "https://github.com/debug-ito/hspec-need-env")
    (synopsis "Read environment variables for hspec tests")
    (description
     "Read environment variables for hspec tests. See 'Test.Hspec.NeedEnv'.")
    (license license:bsd-3)))

haskell-9.0-hspec-need-env

(define-public haskell-9.0-hspec-parsec
  (package
    (name "haskell-9.0-hspec-parsec")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hspec-expectations)))
    (home-page "https://github.com/sjakobi/hspec-parsec#readme")
    (synopsis "Hspec expectations for testing Parsec parsers")
    (description "")
    (license license:bsd-3)))

haskell-9.0-hspec-parsec

(define-public haskell-9.0-hspec-smallcheck
  (package
    (name "haskell-9.0-hspec-smallcheck")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-orphans)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-call-stack)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-hspec-core)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-smallcheck)))
    (home-page "http://hspec.github.io/")
    (synopsis "SmallCheck support for the Hspec testing framework")
    (description "SmallCheck support for the Hspec testing framework")
    (license license:expat)))

haskell-9.0-hspec-smallcheck

(define-public haskell-9.0-hsyslog-udp
  (package
    (name "haskell-9.0-hsyslog-udp")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hsyslog-udp/hsyslog-udp-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02n2l9fl926di21w01qhqn3f39hnm6nqc7kn0af1f89qncpbxl5d"))))
    (properties `((upstream-name . "hsyslog-udp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fnetwork--ge-3_0_0")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-hsyslog)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-network-bsd)))
    (home-page "https://github.com/k-bx/hsyslog-udp")
    (synopsis "Log to syslog over a network via UDP")
    (description "Supports <https://tools.ietf.org/html/rfc5424 RFC 5424>,
<https://tools.ietf.org/html/rfc3164 RFC 3164>, or any
arbitrary protocol.")
    (license license:bsd-3)))

haskell-9.0-hsyslog-udp

(define-public haskell-9.0-htaglib
  (package
    (name "haskell-9.0-htaglib")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages mp3) taglib)))
    (home-page "https://github.com/mrkkrp/htaglib")
    (synopsis "Bindings to TagLib, audio meta-data library")
    (description "Bindings to TagLib, audio meta-data library.")
    (license license:bsd-3)))

haskell-9.0-htaglib

(define-public haskell-9.0-html-email-validate
  (package
    (name "haskell-9.0-html-email-validate")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-regex-pcre-builtin)))
    (home-page "https://hackage.haskell.org/package/html-email-validate")
    (synopsis "Validating an email address against HTML standard")
    (description
     "The library allows to validate and parse an email address
as it's defined in <https://html.spec.whatwg.org/multipage/forms.html#valid-e-mail-address HTML standard>.
Note that HTML specification of a valid email address is a
'willful violation' of RFC 5322. If you want to validate
an address against RFC 5322 you should use <https://hackage.haskell.org/package/email-validate email-validate>.")
    (license license:bsd-3)))

haskell-9.0-html-email-validate

(define-public haskell-9.0-http-date
  (package
    (name "haskell-9.0-http-date")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-old-locale)))
    (home-page "https://hackage.haskell.org/package/http-date")
    (synopsis "HTTP Date parser/formatter")
    (description "Fast parser and formatter for HTTP Date")
    (license license:bsd-3)))

haskell-9.0-http-date

(define-public haskell-9.0-http-types
  (package
    (name "haskell-9.0-http-types")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/aristidb/http-types")
    (synopsis
     "Generic HTTP types for Haskell (for both client and server code).")
    (description
     "Generic HTTP types for Haskell (for both client and server code).")
    (license license:bsd-3)))

haskell-9.0-http-types

(define-public haskell-9.0-hvect
  (package
    (name "haskell-9.0-hvect")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/agrafix/hvect")
    (synopsis "Simple strict heterogeneous lists")
    (description
     "Small, concise and simple implementation of heterogeneous lists with useful utility functions")
    (license license:expat)))

haskell-9.0-hvect

(define-public haskell-9.0-identicon
  (package
    (name "haskell-9.0-identicon")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/mrkkrp/identicon")
    (synopsis "Flexible generation of identicons")
    (description "Flexible generation of identicons.")
    (license license:bsd-3)))

haskell-9.0-identicon

(define-public haskell-9.0-ilist
  (package
    (name "haskell-9.0-ilist")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "http://github.com/kowainik/ilist")
    (synopsis "Optimised list functions for doing index-related things")
    (description
     "Optimised list functions for doing index-related things. They're
faster than common idioms in all cases, they avoid
<https://ghc.haskell.org/trac/ghc/ticket/12620 space leaks>, and
sometimes they fuse better as well.")
    (license license:mpl2.0)))

haskell-9.0-ilist

(define-public haskell-9.0-indexed-list-literals
  (package
    (name "haskell-9.0-indexed-list-literals")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-Only)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
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

haskell-9.0-indexed-list-literals

(define-public haskell-9.0-ini
  (package
    (name "haskell-9.0-ini")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/andreasabel/ini")
    (synopsis "Configuration files in the INI format.")
    (description "Quick and easy configuration files in the INI format.")
    (license license:bsd-3)))

haskell-9.0-ini

(define-public haskell-9.0-invariant
  (package
    (name "haskell-9.0-invariant")
    (version "0.5.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/invariant/invariant-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1l73wlnmh09187w8y61qyjjycpljds9lydy16ifa08bmmbxgkzcw"))))
    (properties `((upstream-name . "invariant") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-StateVar)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-bifunctors)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-th-abstraction)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nfrisby/invariant-functors")
    (synopsis "Haskell98 invariant functors")
    (description
     "Haskell98 invariant functors (also known as exponential functors).

For more information, see Edward Kmett's article \\\"Rotten Bananas\\\":

<http://comonad.com/reader/2008/rotten-bananas/>")
    (license license:bsd-2)))

haskell-9.0-invariant

(define-public haskell-9.0-io-region
  (package
    (name "haskell-9.0-io-region")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
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

haskell-9.0-io-region

(define-public haskell-9.0-isbn
  (package
    (name "haskell-9.0-isbn")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/charukiewicz/hs-isbn")
    (synopsis "ISBN Validation and Manipulation")
    (description
     "See the README at <https://github.com/charukiewicz/hs-isbn#readme>")
    (license license:asl2.0)))

haskell-9.0-isbn

(define-public haskell-9.0-iso8601-time
  (package
    (name "haskell-9.0-iso8601-time")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/nh2/iso8601-time")
    (synopsis "Convert to/from the ISO 8601 time format")
    (description
     "Conversion functions between Haskell time types and the ISO 8601 format,
which is often used for printing times, e.g. JavaScript's @@new Date().toISOString()@@.")
    (license license:expat)))

haskell-9.0-iso8601-time

(define-public haskell-9.0-jalaali
  (package
    (name "haskell-9.0-jalaali")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/jalaali/jalaali-hs#readme")
    (synopsis "Jalaali calendar systems")
    (description
     "Functions for working with Jalaali (Jalali, Persian, Khayyami, Khorshidi, Shamsi) calendar systems. Please see the README on GitHub at <https://github.com/jalaali/jalaali-hs#readme>")
    (license license:expat)))

haskell-9.0-jalaali

(define-public haskell-9.0-language-javascript
  (package
    (name "haskell-9.0-language-javascript")
    (version "0.7.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-javascript/language-javascript-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s6igb54cxm2jywgc3sq53f52gcsc39wd3g78yisfzvl9jm3d86i"))))
    (properties `((upstream-name . "language-javascript") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-alex)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-happy)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-utf8-light)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)))
    (home-page "https://github.com/erikd/language-javascript")
    (synopsis "Parser for JavaScript")
    (description
     "Parses Javascript into an Abstract Syntax Tree (AST).  Initially intended as frontend to hjsmin.

Note: Version 0.5.0 breaks compatibility with prior versions, the AST has been reworked to allow
round trip processing of JavaScript.")
    (license license:bsd-3)))

haskell-9.0-language-javascript

(define-public haskell-9.0-language-thrift
  (package
    (name "haskell-9.0-language-thrift")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)))
    (home-page "https://github.com/abhinav/language-thrift#readme")
    (synopsis "Parser and pretty printer for the Thrift IDL format.")
    (description "This package provides a parser and pretty printer for the
<http://thrift.apache.org/docs/idl Thrift IDL format>.")
    (license license:bsd-3)))

haskell-9.0-language-thrift

(define-public haskell-9.0-lapack
  (package
    (name "haskell-9.0-lapack")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lapack/lapack-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0g4nwbkb5nxfmh7aan7r94gchr3wmr45g18mzxzcxqxqpllj3vs1"))))
    (properties `((upstream-name . "lapack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-Stream)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-blas-ffi)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-boxes)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-comfort-array)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-comfort-array-shape)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-fixed-length)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-guarded-allocation)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hyper)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-lapack-ffi)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-lazyio)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-netlib-ffi)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-non-empty)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-tfp)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hub.darcs.net/thielema/lapack/")
    (synopsis "Numerical Linear Algebra using LAPACK")
    (description
     "This is a high-level interface to LAPACK.
It provides solvers for simultaneous linear equations,
linear least-squares problems, eigenvalue and singular value problems
for matrices with certain kinds of structures.

Features:

* Based on @@comfort-array@@:
Allows to precisely express one-column or one-row matrices,
as well as dense, square, triangular, banded, symmetric, Hermitian,
banded Hermitian, blocked and LU or QR decomposed matrices.

* Support all data types that are supported by LAPACK,
i.e. Float, Double, Complex Float, Complex Double

* No need for c2hs, hsc, Template Haskell or C helper functions

* Dependency only on BLAS and LAPACK, no GSL

* Works with matrices and vectors with zero dimensions.
This one is tricky and still leads to surprises
since different LAPACK implementations
consider different situations as corner cases.

* No automatic (and dangerous) implicit expansion
of singleton vectors or matrices.
Instead there are special operators for scaling of vectors and matrices.

* Separate formatting operator @@(##)@@:
Works better for tuples of matrices and vectors than 'show'.
'Show' is used for code one-liners
that can be copied back into Haskell modules.
Support for nice formatting in HyperHaskell.

See also: @@hmatrix@@.")
    (license license:bsd-3)))

haskell-9.0-lapack

(define-public haskell-9.0-lapack-comfort-array
  (package
    (name "haskell-9.0-lapack-comfort-array")
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
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-comfort-array)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-lapack-ffi)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-netlib-comfort-array)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-netlib-ffi)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-storable-complex)))
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

haskell-9.0-lapack-comfort-array

(define-public haskell-9.0-lapack-ffi-tools
  (package
    (name "haskell-9.0-lapack-ffi-tools")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lapack-ffi-tools/lapack-ffi-tools-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qk5a43w8xn8pp9bhmjmjyvriiin2dyf4nvk13w858hsxyx6xqkx"))))
    (properties `((upstream-name . "lapack-ffi-tools") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-cassava)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-explicit-exception)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-non-empty)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-pathtype)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hub.darcs.net/thielema/lapack-ffi-tools/")
    (synopsis "Generator for Haskell interface to Fortran LAPACK")
    (description
     "LAPACK is a package for efficient numerically robust linear algebra.
The original implementation is written in FORTRAN.

The program in this package generates the modules
for the packages @@blas-ffi@@, @@blas-comfort-array@@, @@blas-carray@@,
@@lapack-ffi@@, @@lapack-comfort-array@@, @@lapack-carray@@
from the FORTRAN source files.")
    (license license:bsd-3)))

haskell-9.0-lapack-ffi-tools

(define-public haskell-9.0-lattices
  (package
    (name "haskell-9.0-lattices")
    (version "2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lattices/lattices-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1mn78xqwsksybggnsnx8xkmzlc9his1si14dy5v6vmlchkjym9qg"))))
    (properties `((upstream-name . "lattices") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0nkcdqb3gsp1lqpj7hv4knndj7p258j0cp4cbqx7jixc93gkq044")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-integer-logarithms)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-universe-base)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-universe-reverse-instances)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/phadej/lattices/")
    (synopsis
     "Fine-grained library for constructing and manipulating lattices")
    (description
     "In mathematics, a lattice is a partially ordered set in which every two
elements @@x@@ and @@y@@ have a unique supremum (also called a least upper bound, join, or @@x /\\\\ y@@)
and a unique infimum (also called a greatest lower bound, meet, or @@x \\\\/ y@@).

This package provide type-classes for different lattice types, as well
as a class for the partial order.")
    (license license:bsd-3)))

haskell-9.0-lattices

(define-public haskell-9.0-lens-family-th
  (package
    (name "haskell-9.0-lens-family-th")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "http://github.com/DanBurton/lens-family-th#readme")
    (synopsis "Generate lens-family style lenses")
    (description "(see README.md)")
    (license license:bsd-3)))

haskell-9.0-lens-family-th

(define-public haskell-9.0-lentil
  (package
    (name "haskell-9.0-lentil")
    (version "1.5.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lentil/lentil-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0xfsf7g9r2w30qkp4829w77hsja562jvx4n9i880j9qngi2ms2h1"))))
    (properties `((upstream-name . "lentil") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-developer")
       #:cabal-revision
       ("2" "1n88rdsf5ayprgz1wnbx32gaff8kpixfkdkr6q4jvc896fhrhdzp")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-csv)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-filemanip)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-natural-sort)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-terminal-progress-bar)))
    (home-page "http://www.ariis.it/static/articles/lentil/page.html")
    (synopsis "frugal issue tracker")
    (description "minumum effort, cohesive issue tracker based on
ubiquitous @@TODO@@s and @@FIXME@@s conventions.
Check homepage for manual, tutorial, binaries,
examples.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-lentil

(define-public haskell-9.0-lexer-applicative
  (package
    (name "haskell-9.0-lexer-applicative")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-regex-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-srcloc)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (home-page "https://github.com/feuerbach/lexer-applicative")
    (synopsis "Simple lexer based on applicative regular expressions")
    (description "Simple lexer based on applicative regular expressions")
    (license license:expat)))

haskell-9.0-lexer-applicative

(define-public haskell-9.0-linebreak
  (package
    (name "haskell-9.0-linebreak")
    (version "1.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/linebreak/linebreak-" version
                    ".tar.gz"))
              (sha256
               (base32
                "11vqz7zv8ihvhbyma9j6pvxainxfg4kml9fylfjy9jpfvilxq5vq"))))
    (properties `((upstream-name . "linebreak") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0pg3r5zvb13sfyhskyadllxpd2l7xvzvjj8r8rvlq248riq78qdc")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hyphenation)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://ariis.it/static/articles/linebreak/page.html")
    (synopsis "breaks strings to fit width")
    (description "Simple functions to break a String to fit a maximum text
width, using Knuth-Liang hyphenation algorhitm.")
    (license license:bsd-3)))

haskell-9.0-linebreak

(define-public haskell-9.0-list-predicate
  (package
    (name "haskell-9.0-list-predicate")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/pgujjula/list-utilities#readme")
    (synopsis "Predicates on lists")
    (description
     "Please see the README on GitHub at <https://github.com/pgujjula/list-utilities/tree/master/list-predicate#readme>.")
    (license license:bsd-3)))

haskell-9.0-list-predicate

(define-public haskell-9.0-locators
  (package
    (name "haskell-9.0-locators")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)))
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

haskell-9.0-locators

(define-public haskell-9.0-log-domain
  (package
    (name "haskell-9.0-log-domain")
    (version "0.13.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/log-domain/log-domain-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0i4fx9k8cwjvmj0pgfnbici1b68zmif1jmmqxplpjqy32ksnyifa"))))
    (properties `((upstream-name . "log-domain") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0nbfbp7a6x3vppavra7pf28l2wwlci3qgps60igqgjkbdcvq7w8c")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-bytes)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-distributive)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/log-domain/")
    (synopsis "Log-domain arithmetic")
    (description
     "This package provides log-domain floats, doubles and complex numbers.")
    (license license:bsd-3)))

haskell-9.0-log-domain

(define-public haskell-9.0-logging-facade
  (package
    (name "haskell-9.0-logging-facade")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-call-stack)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/sol/logging-facade#readme")
    (synopsis "Simple logging abstraction that allows multiple back-ends")
    (description "Simple logging abstraction that allows multiple back-ends")
    (license license:expat)))

haskell-9.0-logging-facade

(define-public haskell-9.0-loop
  (package
    (name "haskell-9.0-loop")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/nh2/loop")
    (synopsis "Fast loops (for when GHC can't optimize forM_)")
    (description
     "This package provides a convenient and fast alternative to the common
`forM_ [1..n]` idiom, which in many cases GHC cannot fuse to efficient
code.

See <https://ghc.haskell.org/trac/ghc/ticket/8763>.")
    (license license:expat)))

haskell-9.0-loop

(define-public haskell-9.0-lucid
  (package
    (name "haskell-9.0-lucid")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-bifunctors)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-mmorph)))
    (home-page "https://github.com/chrisdone/lucid")
    (synopsis "Clear to write, read and edit DSL for HTML")
    (description
     "Clear to write, read and edit DSL for HTML.

* Names are consistent, and do not conflict with base or are keywords (all have suffix @@_@@)

* Same combinator can be used for attributes and elements (e.g. 'style_')

* For more, read <https://chrisdone.com/posts/lucid the blog post>

See the \"Lucid\" module for more documentation.")
    (license license:bsd-3)))

haskell-9.0-lucid

(define-public haskell-9.0-main-tester
  (package
    (name "haskell-9.0-main-tester")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-hspec-core)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://gitlab.com/igrep/main-tester#readme")
    (synopsis
     "Capture stdout/stderr/exit code, and replace stdin of your main function.")
    (description "See README.md for detail.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.0-main-tester

(define-public haskell-9.0-matrix-market-attoparsec
  (package
    (name "haskell-9.0-matrix-market-attoparsec")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)))
    (home-page "https://github.com/ocramz/matrix-market-attoparsec")
    (synopsis
     "Parsing and serialization functions for the NIST Matrix Market format")
    (description
     "Parsing and serialization functions for the NIST Matrix Market format.")
    (license license:bsd-2)))

haskell-9.0-matrix-market-attoparsec

(define-public haskell-9.0-mime-mail
  (package
    (name "haskell-9.0-mime-mail")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)))
    (home-page "http://github.com/snoyberg/mime-mail")
    (synopsis "Compose MIME email messages.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/mime-mail>.")
    (license license:expat)))

haskell-9.0-mime-mail

(define-public haskell-9.0-mnist-idx
  (package
    (name "haskell-9.0-mnist-idx")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://christof-schramm.net")
    (synopsis
     "Read and write IDX data that is used in e.g. the MNIST database.")
    (description
     "This package provides functionality to read and write data in the IDX
binary format. This format is relevant for machine learning applications,
like the MNIST handwritten digit database.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.0-mnist-idx

(define-public haskell-9.0-monad-chronicle
  (package
    (name "haskell-9.0-monad-chronicle")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-chronicle/monad-chronicle-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13f1qwylpj7wss2h5g69zlmn6k6qg5r3aqd9zhvjspg1a85m91kq"))))
    (properties `((upstream-name . "monad-chronicle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsemigroupoids")
       #:cabal-revision
       ("1" "09ibn640fkqlvgqxkrwm1dwr78amy399b6jysxklb6nngj10rcdc")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-these)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskellari/these")
    (synopsis "These as a transformer, ChronicleT")
    (description
     "This packages provides @@ChronicleT@@, a monad transformer based on
the @@Monad@@ instance for @@These a@@, along with the usual monad
transformer bells and whistles.")
    (license license:bsd-3)))

haskell-9.0-monad-chronicle

(define-public haskell-9.0-monad-products
  (package
    (name "haskell-9.0-monad-products")
    (version "4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-products/monad-products-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1skcjjkn14fh92l4rx3akxjg1c85jqhnlwvkkzqwz9g15bdy3gq2"))))
    (properties `((upstream-name . "monad-products") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/monad-products")
    (synopsis "Monad products")
    (description "Monad products")
    (license license:bsd-3)))

haskell-9.0-monad-products

(define-public haskell-9.0-monoid-extras
  (package
    (name "haskell-9.0-monoid-extras")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monoid-extras/monoid-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1nj5rfax9lmr1pprvgdgq90am9mknx9iv7s84smv6qaw050356jf"))))
    (properties `((upstream-name . "monoid-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "04zbzq7dbv0ddpc1dxrxn9jfyg1xj8sar6ngzhc0cji72cail503")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-groups)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/monoid-extras")
    (synopsis "Various extra monoid-related definitions and utilities")
    (description "Various extra monoid-related definitions and utilities,
such as monoid actions, monoid coproducts, semi-direct
products, \\\"deletable\\\" monoids, \\\"split\\\" monoids,
and \\\"cut\\\" monoids.")
    (license license:bsd-3)))

haskell-9.0-monoid-extras

(define-public haskell-9.0-monoid-subclasses
  (package
    (name "haskell-9.0-monoid-subclasses")
    (version "1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monoid-subclasses/monoid-subclasses-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1nglki10rlpi872p55pa8g809q5sna7yzh3zw4rqfhq89kb15wcv"))))
    (properties `((upstream-name . "monoid-subclasses") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0y8sw3zsmz5ssn2gl2fsqg44n7xf3xsf6vhrzwnkbaa97hj76nh2")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primes)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/blamario/monoid-subclasses/")
    (synopsis "Subclasses of Monoid")
    (description
     "A hierarchy of subclasses of 'Monoid' together with their instances for all data structures from base, containers, and
text packages.")
    (license license:bsd-3)))

haskell-9.0-monoid-subclasses

(define-public haskell-9.0-more-containers
  (package
    (name "haskell-9.0-more-containers")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/mtth/more-containers")
    (synopsis "A few more collections")
    (description "https://github.com/mtth/more-containers")
    (license license:expat)))

haskell-9.0-more-containers

(define-public haskell-9.0-multi-containers
  (package
    (name "haskell-9.0-multi-containers")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/zliu41/multi-containers#readme")
    (synopsis "A few multimap variants.")
    (description "A library that provides a few multimap variants.")
    (license license:bsd-3)))

haskell-9.0-multi-containers

(define-public haskell-9.0-multistate
  (package
    (name "haskell-9.0-multistate")
    (version "0.8.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/multistate/multistate-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0y42c21ha0chqhrn40a4bikdbirsw7aqg4i866frpagz1ivr915q"))))
    (properties `((upstream-name . "multistate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-example")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)))
    (home-page "https://github.com/lspitzner/multistate")
    (synopsis "like mtl's ReaderT / WriterT / StateT, but more than one
contained value/type.")
    (description
     "When using multiple Read\\/Write\\/State transformers in the same monad stack,
it becomes necessary to lift the operations in order to affect a specific
transformer.
Using heterogeneous lists (and all kinds of GHC extensions magic),
this package provides transformers that remove that necessity:
MultiReaderT\\/MultiWriterT\\/MultiStateT\\/MultiRWST can contain a
heterogeneous list of values.

See the <https://github.com/lspitzner/multistate README> for
a longer description.")
    (license license:bsd-3)))

haskell-9.0-multistate

(define-public haskell-9.0-n2o
  (package
    (name "haskell-9.0-n2o")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/xafizoff/n2o#readme")
    (synopsis "Abstract Protocol Loop")
    (description "Embeddable Application Protocol Loop")
    (license license:bsd-3)))

haskell-9.0-n2o

(define-public haskell-9.0-nagios-check
  (package
    (name "haskell-9.0-nagios-check")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-bifunctors)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/olorin/haskell-nagios-check")
    (synopsis "Package for writing monitoring plugins")
    (description "Implements Nagios plugin development guidelines
within a Haskell framework for writing Nagios
checks.")
    (license license:expat)))

haskell-9.0-nagios-check

(define-public haskell-9.0-natural-transformation
  (package
    (name "haskell-9.0-natural-transformation")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/natural-transformation/natural-transformation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1by8xwjc23l6pa9l4iv7zp82dykpll3vc3hgxk0pgva724n8xhma"))))
    (properties `((upstream-name . "natural-transformation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("10" "18d14fasp1l5xdfgp8swgcyyjd3irqj19cn298ksx9wiw43j818p")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ku-fpg/natural-transformation")
    (synopsis "A natural transformation package.")
    (description
     "A natural transformation transforms a container @@f a@@ into another
container @@g a@@. Natural transformations act as functor morphisms
in category theory.

The naming of '~>', ':~>' and '$$' were taken,
with permission, from Edward Kmett's @@indexed@@ package.")
    (license license:bsd-3)))

haskell-9.0-natural-transformation

(define-public haskell-9.0-netpbm
  (package
    (name "haskell-9.0-netpbm")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-attoparsec-binary)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-storable-record)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-vector-th-unbox)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nh2/haskell-netpbm")
    (synopsis "Loading PBM, PGM, PPM image files")
    (description
     "This package contains pure Haskell parsers for the netpbm image formats: PBM, PGM and PPM, for both ASCII and binary encodings.

All netpbm image formats are implemented (P1 - P6).

The current implementation parses PPM images at around 10 MB/s on a Core i5-2520M.")
    (license license:expat)))

haskell-9.0-netpbm

(define-public haskell-9.0-newtype-generics
  (package
    (name "haskell-9.0-newtype-generics")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "http://github.com/sjakobi/newtype-generics")
    (synopsis "A typeclass and set of functions for working with newtypes")
    (description
     "Per Conor McBride, the Newtype typeclass represents the packing and unpacking of a newtype,
and allows you to operate under that newtype with functions such as ala.
Generics support was added in version 0.4, making this package a full replacement
for the original newtype package, and a better alternative to newtype-th.")
    (license license:bsd-3)))

haskell-9.0-newtype-generics

(define-public haskell-9.0-nonemptymap
  (package
    (name "haskell-9.0-nonemptymap")
    (version "0.0.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/nonemptymap/nonemptymap-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pzs51kmsyarv62qqbskhw2xlkjp74bwcgs9a8ri1jk96m64rg94"))))
    (properties `((upstream-name . "nonemptymap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ChristopherDavenport/nonemptymap#readme")
    (synopsis "A NonEmptyMap Implementation")
    (description
     "This package intends to allow general use of a NonEmptyMap
which is very beneficial as sometimes you want the functionality
this provides.")
    (license license:bsd-3)))

haskell-9.0-nonemptymap

(define-public haskell-9.0-nsis
  (package
    (name "haskell-9.0-nsis")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/nsis/nsis-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "12vp44g56x6lkagh9qm5rf0hfrn7kqk4jxsswlml60iji7r8x9mx"))))
    (properties `((upstream-name . "nsis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-uniplate)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ndmitchell/nsis#readme")
    (synopsis "DSL for producing Windows Installer using NSIS.")
    (description
     "NSIS (Nullsoft Scriptable Install System, <http://nsis.sourceforge.net/>) is a tool that allows programmers
to create installers for Windows.
This library provides an alternative syntax for NSIS scripts, as an embedded Haskell language, removing much
of the hard work in developing an install script. Simple NSIS installers should look mostly the same, complex ones should
be significantly more maintainable.")
    (license license:bsd-3)))

haskell-9.0-nsis

(define-public haskell-9.0-once
  (package
    (name "haskell-9.0-once")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
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

haskell-9.0-once

(define-public haskell-9.0-openexr-write
  (package
    (name "haskell-9.0-openexr-write")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-vector-split)
                  (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "git://klacansky.com/openexr-write.git")
    (synopsis "Library for writing images in OpenEXR HDR file format.")
    (description
     "OpenEXR allows to store pixels as floating point numbers and thus can capture high dynamic range.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.0-openexr-write

(define-public haskell-9.0-optics-extra
  (package
    (name "haskell-9.0-optics-extra")
    (version "0.4.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/optics-extra/optics-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hfa5yb7l3l310lfxkii13fjzb69g619agadc5a86i734nisf8vy"))))
    (properties `((upstream-name . "optics-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0bpr1bkb7mmww028n8ikwa0qhdl7ybxpb9s887dlp3dvxr5iq8nq")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-indexed-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-indexed-traversable-instances)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-optics-core)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/optics-extra")
    (synopsis "Extra utilities and instances for optics-core")
    (description
     "This package provides extra definitions and instances that extend the
@@<https://hackage.haskell.org/package/optics-core optics-core>@@ package,
without incurring too many dependencies.  See the
@@<https://hackage.haskell.org/package/optics optics>@@ package for more
documentation.")
    (license license:bsd-3)))

haskell-9.0-optics-extra

(define-public haskell-9.0-optparse-text
  (package
    (name "haskell-9.0-optparse-text")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)))
    (home-page "https://github.com/passy/optparse-text#readme")
    (synopsis "Data.Text helpers for optparse-applicative")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.0-optparse-text

(define-public haskell-9.0-pagination
  (package
    (name "haskell-9.0-pagination")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/mrkkrp/pagination")
    (synopsis "Framework-agnostic pagination boilerplate")
    (description "Framework-agnostic pagination boilerplate.")
    (license license:bsd-3)))

haskell-9.0-pagination

(define-public haskell-9.0-parsers
  (package
    (name "haskell-9.0-parsers")
    (version "0.12.11")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/parsers/parsers-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "068k7fm0s13z0jkkffc149cqcxnzpk1m066lp4ccdfcb41km1zwi"))))
    (properties `((upstream-name . "parsers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbinary" "-fparsec" "-fattoparsec")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-orphans)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-charset)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/parsers/")
    (synopsis "Parsing combinators")
    (description
     "This library provides convenient combinators for working with and building parsing combinator libraries.

Given a few simple instances, e.g. for the class 'Text.Parser.Combinators.Parsing' in \"Text.Parser.Combinators.Parsing\" you
get access to a large number of canned definitions. Instances exist for the parsers provided by @@parsec@@,
@@attoparsec@@ and base’s \"Text.Read\".")
    (license license:bsd-3)))

haskell-9.0-parsers

(define-public haskell-9.0-password-types
  (package
    (name "haskell-9.0-password-types")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/password-types/password-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "090aqq2xs6m5djvr9zfdj7rxafbmj8d05vij5rchj1f9c46dclb5"))))
    (properties `((upstream-name . "password-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0i6djm9zsb95qdan0vr9shilhmzjxqsqrjy9v16hcaph49wnw7pr")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/cdepillabout/password/tree/master/password-types#readme")
    (synopsis "Types for handling passwords")
    (description
     "A library providing types for working with plain-text and hashed passwords.")
    (license license:bsd-3)))

haskell-9.0-password-types

(define-public haskell-9.0-path-pieces
  (package
    (name "haskell-9.0-path-pieces")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/path-pieces")
    (synopsis "Components of paths.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/path-pieces>.")
    (license license:bsd-3)))

haskell-9.0-path-pieces

(define-public haskell-9.0-pava
  (package
    (name "haskell-9.0-pava")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/dschrempf/pava#readme")
    (synopsis "Greatest convex majorants and least concave minorants")
    (description
     "Please see the README on GitHub at <https://github.com/dschrempf/pava#readme>")
    (license license:gpl3+)))

haskell-9.0-pava

(define-public haskell-9.0-pinch
  (package
    (name "haskell-9.0-pinch")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-network-run)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
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

haskell-9.0-pinch

(define-public haskell-9.0-polysemy
  (package
    (name "haskell-9.0-polysemy")
    (version "1.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/polysemy/polysemy-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1s2hmfp1ii5q8qpxiqm825ykh4fpcq06wphfqbhp7p3sxkkr3c68"))))
    (properties `((upstream-name . "polysemy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-dump-core" "-ferror-messages")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-first-class-families)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-inspection-testing)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-th-abstraction)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-type-errors)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-unagi-chan)))
    (home-page "https://github.com/polysemy-research/polysemy#readme")
    (synopsis "Higher-order, low-boilerplate free monads.")
    (description
     "Please see the README on GitHub at <https://github.com/polysemy-research/polysemy#readme>")
    (license license:bsd-3)))

haskell-9.0-polysemy

(define-public haskell-9.0-pretty-types
  (package
    (name "haskell-9.0-pretty-types")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)))
    (home-page "https://github.com/sheyll/pretty-types#readme")
    (synopsis "A small pretty printing DSL for complex types.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.0-pretty-types

(define-public haskell-9.0-projectroot
  (package
    (name "haskell-9.0-projectroot")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/yamadapc/haskell-projectroot")
    (synopsis "Bindings to the projectroot C logic")
    (description
     "Simple way of finding the root of a project given an
entry-point. This module provides bindings to the
<https://github.com/yamadapc/projectroot projectroot> C library")
    (license license:expat)))

haskell-9.0-projectroot

(define-public haskell-9.0-proto-lens-setup
  (package
    (name "haskell-9.0-proto-lens-setup")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-proto-lens-protoc)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)))
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

haskell-9.0-proto-lens-setup

(define-public haskell-9.0-protobuf-simple
  (package
    (name "haskell-9.0-protobuf-simple")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)))
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

haskell-9.0-protobuf-simple

(define-public haskell-9.0-protocol-radius-test
  (package
    (name "haskell-9.0-protocol-radius-test")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-protocol-radius)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-quickcheck-simple)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/protocol-radius-test")
    (synopsis "testsuit of protocol-radius haskell package")
    (description "This package provides
testsuit of protocol-radius haskell package.")
    (license license:bsd-3)))

haskell-9.0-protocol-radius-test

(define-public haskell-9.0-quickcheck-assertions
  (package
    (name "haskell-9.0-quickcheck-assertions")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-ieee754)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-pretty-show)))
    (home-page "https://github.com/s9gf4ult/quickcheck-assertions")
    (synopsis "HUnit like assertions for QuickCheck")
    (description
     "Library with convenient assertions for QuickCheck properties like in HUnit")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.0-quickcheck-assertions

(define-public haskell-9.0-rampart
  (package
    (name "haskell-9.0-rampart")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/rampart")
    (synopsis "Determine how intervals relate to each other.")
    (description "Rampart determines how intervals relate to each other.")
    (license license:expat)))

haskell-9.0-rampart

(define-public haskell-9.0-ramus
  (package
    (name "haskell-9.0-ramus")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-quickcheck-io)))
    (home-page "https://github.com/NickSeagull/ramus#readme")
    (synopsis "Elm signal system for Haskell")
    (description
     "Ramus is a direct port of purescript-signal into Haskell, offering the Elm signal system for Haskell.")
    (license license:expat)))

haskell-9.0-ramus

(define-public haskell-9.0-rec-smallarray
  (package
    (name "haskell-9.0-rec-smallarray")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)))
    (home-page "https://github.com/re-xyr/rec-smallarray#readme")
    (synopsis "SmallArray-based extensible records for small-scale fast reads")
    (description
     "Please see the README on GitHub at <https://github.com/re-xyr/rec-smallarray#readme>")
    (license license:bsd-3)))

haskell-9.0-rec-smallarray

(define-public haskell-9.0-reducers
  (package
    (name "haskell-9.0-reducers")
    (version "3.12.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/reducers/reducers-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hsycdir52jdijnnvc77jj971fjrrc722v952wr62ivrvx2zarn0"))))
    (properties `((upstream-name . "reducers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1ji6rp0f857d0vp2kjqcck7avrjgqvqjgwnhdcxs3zbjkwpqyhfb")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-fingertree)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/reducers/")
    (synopsis
     "Semigroups, specialized containers and a general map/reduce framework")
    (description
     "Semigroups, specialized containers and a general map/reduce framework.")
    (license license:bsd-3)))

haskell-9.0-reducers

(define-public haskell-9.0-regex-applicative-text
  (package
    (name "haskell-9.0-regex-applicative-text")
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
       ("6" "16a2d8d84gzbjbvs7pc7sz5bi7rz2s5c57gkwi0vf5lmscgjy25h")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-regex-applicative)))
    (home-page "https://github.com/phadej/regex-applicative-text#readme")
    (synopsis "regex-applicative on text")
    (description "Wrapped regex-applicative primitives to work with Text")
    (license license:bsd-3)))

haskell-9.0-regex-applicative-text

(define-public haskell-9.0-regex-with-pcre
  (package
    (name "haskell-9.0-regex-with-pcre")
    (version "1.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-with-pcre/regex-with-pcre-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00x90kj8xc9pnnzryx45rnvfh0psya6kc174y7zx43jgvbz29icy"))))
    (properties `((upstream-name . "regex-with-pcre") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-regex)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-regex-base)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
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

haskell-9.0-regex-with-pcre

(define-public haskell-9.0-resourcet
  (package
    (name "haskell-9.0-resourcet")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)))
    (home-page "http://github.com/snoyberg/conduit")
    (synopsis "Deterministic allocation and freeing of scarce resources.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/resourcet>.")
    (license license:bsd-3)))

haskell-9.0-resourcet

(define-public haskell-9.0-rfc1751
  (package
    (name "haskell-9.0-rfc1751")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/xenog/rfc1751.git#readme")
    (synopsis "RFC-1751 library for Haskell")
    (description "Convert 128-bit ByteString to/from 12 English words.")
    (license license:expat)))

haskell-9.0-rfc1751

(define-public haskell-9.0-rot13
  (package
    (name "haskell-9.0-rot13")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/kvanberendonck/codec-rot13")
    (synopsis "Fast ROT13 cipher for Haskell.")
    (description
     "A fast ROT13 cipher for Haskell implemented using as few branches as possible.
For more information on ROT13, see: <https://en.wikipedia.org/wiki/ROT13>")
    (license license:bsd-3)))

haskell-9.0-rot13

(define-public haskell-9.0-safe-exceptions
  (package
    (name "haskell-9.0-safe-exceptions")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-void)))
    (home-page "https://github.com/fpco/safe-exceptions#readme")
    (synopsis "Safe, consistent, and easy exception handling")
    (description "Please see README.md")
    (license license:expat)))

haskell-9.0-safe-exceptions

(define-public haskell-9.0-salak
  (package
    (name "haskell-9.0-salak")
    (version "0.3.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/salak/salak-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "00qyd09az0ldfidfgcki8z3r9gcpxmss3iyr99as5bky29rlz9n3"))))
    (properties `((upstream-name . "salak") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "1wrq2rdrxk96an5k1igcn09cma3dz9y2yp58xjlg2lh22djm297m")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-heaps)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/leptonyu/salak#readme")
    (synopsis "Configuration (re)Loader and Parser.")
    (description
     "This library defines a universal procedure to load configurations and parse properties, also supports reload configuration files.")
    (license license:expat)))

haskell-9.0-salak

(define-public haskell-9.0-sbv
  (package
    (name "haskell-9.0-sbv")
    (version "8.17")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sbv/sbv-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0l9dwydrjipgq3cbv0g6y820mi7lf5lcn3hidl6a60zzdrkfyxhd"))))
    (properties `((upstream-name . "sbv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "18jjnxxq9bh5raxw3khgkx14wq4fv1kfd59lhh9v55z59sjaydiy")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-libBF)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-uniplate)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://leventerkok.github.io/sbv/")
    (synopsis
     "SMT Based Verification: Symbolic Haskell theorem prover using SMT solving.")
    (description
     "Express properties about Haskell programs and automatically prove them using SMT
(Satisfiability Modulo Theories) solvers.

For details, please see: <http://leventerkok.github.io/sbv/>")
    (license license:bsd-3)))

haskell-9.0-sbv

(define-public haskell-9.0-scanner
  (package
    (name "haskell-9.0-scanner")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-fail)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/Yuras/scanner")
    (synopsis
     "Fast non-backtracking incremental combinator parsing for bytestrings")
    (description "Parser combinator library designed to be fast. It doesn't
support backtracking.")
    (license license:bsd-3)))

haskell-9.0-scanner

(define-public haskell-9.0-semialign
  (package
    (name "haskell-9.0-semialign")
    (version "1.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/semialign/semialign-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ci1jpp37p1lzyjxc1bljd6zgg407qmkl9s36b50qjxf85q6j06r"))))
    (properties `((upstream-name . "semialign") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsemigroupoids")
       #:cabal-revision
       ("3" "0dbcdnksik508i12arh3s6bis6779lx5f1df0jkc0bp797inhd7f")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-indexed-traversable-instances)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-these)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskellari/these")
    (synopsis "Align and Zip type-classes from the common Semialign ancestor.")
    (description
     "The major use of @@These@@ of this is provided by the @@align@@ member of
@@Semialign@@ class, representing a generalized notion of \"zipping with padding\"
that combines structures without truncating to the size of the smaller input.

It turns out that @@zip@@ operation fits well the @@Semialign@@ class,
forming lattice-like structure.")
    (license license:bsd-3)))

haskell-9.0-semialign

(define-public haskell-9.0-semigroupoid-extras
  (package
    (name "haskell-9.0-semigroupoid-extras")
    (version "5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/semigroupoid-extras/semigroupoid-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ciq1jnc0d9d8jph9103v04vphiz7xqa69a8f4dmmcf3bjsk6bhh"))))
    (properties `((upstream-name . "semigroupoid-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fprofunctors")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/semigroupoid-extras")
    (synopsis "Semigroupoids that depend on PolyKinds")
    (description "Semigroupoids that depend on PolyKinds")
    (license license:bsd-3)))

haskell-9.0-semigroupoid-extras

(define-public haskell-9.0-sexpr-parser
  (package
    (name "haskell-9.0-sexpr-parser")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sexpr-parser/sexpr-parser-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0idcs6zpx0r3sn6nhh8kjswmsi0pwygjxzbscfd0y0gd6yjz1i86"))))
    (properties `((upstream-name . "sexpr-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-megaparsec)))
    (home-page "https://github.com/rcook/sexpr-parser#readme")
    (synopsis "Simple s-expression parser")
    (description
     "This package provides a simple Megaparsec-based s-expression parser.")
    (license license:expat)))

haskell-9.0-sexpr-parser

(define-public haskell-9.0-should-not-typecheck
  (package
    (name "haskell-9.0-should-not-typecheck")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hspec-expectations)))
    (home-page "http://github.com/CRogers/should-not-typecheck")
    (synopsis
     "A HUnit/hspec assertion library to verify that an expression does not typecheck")
    (description
     "For examples and an introduction to the library please take a look at the <https://github.com/CRogers/should-not-typecheck#should-not-typecheck- README> on github.")
    (license license:bsd-3)))

haskell-9.0-should-not-typecheck

(define-public haskell-9.0-sound-collage
  (package
    (name "haskell-9.0-sound-collage")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sound-collage/sound-collage-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09g63b3k0l30z3lxmcz0zpggqqhnr7m01wh2vpm5v561rbnl8rsi"))))
    (properties `((upstream-name . "sound-collage") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "07zs924gils8nsb5b8q6lmh4g6iln6dkj3qic8p8cpwkrazjfwsx")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-comfort-array)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-comfort-fftw)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-numeric-prelude)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-pathtype)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-sample-frame)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-shell-utility)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-soxlib)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-storablevector)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-synthesizer-core)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "https://hackage.haskell.org/package/sound-collage")
    (synopsis "Approximate a song from other pieces of sound")
    (description
     "This program allows you to decompose a set of audio files into chunks
and use these chunks for building a new audio file
that matches another given audio file.
This is very similar to constructing an image
from small images that are layed out in a rectangular grid.")
    (license license:bsd-3)))

haskell-9.0-sound-collage

(define-public haskell-9.0-splitmix-distributions
  (package
    (name "haskell-9.0-splitmix-distributions")
    (version "0.9.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/splitmix-distributions/splitmix-distributions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0y6v93kgbldkf9pznrfy8848njy7cln7bd3nrx2b7dmrz6yd4rpz"))))
    (properties `((upstream-name . "splitmix-distributions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-erf)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-splitmix)))
    (home-page "https://github.com/ocramz/splitmix-distributions#readme")
    (synopsis
     "Random samplers for some common distributions, based on splitmix.")
    (description
     "Random samplers for some common distributions, as well as a convenient interface for composing them, based on splitmix. Please see the README on GitHub at <https://github.com/ocramz/splitmix-distributions#readme>")
    (license license:bsd-3)))

haskell-9.0-splitmix-distributions

(define-public haskell-9.0-stitch
  (package
    (name "haskell-9.0-stitch")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/stitch")
    (synopsis "lightweight CSS DSL")
    (description
     "a tiny css preprocessor dsl for haskell – check out the readme at <https://github.com/intolerable/stitch>")
    (license license:bsd-3)))

haskell-9.0-stitch

(define-public haskell-9.0-stopwatch
  (package
    (name "haskell-9.0-stopwatch")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-clock)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/debug-ito/stopwatch")
    (synopsis "A simple stopwatch utility")
    (description "A simple stopwatch utility")
    (license license:bsd-3)))

haskell-9.0-stopwatch

(define-public haskell-9.0-streaming
  (package
    (name "haskell-9.0-streaming")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-mmorph)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)))
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

haskell-9.0-streaming

(define-public haskell-9.0-streaming-commons
  (package
    (name "haskell-9.0-streaming-commons")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/fpco/streaming-commons")
    (synopsis
     "Common lower-level functions needed by various streaming data libraries")
    (description
     "Provides low-dependency functionality commonly needed by various streaming data libraries, such as conduit and pipes.")
    (license license:expat)))

haskell-9.0-streaming-commons

(define-public haskell-9.0-string-conv
  (package
    (name "haskell-9.0-string-conv")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/string-conv/string-conv-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15lh7b3jhhv4bwgsswmq447nz4l97gi0hh8ws9njpidi1q0s7kir"))))
    (properties `((upstream-name . "string-conv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Soostone/string-conv")
    (synopsis "Standardized conversion between string types")
    (description
     "Avoids the need to remember many different functions for converting string types. Just use one universal function toS for all monomorphic string conversions.")
    (license license:bsd-3)))

haskell-9.0-string-conv

(define-public haskell-9.0-string-conversions
  (package
    (name "haskell-9.0-string-conversions")
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
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/soenkehahn/string-conversions#readme")
    (synopsis "Simplifies dealing with different types for strings")
    (description
     "Provides a simple type class for converting values of different string types into values of other string types.")
    (license license:bsd-3)))

haskell-9.0-string-conversions

(define-public haskell-9.0-stringbuilder
  (package
    (name "haskell-9.0-stringbuilder")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/stringbuilder")
    (synopsis "A writer monad for multi-line string literals")
    (description "<https://github.com/sol/stringbuilder#readme>")
    (license license:expat)))

haskell-9.0-stringbuilder

(define-public haskell-9.0-sum-type-boilerplate
  (package
    (name "haskell-9.0-sum-type-boilerplate")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sum-type-boilerplate/sum-type-boilerplate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17xby0mqdsbax0afrfr3p8c6cj5r94byy8gprgyrmq84qqadls9i"))))
    (properties `((upstream-name . "sum-type-boilerplate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/jdreaver/sum-type-boilerplate#readme")
    (synopsis "Library for reducing the boilerplate involved with sum types")
    (description
     "Library for reducing the boilerplate involved in creating and manipulating sum types")
    (license license:expat)))

haskell-9.0-sum-type-boilerplate

(define-public haskell-9.0-synthesizer-midi
  (package
    (name "haskell-9.0-synthesizer-midi")
    (version "0.6.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/synthesizer-midi/synthesizer-midi-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1f57i0lz8wy9kz6qkpbrpywlf0lxwq44yqgzc9kgrb4gy97p0cm5"))))
    (properties `((upstream-name . "synthesizer-midi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsplitbase" "-f-buildexamples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-accessor)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-data-accessor-transformers)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-event-list)
                  (@ (gnu packages stackage ghc-9.0 stage007) haskell-9.0-midi)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-non-negative)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-numeric-prelude)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage007) haskell-9.0-sox)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-storable-record)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-storablevector)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-synthesizer-core)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-synthesizer-dimensional)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "http://www.haskell.org/haskellwiki/Synthesizer")
    (synopsis "Render audio signals from MIDI files or realtime messages")
    (description "This package allows to read MIDI events
and to convert them to audio and control signals.
Included is a basic synthesizer that renders MIDI to WAV
(or other audio signal formats supported by SoX).")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-synthesizer-midi

(define-public haskell-9.0-sysinfo
  (package
    (name "haskell-9.0-sysinfo")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hspec-expectations)))
    (home-page "https://github.com/psibi/sysinfo#readme")
    (synopsis "Haskell Interface for getting overall system statistics")
    (description "This package can be used to get system statistics like
uptime, free memory, system load etc. Note that
the package works *only* on Linux system with
kernel version >= 2.3.23 and uses FFI calls.")
    (license license:bsd-3)))

haskell-9.0-sysinfo

(define-public haskell-9.0-tagged-transformer
  (package
    (name "haskell-9.0-tagged-transformer")
    (version "0.8.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tagged-transformer/tagged-transformer-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10wlwqxzm1xdyzxl6xyfsrb40zmvh7g0y3w0a69b1lw2rp6v4vyy"))))
    (properties `((upstream-name . "tagged-transformer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-distributive)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-reflection)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/tagged-transformer")
    (synopsis "Monad transformer carrying an extra phantom type tag")
    (description
     "Provides newtype wrappers for phantom types to avoid unsafely passing dummy arguments")
    (license license:bsd-3)))

haskell-9.0-tagged-transformer

(define-public haskell-9.0-tasty-hspec
  (package
    (name "haskell-9.0-tasty-hspec")
    (version "1.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-hspec/tasty-hspec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ibl2xi6mmqad2mriz67nb7pjwwvjik385amp24j9kc7a7zkx091"))))
    (properties `((upstream-name . "tasty-hspec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0a6r4gzxzp6n90z0nif7ha7p7am57hs48i54i2y4z9kgjv6lnvll")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-hspec-core)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-tasty-smallcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mitchellwrosen/tasty-hspec")
    (synopsis "Hspec support for the Tasty test framework.")
    (description "This package provides a Tasty provider for Hspec test
suites.")
    (license license:bsd-3)))

haskell-9.0-tasty-hspec

(define-public haskell-9.0-tensors
  (package
    (name "haskell-9.0-tensors")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-reflection)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/leptonyu/tensors#readme")
    (synopsis "Tensor in Haskell")
    (description "Tensor use type level programming in haskell.")
    (license license:bsd-3)))

haskell-9.0-tensors

(define-public haskell-9.0-text-conversions
  (package
    (name "haskell-9.0-text-conversions")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/cjdev/text-conversions")
    (synopsis "Safe conversions between textual types")
    (description "Safe conversions between textual types")
    (license license:isc)))

haskell-9.0-text-conversions

(define-public haskell-9.0-text-metrics
  (package
    (name "haskell-9.0-text-metrics")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/mrkkrp/text-metrics")
    (synopsis "Calculate various string metrics efficiently")
    (description "Calculate various string metrics efficiently.")
    (license license:bsd-3)))

haskell-9.0-text-metrics

(define-public haskell-9.0-text-regex-replace
  (package
    (name "haskell-9.0-text-regex-replace")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-smallcheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-text-icu)))
    (propagated-inputs (list (@ (gnu packages icu4c) icu4c-71)))
    (home-page "https://hackage.haskell.org/package/text-regex-replace")
    (synopsis "Easy replacement when using text-icu regexes.")
    (description
     "This provides a convenient API for doing replacements off of a regular
expression, similar to what regex libraries in other languages provide.

At this point, this hasn't been used enough to have any idea of its
performance. Caveat emptor.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.0-text-regex-replace

(define-public haskell-9.0-text-zipper
  (package
    (name "haskell-9.0-text-zipper")
    (version "0.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-zipper/text-zipper-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07l1pyx93gv95cn1wh1di129axhm9sqsn4znykliacv60ld854ys"))))
    (properties `((upstream-name . "text-zipper") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/jtdaugherty/text-zipper/")
    (synopsis "A text editor zipper library")
    (description "This library provides a zipper and API for editing text.")
    (license license:bsd-3)))

haskell-9.0-text-zipper

(define-public haskell-9.0-th-compat
  (package
    (name "haskell-9.0-th-compat")
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
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
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

haskell-9.0-th-compat

(define-public haskell-9.0-th-printf
  (package
    (name "haskell-9.0-th-printf")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-charset)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-integer-logarithms)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-microlens-platform)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-th-lift)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/pikajude/th-printf#readme")
    (synopsis "Quasiquoters for printf")
    (description "Quasiquoters for string and text printf")
    (license license:expat)))

haskell-9.0-th-printf

(define-public haskell-9.0-thread-hierarchy
  (package
    (name "haskell-9.0-thread-hierarchy")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/nshimaza/thread-hierarchy#readme")
    (synopsis "Simple Haskell thread management in hierarchical manner")
    (description
     "Please see the README on GitHub at <https://github.com/nshimaza/thread-hierarchy#readme>")
    (license license:expat)))

haskell-9.0-thread-hierarchy

(define-public haskell-9.0-timers-tick
  (package
    (name "haskell-9.0-timers-tick")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/timers-tick/timers-tick-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kv646l77bzjgs2v39axsi405zvapwks1vj4ff341r5agpwrfqlc"))))
    (properties `((upstream-name . "timers-tick") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-developer")
       #:cabal-revision
       ("1" "1qsmzkm0k14z06czpbjgkbzb1liws3iass0rwsi5wp5i62jkhczs")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "http://ariis.it/static/articles/timers-tick/page.html")
    (synopsis "tick based timers")
    (description "Tick-based timers and utilities, for games and
discrete-time programs.
Includes types and functions to work with sequence-based
resources (e.g. animations, frames).")
    (license license:bsd-3)))

haskell-9.0-timers-tick

(define-public haskell-9.0-tmapmvar
  (package
    (name "haskell-9.0-tmapmvar")
    (version "0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tmapmvar/tmapmvar-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1qxl48wcbqvg6fymb8kpr4wz25ixkfvnvli2c7ncjxzdigyqrrd6"))))
    (properties `((upstream-name . "tmapmvar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/tmapmvar")
    (synopsis "A single-entity stateful Map in STM, similar to tmapchan")
    (description
     "Please see the README on Github at <https://git.localcooking.com/tooling/tmapmvar#readme>")
    (license license:bsd-3)))

haskell-9.0-tmapmvar

(define-public haskell-9.0-tophat
  (package
    (name "haskell-9.0-tophat")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages bioinformatics) tophat)))
    (home-page "https://github.com/jcranch/tophat")
    (synopsis "Template-to-Haskell preprocessor, and templating language")
    (description "Please see README.md")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-tophat

(define-public haskell-9.0-trimdent
  (package
    (name "haskell-9.0-trimdent")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-hspec-expectations-pretty-diff)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-raw-strings-qq)))
    (home-page "https://github.com/gregorias/trimdent#readme")
    (synopsis "A utility for neat multiline string trimming")
    (description
     "Please see the README on GitHub at <https://github.com/gregorias/trimdent#readme>")
    (license (license "FSDG-compatible" "AGPL" ""))))

haskell-9.0-trimdent

(define-public haskell-9.0-ttl-hashtables
  (package
    (name "haskell-9.0-ttl-hashtables")
    (version "1.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ttl-hashtables/ttl-hashtables-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1y3wzb5fhdmyszr5902r01c6481nsaiw0y4imzppyqcap7ppl3fj"))))
    (properties `((upstream-name . "ttl-hashtables") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0ghzp5kqk5a6831kxfizsnjjcaflinqb26l4d5vjwk7763jad195")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-clock)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-failable)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-hashtables)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/ttl-hashtables")
    (synopsis
     "Extends hashtables so that entries added can be expired after a TTL")
    (description
     "This library extends fast mutable hashtables so that entries added can be expired after a given TTL (time to live). This TTL can be specified as a default property of the table or on a per entry basis.")
    (license license:bsd-3)))

haskell-9.0-ttl-hashtables

(define-public haskell-9.0-type-of-html
  (package
    (name "haskell-9.0-type-of-html")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-double-conversion)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://github.com/knupfer/type-of-html")
    (synopsis "High performance type driven html generation.")
    (description
     "This library makes most invalid html documents compile time errors and uses advanced type level features to realise compile time computations.")
    (license license:bsd-3)))

haskell-9.0-type-of-html

(define-public haskell-9.0-typed-process
  (package
    (name "haskell-9.0-typed-process")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)))
    (home-page "https://github.com/fpco/typed-process")
    (synopsis "Run external processes, with strong typing of streams")
    (description
     "Please see the tutorial at <https://github.com/fpco/typed-process#readme>")
    (license license:expat)))

haskell-9.0-typed-process

(define-public haskell-9.0-typenums
  (package
    (name "haskell-9.0-typenums")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/adituv/typenums#readme")
    (synopsis "Type level numbers using existing Nat functionality")
    (description
     "Type level numbers using existing Nat functionality. Uses kind-polymorphic typeclasses and type families to facilitate more general code compatible with existing code using type-level Naturals.")
    (license license:bsd-3)))

haskell-9.0-typenums

(define-public haskell-9.0-unicode-data
  (package
    (name "haskell-9.0-unicode-data")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
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

haskell-9.0-unicode-data

(define-public haskell-9.0-unidecode
  (package
    (name "haskell-9.0-unidecode")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/mwotton/unidecode#readme")
    (synopsis "Haskell binding of Unidecode")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.0-unidecode

(define-public haskell-9.0-unix-time
  (package
    (name "haskell-9.0-unix-time")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hsc2hs)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-old-locale)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-old-time)))
    (home-page "https://hackage.haskell.org/package/unix-time")
    (synopsis "Unix time parser/formatter and utilities")
    (description "Fast parser\\/formatter\\/utilities for Unix time")
    (license license:bsd-3)))

haskell-9.0-unix-time

(define-public haskell-9.0-urbit-hob
  (package
    (name "haskell-9.0-urbit-hob")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/urbit-hob/urbit-hob-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1w38bsjis13lh6jry2rln3xbc9ap7lk3dhi6rb6kddashjyibfr0"))))
    (properties `((upstream-name . "urbit-hob") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-release")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-hspec-core)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-murmur3)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/urbit/urbit-hob")
    (synopsis "Hoon-style atom manipulation and printing functions")
    (description
     "Here you can primarily find functions for dealing with the \\\"patp\\\" and
\\\"patq\\\" /phonetic bases/ used by Urbit.  The \\@@p encoding is used for naming
ships, while the \\@@q encoding is used for arbitrary data; they each uniquely
represent an underlying natural number (or /atom/) in a memorable and
pronounceable fashion.

The \\@@p encoding is an /obfuscated/ representation of an underlying atom, in
particular, hence the \\\"ob\\\" in the library's name.

The @@Urbit.Ob@@ module exposes two families of functions, 'patp' and
'fromPatp', and then 'patq' and 'fromPatq', for converting between
representations.  You can also render a 'Patp' or 'Patq' value as 'Text' via
the 'renderPatp' and 'renderPatq' functions, or parse them from 'Text' via
'parsePatp' and 'parsePatq'.

Since \\@@p values represent ships, some utilities for dealing with ships are
also exposed.  The 'clan' and 'sein' functions are useful for determining a
ship's class and (default) parent, respectively.

Some quick examples:

>>> :set -XOverloadedStrings
>>> import qualified Urbit.Ob as Ob
>>> let nidsut = Ob.patp 15663360
>>> let marzod = Ob.patq (Ob.fromPatp nidsut)
>>> Ob.renderPatp nidsut
\"~nidsut-tomdun\"
>>> Ob.renderPatq marzod
\"~mun-marzod\"
>>> Ob.fromPatp nidsut
15663360
>>> Ob.parsePatp \"~nidsut-tomdun\"
Right ~nidsut-tomdun
>>> Ob.clan nidsut
Planet
>>> Ob.sein nidsut
~marzod")
    (license license:expat)))

haskell-9.0-urbit-hob

(define-public haskell-9.0-validity
  (package
    (name "haskell-9.0-validity")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
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

haskell-9.0-validity

(define-public haskell-9.0-valor
  (package
    (name "haskell-9.0-valor")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/mastarija/valor#readme")
    (synopsis "Simple and powerful data validation")
    (description "Simple and powerful data validation library with
Applicative and Monad interface. Great for constructing
structured errors.")
    (license license:expat)))

haskell-9.0-valor

(define-public haskell-9.0-vcs-ignore
  (package
    (name "haskell-9.0-vcs-ignore")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Glob)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)))
    (home-page "https://github.com/vaclavsvejcar/vcs-ignore")
    (synopsis "Library for handling files ignored by VCS systems.")
    (description
     "vcs-ignore is small Haskell library used to find, check and process files ignored by selected VCS.")
    (license license:bsd-3)))

haskell-9.0-vcs-ignore

(define-public haskell-9.0-vector-bytes-instances
  (package
    (name "haskell-9.0-vector-bytes-instances")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-bytes-instances/vector-bytes-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i4cxgm984qs5ldp1x7m9blxh8wd5y8acy2ic8kpgaak8pzycrkn"))))
    (properties `((upstream-name . "vector-bytes-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-bytes)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0001/vector-bytes-instances")
    (synopsis
     "Serial (from the bytes package) for Vector (from the vector package)")
    (description
     "Serial (from the bytes package) for Vector (from the vector package)

Based on the original BSD3-licensed work by Don Stewart in the
vector-binary-instances library.")
    (license license:bsd-3)))

haskell-9.0-vector-bytes-instances

(define-public haskell-9.0-vformat
  (package
    (name "haskell-9.0-vformat")
    (version "0.14.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/vformat/vformat-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0wg419mqdqsi6msgy4k7jgqdqba96pmv58dpyd6ar6hq7b90na69"))))
    (properties `((upstream-name . "vformat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "074y0nkygj8klkpm3rpdp7z2yj9np9y6rzhc7i62j0mykd27h8hq")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/versioncloud/vformat#readme")
    (synopsis "A Python str.format() like formatter")
    (description "Please see the http://hackage.haskell.org/package/vformat")
    (license license:bsd-3)))

haskell-9.0-vformat

(define-public haskell-9.0-wave
  (package
    (name "haskell-9.0-wave")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)))
    (home-page "https://github.com/mrkkrp/wave")
    (synopsis "Work with WAVE and RF64 files")
    (description "Work with WAVE and RF64 files.")
    (license license:bsd-3)))

haskell-9.0-wave

(define-public haskell-9.0-wikicfp-scraper
  (package
    (name "haskell-9.0-wikicfp-scraper")
    (version "0.1.0.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wikicfp-scraper/wikicfp-scraper-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03l8ggnnkq7gx5qf9rrng50wb5cabyam8vrs2bnrm02gcgjx89sx"))))
    (properties `((upstream-name . "wikicfp-scraper") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scalpel-core)))
    (home-page "https://github.com/debug-ito/wikicfp-scraper")
    (synopsis "Scrape WikiCFP web site")
    (description "Scrape WikiCFP web site. See 'Web.WikiCFP.Scraper'.")
    (license license:bsd-3)))

haskell-9.0-wikicfp-scraper

(define-public haskell-9.0-wild-bind
  (package
    (name "haskell-9.0-wild-bind")
    (version "0.1.2.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wild-bind/wild-bind-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ag0lwh5pii8z356sii2zm2i7qyk9q9j7ivc3x0fkvz6p5gk1aj1"))))
    (properties `((upstream-name . "wild-bind") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)))
    (home-page "https://github.com/debug-ito/wild-bind")
    (synopsis "Dynamic key binding framework")
    (description
     "Dynamic key binding framework. See <https://github.com/debug-ito/wild-bind>")
    (license license:bsd-3)))

haskell-9.0-wild-bind

(define-public haskell-9.0-with-location
  (package
    (name "haskell-9.0-with-location")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/sol/with-location#readme")
    (synopsis
     "Use ImplicitParams-based source locations in a backward compatible way")
    (description "")
    (license license:expat)))

haskell-9.0-with-location

(define-public haskell-9.0-witherable
  (package
    (name "haskell-9.0-witherable")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/witherable/witherable-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0121ic4xkv3k568j23zp22a5lrv0k11h94fq7cbijd18fjr2n3br"))))
    (properties `((upstream-name . "witherable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1f2bvl41by904lnr0dk6qgasqwadq2w48l7fj51bp2h8bqbkdjyc")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-orphans)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-indexed-traversable-instances)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fumieval/witherable")
    (synopsis "filterable traversable")
    (description
     "A stronger variant of `traverse` which can remove elements and generalised mapMaybe, catMaybes, filter")
    (license license:bsd-3)))

haskell-9.0-witherable

(define-public haskell-9.0-word-trie
  (package
    (name "haskell-9.0-word-trie")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/yi-editor/word-trie")
    (synopsis "Implementation of a finite trie over words.")
    (description "Implementation of a finite trie over words.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-word-trie

(define-public haskell-9.0-word-wrap
  (package
    (name "haskell-9.0-word-wrap")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/jtdaugherty/word-wrap/")
    (synopsis "A library for word-wrapping")
    (description "A library for wrapping long lines of text.")
    (license license:bsd-3)))

haskell-9.0-word-wrap

(define-public haskell-9.0-word8
  (package
    (name "haskell-9.0-word8")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/word8")
    (synopsis "Word8 library")
    (description "Word8 library to be used with Data.ByteString")
    (license license:bsd-3)))

haskell-9.0-word8

(define-public haskell-9.0-xmlbf-xmlhtml
  (package
    (name "haskell-9.0-xmlbf-xmlhtml")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xmlbf-xmlhtml/xmlbf-xmlhtml-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h2w98jdr3r9isbl5g39gd3fxlm4vqib15grqgarhx2gj1k9vlxd"))))
    (properties `((upstream-name . "xmlbf-xmlhtml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-html-entities)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-xmlbf)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-xmlhtml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://gitlab.com/k0001/xmlbf")
    (synopsis "xmlhtml backend support for the xmlbf library.")
    (description "")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.0-xmlbf-xmlhtml

(define-public haskell-9.0-xxhash-ffi
  (package
    (name "haskell-9.0-xxhash-ffi")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (home-page "https://github.com/haskell-haskey/xxhash-ffi#readme")
    (synopsis "Bindings to the C implementation the xxHash algorithm")
    (description
     "Bindings to the C implementation the xxHash algorithm. xxHash provides 32-bit and 64-bit extremely fast non-cryptographic hash functions.")
    (license license:bsd-3)))

haskell-9.0-xxhash-ffi

(define-public haskell-9.0-yes-precure5-command
  (package
    (name "haskell-9.0-yes-precure5-command")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)))
    (home-page "https://github.com/igrep/yes-precure5-command/")
    (synopsis "Extended yes command to reproduce phrases in Yes! Precure 5.")
    (description
     "Provides extended yes command to reproduce phrases in Yes! Precure 5 or Yes! PreCure5 GoGo!

See <https://github.com/igrep/yes-precure5-command/blob/master/README.mkd> for details.")
    (license license:expat)))

haskell-9.0-yes-precure5-command

(define-public haskell-9.0-yi-rope
  (package
    (name "haskell-9.0-yi-rope")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-fingertree)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/yi-rope")
    (synopsis "A rope data structure used by Yi")
    (description "A rope data structure used by Yi")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-yi-rope

(define-public haskell-9.0-zlib-bindings
  (package
    (name "haskell-9.0-zlib-bindings")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/snapframework/zlib-bindings")
    (synopsis "Low-level bindings to the zlib package.")
    (description "Low-level bindings to the zlib package.")
    (license license:bsd-3)))

haskell-9.0-zlib-bindings

