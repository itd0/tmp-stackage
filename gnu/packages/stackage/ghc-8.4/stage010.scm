;;; generated file
(define-module (gnu packages stackage ghc-8.4 stage010)
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
(define-public haskell-8.4-ClustalParser
  (package
    (name "haskell-8.4-ClustalParser")
    (version "1.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ClustalParser/ClustalParser-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wjs6bsbyykrm0hjdybnap86zsnhjjifampm08dqg7fqp7f7pmpy"))))
    (properties `((upstream-name . "ClustalParser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cmdargs)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-either-unwrap)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
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

haskell-8.4-ClustalParser

(define-public haskell-8.4-JuicyPixels-extra
  (package
    (name "haskell-8.4-JuicyPixels-extra")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/JuicyPixels-extra/JuicyPixels-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08hf3dklz3zaczbffq11z1yjk3hqf53rnz3g9n989ndw8ybkm865"))))
    (properties `((upstream-name . "JuicyPixels-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("3" "1xr4vjhzjw3ynibb6693dhcz2jbvbx4yg2bir8w2s98n37gwsxd7")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/mrkkrp/JuicyPixels-extra")
    (synopsis "Efficiently scale, crop, flip images with JuicyPixels")
    (description "Efficiently scale, crop, flip images with JuicyPixels.")
    (license license:bsd-3)))

haskell-8.4-JuicyPixels-extra

(define-public haskell-8.4-ViennaRNAParser
  (package
    (name "haskell-8.4-ViennaRNAParser")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-ParsecTools)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/ViennaRNAParser")
    (synopsis "Libary for parsing ViennaRNA package output")
    (description
     "Currently contains parsers and datatypes for: RNAalifold, RNAcode, RNAdistance, RNAcofold, RNAfold, RNAplex, RNAup, RNAz.

For more information on the ViennaRNA package refer to <http://www.tbi.univie.ac.at/RNA/>.

The libary is tested with Version 2.3.2 of the ViennaRNA package.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-ViennaRNAParser

(define-public haskell-8.4-adler32
  (package
    (name "haskell-8.4-adler32")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
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

haskell-8.4-adler32

(define-public haskell-8.4-alarmclock
  (package
    (name "haskell-8.4-alarmclock")
    (version "0.5.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/alarmclock/alarmclock-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0k6nfgxbhnsdlxiv1d6q7kgfmfnix8d1z9cpp84kz9m9jw4a6x15"))))
    (properties `((upstream-name . "alarmclock") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-clock)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unbounded-delays)))
    (home-page "https://bitbucket.org/davecturner/alarmclock")
    (synopsis "Wake up and perform an action at a certain time.")
    (description
     "Please see the README on Bitbucket at <https://bitbucket.org/davecturner/alarmclock#readme>")
    (license license:bsd-3)))

haskell-8.4-alarmclock

(define-public haskell-8.4-app-settings
  (package
    (name "haskell-8.4-app-settings")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
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

haskell-8.4-app-settings

(define-public haskell-8.4-ascii-progress
  (package
    (name "haskell-8.4-ascii-progress")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-concurrent-output)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/yamadapc/haskell-ascii-progress")
    (synopsis "A simple progress bar for the console.")
    (description
     "A simple Haskell progress bar for the console. Heavily borrows from TJ
Holowaychuk's Node.JS project
<https://github.com/tj/node-progress progress>

<https://github.com/yamadapc/haskell-ascii-progress github>")
    (license license:expat)))

haskell-8.4-ascii-progress

(define-public haskell-8.4-attoparsec-ip
  (package
    (name "haskell-8.4-attoparsec-ip")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec-ip/attoparsec-ip-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0aananvfa7h9d73yf1c69zw5b3s3m67qhfmfrzdbifw3wj5cm9cd"))))
    (properties `((upstream-name . "attoparsec-ip") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage009) haskell-8.4-ip)))
    (home-page "https://github.com/athanclark/attoparsec-ip#readme")
    (synopsis "Parse IP data types with attoparsec")
    (description "")
    (license license:bsd-3)))

haskell-8.4-attoparsec-ip

(define-public haskell-8.4-attoparsec-path
  (package
    (name "haskell-8.4-attoparsec-path")
    (version "0.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec-path/attoparsec-path-"
                    version ".tar.gz"))
              (sha256
               (base32
                "035n430iwqkfkxpphgn8xjd3h5qav8dwd1gm4a3v3z8h49i2cwfh"))))
    (properties `((upstream-name . "attoparsec-path") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage009) haskell-8.4-path)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-quickcheck-instances)))
    (home-page "https://github.com/athanclark/attoparsec-path#readme")
    (synopsis "Convenience bindings between path and attoparsec")
    (description "")
    (license license:bsd-3)))

haskell-8.4-attoparsec-path

(define-public haskell-8.4-bank-holidays-england
  (package
    (name "haskell-8.4-bank-holidays-england")
    (version "0.1.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bank-holidays-england/bank-holidays-england-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ak7m4xaymbh3cyhddj45p0pcazf79lnp63wvh4kh2f4fwh4f69j"))))
    (properties `((upstream-name . "bank-holidays-england") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://bitbucket.org/davecturner/bank-holidays-england")
    (synopsis "Calculation of bank holidays in England and Wales")
    (description
     "Calculation of bank holidays in England and Wales, using the rules that have
been in place since 1978, and including all exceptions to the rules in the
years 1995 to 2014.")
    (license license:bsd-3)))

haskell-8.4-bank-holidays-england

(define-public haskell-8.4-base-compat-batteries
  (package
    (name "haskell-8.4-base-compat-batteries")
    (version "0.10.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base-compat-batteries/base-compat-batteries-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j8ky6241mj1ymbwm9scvyvbknj7n2r56cnkg9y1zf2xwjpqnmqm"))))
    (properties `((upstream-name . "base-compat-batteries") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
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

haskell-8.4-base-compat-batteries

(define-public haskell-8.4-base-orphans
  (package
    (name "haskell-8.4-base-orphans")
    (version "0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base-orphans/base-orphans-"
                    version ".tar.gz"))
              (sha256
               (base32
                "057f9npnqk71ccfh95djfkpd54dzazphj06grwxa3fyhwcwxrb8a"))))
    (properties `((upstream-name . "base-orphans") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/haskell-compat/base-orphans#readme")
    (synopsis "Backwards-compatible orphan instances for base")
    (description
     "@@base-orphans@@ defines orphan instances that mimic instances available in later versions of @@base@@ to a wider (older) range of compilers. @@base-orphans@@ does not export anything except the orphan instances themselves and complements @@<http://hackage.haskell.org/package/base-compat base-compat>@@.
See the README for what instances are covered: <https://github.com/haskell-compat/base-orphans#readme>. See also the <https://github.com/haskell-compat/base-orphans#what-is-not-covered what is not covered> section.")
    (license license:expat)))

haskell-8.4-base-orphans

(define-public haskell-8.4-base32string
  (package
    (name "haskell-8.4-base32string")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "http://www.leonmergen.com/opensource.html")
    (synopsis "Fast and safe representation of a Base-32 string")
    (description
     "Provides an interface for converting any object that has a 'Binary' instance
to and from a base-32 Text representation.")
    (license license:expat)))

haskell-8.4-base32string

(define-public haskell-8.4-base58string
  (package
    (name "haskell-8.4-base58string")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "http://www.leonmergen.com/opensource.html")
    (synopsis "Fast and safe representation of a Base-58 string")
    (description
     "Provides an interface for converting any object that has a 'Binary' instance
to and from a base-58 Text representation.")
    (license license:expat)))

haskell-8.4-base58string

(define-public haskell-8.4-bbdb
  (package
    (name "haskell-8.4-bbdb")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
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

haskell-8.4-bbdb

(define-public haskell-8.4-bitcoin-script
  (package
    (name "haskell-8.4-bitcoin-script")
    (version "0.11.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bitcoin-script/bitcoin-script-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k3v35p6qpgh88gc5rqpcmh202xrn2rind9641dinwqqx631v31r"))))
    (properties `((upstream-name . "bitcoin-script") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "http://www.leonmergen.com/opensource.html")
    (synopsis "Compilation, manipulation and decompilation of Bitcoin scripts")
    (description
     "Provides pure functions to compile, decompile and manipulate Bitcoin scripts.
This project relies heavily on the Haskoin project for the compiling and
decompiling of the script assembly, and continuously merges changes downstream.
The advantage this library has over Haskoin is that it uses very few
dependencies and doesn't rely on external libraries such as LevelDB and snappy.")
    (license license:expat)))

haskell-8.4-bitcoin-script

(define-public haskell-8.4-bitset-word8
  (package
    (name "haskell-8.4-bitset-word8")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bitset-word8/bitset-word8-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pjjpqfqjnylfs5npnh7w75h9xk5gpkwzaqx0a972wa9h18gih7z"))))
    (properties `((upstream-name . "bitset-word8") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-th-lift-instances)))
    (home-page "https://github.com/nshimaza/bitset-word8#readme")
    (synopsis
     "Space efficient set of Word8 and some pre-canned sets useful for parsing HTTP")
    (description
     "Please see the README on GitHub at <https://github.com/nshimaza/bitset-word8#readme>")
    (license license:expat)))

haskell-8.4-bitset-word8

(define-public haskell-8.4-bordacount
  (package
    (name "haskell-8.4-bordacount")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/hverr/bordacount#readme")
    (synopsis "Implementation of the Borda count election method.")
    (description
     "Implementation of the Borda count election method, optionally with
different weights for different participants.

See <https://en.wikipedia.org/wiki/Borda_count>")
    (license license:bsd-3)))

haskell-8.4-bordacount

(define-public haskell-8.4-cache
  (package
    (name "haskell-8.4-cache")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cache/cache-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04azn2g1rndfpf6zl3sachzz471hhxykxh4clrz0vl5da8frja8h"))))
    (properties `((upstream-name . "cache") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-clock)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://github.com/hverr/haskell-cache#readme")
    (synopsis "An in-memory key/value store with expiration support")
    (description
     "An in-memory key/value store with expiration support, similar
to patrickmn/go-cache for Go.

The cache is a shared mutable HashMap implemented using STM and
with support for expiration times.")
    (license license:bsd-3)))

haskell-8.4-cache

(define-public haskell-8.4-cereal-time
  (package
    (name "haskell-8.4-cereal-time")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cereal-time/cereal-time-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ciwlkgpacc2yy5pfj0xpc0z2x7mjpv4rni550jfwny47q8dbimy"))))
    (properties `((upstream-name . "cereal-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/cereal-time")
    (synopsis "Serialize instances for types from `time` package.")
    (description "")
    (license license:bsd-3)))

haskell-8.4-cereal-time

(define-public haskell-8.4-cfenv
  (package
    (name "haskell-8.4-cfenv")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-raw-strings-qq)))
    (home-page "https://github.com/tomphp/haskell-cfenv#readme")
    (synopsis
     "A library getting the environment when running on Cloud Foundry")
    (description
     "This is a port of go-cfenv for Golang. The purpose of this library is to assist you in writing Haskell apps that run on Cloud Foundry. It provides convenience functions and structures that map to Cloud Foundry environment variable primitives.")
    (license license:bsd-3)))

haskell-8.4-cfenv

(define-public haskell-8.4-clientsession
  (package
    (name "haskell-8.4-clientsession")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-cipher-aes)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-cprng-aes)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-crypto-api)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-crypto-random)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-entropy)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-setenv)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-skein)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)))
    (home-page "http://github.com/yesodweb/clientsession/tree/master")
    (synopsis "Securely store session data in a client-side cookie.")
    (description "Achieves security through AES-CTR encryption and
Skein-MAC-512-256 authentication.  Uses Base64
encoding to avoid any issues with characters.")
    (license license:expat)))

haskell-8.4-clientsession

(define-public haskell-8.4-clock-extras
  (package
    (name "haskell-8.4-clock-extras")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/clock-extras/clock-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nfsxm1apd4gk7yd8b95w849n927wdkmzg2mlp3572ylm5x0kvd9"))))
    (properties `((upstream-name . "clock-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-clock)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/clock-extras")
    (synopsis
     "A couple functions that probably should be in the 'clock' package")
    (description
     "A couple functions that probably should be in the 'clock' package, such as 'elapsedTime' and 'diffSeconds'.")
    (license license:bsd-3)))

haskell-8.4-clock-extras

(define-public haskell-8.4-compactmap
  (package
    (name "haskell-8.4-compactmap")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://hackage.haskell.org/package/compactmap")
    (synopsis "A read-only memory-efficient key-value store.")
    (description "")
    (license license:bsd-3)))

haskell-8.4-compactmap

(define-public haskell-8.4-constraints
  (package
    (name "haskell-8.4-constraints")
    (version "0.10.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/constraints/constraints-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xy3vv78jxc17hm0z7qqspxjwv7l2jbcbj670yrl2f053qkfr02q"))))
    (properties `((upstream-name . "constraints") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1r4h14wdfbcl4yaapxnwbwbddvl3iz5liq4fajiqissapc724vx7")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
    (home-page "http://github.com/ekmett/constraints/")
    (synopsis "Constraint manipulation")
    (description
     "GHC 7.4 gave us the ability to talk about @@ConstraintKinds@@. They stopped crashing the compiler in GHC 7.6.

This package provides a vocabulary for working with them.")
    (license license:bsd-2)))

haskell-8.4-constraints

(define-public haskell-8.4-css-syntax
  (package
    (name "haskell-8.4-css-syntax")
    (version "0.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/css-syntax/css-syntax-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1h9h606q9m9sxgwjxx3km9b30l4rmaygd2zfigf38wz45vqfqwa2"))))
    (properties `((upstream-name . "css-syntax") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)))
    (home-page "https://hackage.haskell.org/package/css-syntax")
    (synopsis "This package implments a parser for the CSS syntax")
    (description "See https://drafts.csswg.org/css-syntax/")
    (license license:expat)))

haskell-8.4-css-syntax

(define-public haskell-8.4-currencies
  (package
    (name "haskell-8.4-currencies")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/alx741/currencies#readme")
    (synopsis "Currencies representation, pretty printing and conversion")
    (description
     "ISO 4217 Currencies representation, pretty printing and conversion:

* Represent monetary amounts of a particular currency in a type-safe manner

* Convert amounts between different currencies

* Print human readable amounts")
    (license license:bsd-3)))

haskell-8.4-currencies

(define-public haskell-8.4-data-diverse
  (package
    (name "haskell-8.4-data-diverse")
    (version "4.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-diverse/data-diverse-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1m6bxi37c7qkn96296lxfc0x3ab33w7yyjkvf3avla94dd248k89"))))
    (properties `((upstream-name . "data-diverse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)))
    (home-page "https://github.com/louispan/data-diverse#readme")
    (synopsis "Extensible records and polymorphic variants.")
    (description
     "\"Data.Diverse.Many\" is an extensible record for any size encoded efficiently as (Seq Any).
\"Data.Diverse.Which\" is a polymorphic variant of possibilities encoded as (Int, Any).
Provides getters, setters, projection, injection, folds, and catamorphisms;
accessed by type, index or label.
Refer to [ManySpec.hs](https://github.com/louispan/data-diverse/blob/master/test/Data/Diverse/ManySpec.hs) and [WhichSpec.hs](https://github.com/louispan/data-diverse/blob/master/test/Data/Diverse/WhichSpec.hs) for example usages.
Iso, Lens and Prisms are provided in [data-diverse-lens](http://hackage.haskell.org/package/data-diverse-lens)")
    (license license:bsd-3)))

haskell-8.4-data-diverse

(define-public haskell-8.4-data-msgpack-types
  (package
    (name "haskell-8.4-data-msgpack-types")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-msgpack-types/data-msgpack-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19c7285mrs9d1afgpdq4cprv44fif76ahahg3xpzijc5lhgxmzal"))))
    (properties `((upstream-name . "data-msgpack-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-void)))
    (home-page "http://msgpack.org/")
    (synopsis "A Haskell implementation of MessagePack.")
    (description
     "A Haskell implementation of MessagePack <http://msgpack.org/>

This is a fork of msgpack-haskell <https://github.com/msgpack/msgpack-haskell>,
since the original author is unreachable. This fork incorporates a number of
bugfixes and is actively being developed.")
    (license license:bsd-3)))

haskell-8.4-data-msgpack-types

(define-public haskell-8.4-dbcleaner
  (package
    (name "haskell-8.4-dbcleaner")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dbcleaner/dbcleaner-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0d8ghd4i7qq3zp1vmxvsx7s66ip3qqfzacfnb2n4i3cdd7hv05q8"))))
    (properties `((upstream-name . "dbcleaner") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-postgresql-simple)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql)))
    (home-page "https://hackage.haskell.org/package/dbcleaner")
    (synopsis "Clean database tables automatically around hspec tests")
    (description "A simple database cleaner library for testing that provides
different cleanup strategies.")
    (license license:expat)))

haskell-8.4-dbcleaner

(define-public haskell-8.4-dimensional
  (package
    (name "haskell-8.4-dimensional")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dimensional/dimensional-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05jy0xs1nmxz7x3b589313hqk317838crhd974knm5k73jf8h99s"))))
    (properties `((upstream-name . "dimensional") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0922kd3svn96c1qg2lx3ya0xlrbll51csc18cnma0f8j899r4xgn")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005) haskell-8.4-Glob)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-exact-pi)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-ieee754)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-numtype-dk)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/bjornbm/dimensional/")
    (synopsis "Statically checked physical dimensions,
using Type Families and Data Kinds.")
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
Requires GHC 7.8 or later.")
    (license license:bsd-3)))

haskell-8.4-dimensional

(define-public haskell-8.4-do-list
  (package
    (name "haskell-8.4-do-list")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/tserduke/do-list#readme")
    (synopsis "Do notation for free")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.4-do-list

(define-public haskell-8.4-dockerfile
  (package
    (name "haskell-8.4-dockerfile")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dockerfile/dockerfile-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0980w0fh5xb7azknnmph6rmnzswsjw360ga5ymds2valq2vc0ji9"))))
    (properties `((upstream-name . "dockerfile") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/dockerfile")
    (synopsis
     "A simple DSL for describing and generating Dockerfile containers in Haskell.")
    (description
     "A simple DSL for describing and generating Dockerfile containers in Haskell.")
    (license license:expat)))

haskell-8.4-dockerfile

(define-public haskell-8.4-doctemplates
  (package
    (name "haskell-8.4-doctemplates")
    (version "0.2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/doctemplates/doctemplates-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gyckfg3kgvzhxw14i7iwrw0crygvsp86sy53bbr1yn7bxbgn33b"))))
    (properties `((upstream-name . "doctemplates") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-blaze-markup)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/jgm/doctemplates#readme")
    (synopsis "Pandoc-style document templates")
    (description "A simple text templating system used by pandoc.")
    (license license:bsd-3)))

haskell-8.4-doctemplates

(define-public haskell-8.4-dvorak
  (package
    (name "haskell-8.4-dvorak")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/kvanberendonck/codec-dvorak")
    (synopsis "Dvorak encoding for Haskell.")
    (description "")
    (license license:bsd-3)))

haskell-8.4-dvorak

(define-public haskell-8.4-elf
  (package
    (name "haskell-8.4-elf")
    (version "0.29")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/elf/elf-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1b4g98fk1p8mk0zdh6fwzm3vnzcrhvpysx4g4ahcbgbr4bqhjra2"))))
    (properties `((upstream-name . "elf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1szxkwi7v6qb3h75jkj54zaxp225jxbl6xi24n22jv3ailjj86n8")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/wangbj/elf")
    (synopsis "An Elf parser")
    (description "Parser for ELF object format.")
    (license license:bsd-3)))

haskell-8.4-elf

(define-public haskell-8.4-email-validate
  (package
    (name "haskell-8.4-email-validate")
    (version "2.3.2.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/email-validate/email-validate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12sf380s0f78npga3x1bz9wkz82h477vvf3bvsxq69hrc7m6xb5f"))))
    (properties `((upstream-name . "email-validate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/Porges/email-validate-hs")
    (synopsis "Email address validation")
    (description "Validating an email address string against RFC 5322")
    (license license:bsd-3)))

haskell-8.4-email-validate

(define-public haskell-8.4-envy
  (package
    (name "haskell-8.4-envy")
    (version "1.5.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/envy/envy-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1r2181n5ayww1ycg7vvz5pp5cyxs6asljf4kir7g80qnj2wwpjid"))))
    (properties `((upstream-name . "envy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-quickcheck-instances)))
    (home-page "https://hackage.haskell.org/package/envy")
    (synopsis
     "An environmentally friendly way to deal with environment variables")
    (description
     "For package use information see the <https://github.com/dmjio/envy/blob/master/README.md README.md>")
    (license license:bsd-3)))

haskell-8.4-envy

(define-public haskell-8.4-farmhash
  (package
    (name "haskell-8.4-farmhash")
    (version "0.1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/farmhash/farmhash-" version
                    ".tar.gz"))
              (sha256
               (base32
                "188gqa5szqm88kgpax32b830cgyh8z5vq2fjha3fig7p8ma5ls0f"))))
    (properties `((upstream-name . "farmhash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/abhinav/farmhash")
    (synopsis "Fast hash functions.")
    (description
     "This package provides bindings to the farmhash library.

FarmHash is a family of very fast hash functions (see
<https://code.google.com/p/farmhash/>). They are not suitable for
cryptography.

This package bundles the library with it so there are no external
dependencies.")
    (license license:bsd-3)))

haskell-8.4-farmhash

(define-public haskell-8.4-fold-debounce
  (package
    (name "haskell-8.4-fold-debounce")
    (version "0.2.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fold-debounce/fold-debounce-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j7v11nq2q7p50z27lbmprwqrhvcf9qa5zy2hql68zsi53q3wszw"))))
    (properties `((upstream-name . "fold-debounce") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-stm-delay)))
    (home-page "https://github.com/debug-ito/fold-debounce")
    (synopsis "Fold multiple events that happen in a given period of time.")
    (description
     "Fold multiple events that happen in a given period of time. See \"Control.FoldDebounce\".")
    (license license:bsd-3)))

haskell-8.4-fold-debounce

(define-public haskell-8.4-format-numbers
  (package
    (name "haskell-8.4-format-numbers")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/format-numbers/format-numbers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19ii2b804i6rmz21qpjy1p5yvb32gglniszhgcpmb268aldmd90c"))))
    (properties `((upstream-name . "format-numbers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/agrafix/format-numbers#readme")
    (synopsis "Various number formatting functions")
    (description "Various number formatting functions")
    (license license:expat)))

haskell-8.4-format-numbers

(define-public haskell-8.4-formatting
  (package
    (name "haskell-8.4-formatting")
    (version "6.3.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/formatting/formatting-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06nkm9scy3a41v4m7npgkl9lvy5py6v7chsx0yhdy4pr4mvdna3a"))))
    (properties `((upstream-name . "formatting") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "181iqirpzd2yiassjnp0x0xr5mcy3ww2593696jl9ykg9m0g2b10")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-clock)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)))
    (home-page "https://hackage.haskell.org/package/formatting")
    (synopsis
     "Combinator-based type-safe formatting (like printf() or FORMAT)")
    (description
     "Combinator-based type-safe formatting (like printf() or FORMAT), modelled from the HoleyMonoids package.")
    (license license:bsd-3)))

haskell-8.4-formatting

(define-public haskell-8.4-friday-juicypixels
  (package
    (name "haskell-8.4-friday-juicypixels")
    (version "0.1.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/friday-juicypixels/friday-juicypixels-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gxfj3x5w65dfnkf6ymjs27w2i14yv2m218qgmvx1p80wy7q4nbd"))))
    (properties `((upstream-name . "friday-juicypixels") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-file-embed)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-friday)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "github.com/TomMD/friday-juicypixels")
    (synopsis "Converts between the Friday and JuicyPixels image types")
    (description
     "See <https://github.com/TomMD/friday-juicypixels#readme README>")
    (license license:bsd-3)))

haskell-8.4-friday-juicypixels

(define-public haskell-8.4-friendly-time
  (package
    (name "haskell-8.4-friendly-time")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)))
    (home-page "https://hackage.haskell.org/package/friendly-time")
    (synopsis "Print time information in friendly ways")
    (description "Print time information in friendly ways")
    (license license:bsd-3)))

haskell-8.4-friendly-time

(define-public haskell-8.4-generic-deriving
  (package
    (name "haskell-8.4-generic-deriving")
    (version "1.12.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generic-deriving/generic-deriving-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1i7d6cpj9yhaqb79zays3nqchhaacacjz9bkc0zlwj73y5gvi22n"))))
    (properties `((upstream-name . "generic-deriving") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fbase-4-9")
       #:cabal-revision
       ("1" "0gr20ypr6s0183wmrhmia0zvpbn4dmfyr3wksrkrqj4i8nhj42fz")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-th-abstraction)))
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
Template Haskell code is provided for supporting older GHCs.")
    (license license:bsd-3)))

haskell-8.4-generic-deriving

(define-public haskell-8.4-ghc-syntax-highlighter
  (package
    (name "haskell-8.4-ghc-syntax-highlighter")
    (version "0.0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-syntax-highlighter/ghc-syntax-highlighter-"
                    version ".tar.gz"))
              (sha256
               (base32
                "077cvrx25qdl04qgp3wl7c3jxrakw1k873dwgybfwkhgfj2g8dx1"))))
    (properties `((upstream-name . "ghc-syntax-highlighter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/mrkkrp/ghc-syntax-highlighter")
    (synopsis "Syntax highlighter for Haskell using lexer of GHC itself")
    (description "Syntax highlighter for Haskell using lexer of GHC itself.")
    (license license:bsd-3)))

haskell-8.4-ghc-syntax-highlighter

(define-public haskell-8.4-ghost-buster
  (package
    (name "haskell-8.4-ghost-buster")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/Lazersmoke/ghost-buster#readme")
    (synopsis "Existential type utilites")
    (description
     "This package provides utilities for working with existential types.")
    (license license:bsd-3)))

haskell-8.4-ghost-buster

(define-public haskell-8.4-graph-wrapper
  (package
    (name "haskell-8.4-graph-wrapper")
    (version "0.2.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/graph-wrapper/graph-wrapper-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kcdfr1bz2ks71gapz6wrzv7sj6qbmj1zadj1cmh39g9xvqjx94q"))))
    (properties `((upstream-name . "graph-wrapper") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/soenkehahn/graph-wrapper")
    (synopsis
     "A wrapper around the standard Data.Graph with a less awkward interface")
    (description
     "A wrapper around the standard Data.Graph with a less awkward interface")
    (license license:bsd-3)))

haskell-8.4-graph-wrapper

(define-public haskell-8.4-greskell-core
  (package
    (name "haskell-8.4-greskell-core")
    (version "0.1.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/greskell-core/greskell-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11agvhvpv94rnylc5ch5cg90w5z1i0ywdw47yca83503lmv3y790"))))
    (properties `((upstream-name . "greskell-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-doctest-discover)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage007) haskell-8.4-uuid)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/debug-ito/greskell/")
    (synopsis
     "Haskell binding for Gremlin graph query language - core data types and tools")
    (description
     "Haskell binding for [Gremlin graph query language](http://tinkerpop.apache.org/gremlin.html).
See [README.md](https://github.com/debug-ito/greskell/blob/master/README.md) for detail.

This package contains only core data types and tools used commonly by other related packages.")
    (license license:bsd-3)))

haskell-8.4-greskell-core

(define-public haskell-8.4-gtk
  (package
    (name "haskell-8.4-gtk")
    (version "0.14.10")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gtk/gtk-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0cq6cpr42mjansnbk3p38xkqslqcb8lbl4smc73kaqr1xcg6gq98"))))
    (properties `((upstream-name . "gtk") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fdeprecated" "-fhave-gio" "-f-have-quartz-gtk" "-ffmode-binary")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages glib) glib-with-documentation)
                  (@ (gnu packages gtk) gtk+)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-cairo)
                  (@ (gnu packages stackage ghc-8.4 stage009) haskell-8.4-gio)
                  (@ (gnu packages stackage ghc-8.4 stage008) haskell-8.4-glib)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-gtk2hs-buildtools)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-pango)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://projects.haskell.org/gtk2hs/")
    (synopsis "Binding to the Gtk+ graphical user interface library.")
    (description
     "This is the core library of the Gtk2Hs suite of libraries for Haskell
based on Gtk+. Gtk+ is an extensive and mature multi-platform toolkit
for creating graphical user interfaces.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.4-gtk

(define-public haskell-8.4-gtk3
  (package
    (name "haskell-8.4-gtk3")
    (version "0.14.9")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gtk3/gtk3-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1rcn0x6q0r0a3waxdsyvbyzfswsi6j7yr9fsixqr1c0g334lmqa8"))))
    (properties `((upstream-name . "gtk3") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags
       (list "-fhave-gio" "-f-build-demos" "-ffmode-binary")))
    (outputs (list "out" "static"))
    (inputs (list (@ (gnu packages glib) glib-with-documentation)
                  (@ (gnu packages gtk) gtk+)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-cairo)
                  (@ (gnu packages stackage ghc-8.4 stage009) haskell-8.4-gio)
                  (@ (gnu packages stackage ghc-8.4 stage008) haskell-8.4-glib)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-gtk2hs-buildtools)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-pango)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://projects.haskell.org/gtk2hs/")
    (synopsis "Binding to the Gtk+ 3 graphical user interface library")
    (description
     "This is the core library of the Gtk2Hs suite of libraries for Haskell
based on Gtk+. Gtk+ is an extensive and mature multi-platform toolkit
for creating graphical user interfaces.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.4-gtk3

(define-public haskell-8.4-half
  (package
    (name "haskell-8.4-half")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/half/half-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "14r0nx8hm5fic9gz0ybjjw4kyc758zfgvhhwvzsshpx5caq6zch6"))))
    (properties `((upstream-name . "half") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "http://github.com/ekmett/half")
    (synopsis "Half-precision floating-point")
    (description "Half-precision floating-point.")
    (license license:bsd-3)))

haskell-8.4-half

(define-public haskell-8.4-hexstring
  (package
    (name "haskell-8.4-hexstring")
    (version "0.11.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hexstring/hexstring-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0509h2fhrpcsjf7gffychf700xca4a5l937jfgdzywpm4bzdpn20"))))
    (properties `((upstream-name . "hexstring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "http://www.leonmergen.com/opensource.html")
    (synopsis "Fast and safe representation of a hex string")
    (description
     "Provides an interface for converting any object that has a 'Binary' instance
to and from a hexadecimal Text representation.")
    (license license:expat)))

haskell-8.4-hexstring

(define-public haskell-8.4-hidden-char
  (package
    (name "haskell-8.4-hidden-char")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hidden-char/hidden-char-"
                    version ".tar.gz"))
              (sha256
               (base32
                "167l83cn37mkq394pbanybz1kghnbim1m74fxskws1nclxr9747a"))))
    (properties `((upstream-name . "hidden-char") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0f6qghr4i3ar993pjlswdd2rl671lrnxj8740i2yhn89z410vzsa")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/rcook/hidden-char#readme")
    (synopsis "Provides cross-platform getHiddenChar function")
    (description
     "This package provides a @@getHiddenChar@@ function which works reasonably consistently across the Windows, Linux and macOS platforms. @@getHiddenChar@@ yields a single character from the standard input device with buffering and echoing to standard output disabled.")
    (license license:expat)))

haskell-8.4-hidden-char

(define-public haskell-8.4-hierarchical-clustering
  (package
    (name "haskell-8.4-hierarchical-clustering")
    (version "0.4.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hierarchical-clustering/hierarchical-clustering-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cfcrnxqczqzqgpyipsw9dwfw1j75zd11vpd12i533f3p44pzwbm"))))
    (properties `((upstream-name . "hierarchical-clustering") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
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

haskell-8.4-hierarchical-clustering

(define-public haskell-8.4-hlibsass
  (package
    (name "haskell-8.4-hlibsass")
    (version "0.1.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hlibsass/hlibsass-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ssgvr0jvl79k1vckp5nq2zw6mx8l4xasydymzjwmhg0fl99mpi6"))))
    (properties `((upstream-name . "hlibsass") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-externallibsass" "-f-sharedlibsass")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
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

haskell-8.4-hlibsass

(define-public haskell-8.4-hopfli
  (package
    (name "haskell-8.4-hopfli")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/ananthakumaran/hopfli")
    (synopsis "Bidings to Google's Zopfli compression library")
    (description
     "Hopfli provides a pure interface to compress data using the Zopfli library
algorithm.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.4-hopfli

(define-public haskell-8.4-hsemail
  (package
    (name "haskell-8.4-hsemail")
    (version "2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hsemail/hsemail-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1nd8pzsdan6zxddm96xswcm67g43zkbj1rm3m3wx3as4jj3qmw7m"))))
    (properties `((upstream-name . "hsemail") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-old-time)))
    (home-page "https://github.com/peti/hsemail#readme")
    (synopsis "Parsec parsers for the RFC2822 Internet Message format")
    (description
     "Parsec parsers for the Internet Message format defined in RFC 2821 and 2822.")
    (license license:bsd-3)))

haskell-8.4-hsemail

(define-public haskell-8.4-hsexif
  (package
    (name "haskell-8.4-hsexif")
    (version "0.6.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hsexif/hsexif-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0pdm0v3xz308yzdhc646bbkwj156llf9g17c2y74x339xk6i8zhg"))))
    (properties `((upstream-name . "hsexif") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ficonv")
       #:cabal-revision
       ("1" "1dgcgsmx0k5p3ibfv3n5k0c5p1is2m5zfsd2s6nc6d0pz34d4wl9")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-iconv)))
    (home-page "https://github.com/emmanueltouzery/hsexif")
    (synopsis "EXIF handling library in pure Haskell")
    (description
     "The hsexif library provides functions for working with EXIF data
contained in JPEG files. Currently it only supports reading the data.")
    (license license:bsd-3)))

haskell-8.4-hsexif

(define-public haskell-8.4-hspec-attoparsec
  (package
    (name "haskell-8.4-hspec-attoparsec")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hspec-expectations)))
    (home-page "http://github.com/alpmestan/hspec-attoparsec")
    (synopsis
     "Utility functions for testing your attoparsec parsers with hspec")
    (description
     "This package provides some helper functions for testing attoparsec parsers with hspec.

See the documentation in @@Test.Hspec.Attoparsec@@ for examples, or this package's own test suite.")
    (license license:bsd-3)))

haskell-8.4-hspec-attoparsec

(define-public haskell-8.4-hspec-contrib
  (package
    (name "haskell-8.4-hspec-contrib")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-contrib/hspec-contrib-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13579xdqwbsy8k0vxdcvgy932d4p76mij1rzkzbpqbspfn7399yv"))))
    (properties `((upstream-name . "hspec-contrib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "161ckv7j9aikzs4xak9xbkqgniy3cgkj2zvg8l52kxy16bwzmdys")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-hspec-core)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "http://hspec.github.io/")
    (synopsis "Contributed functionality for Hspec")
    (description "Contributed functionality for Hspec")
    (license license:expat)))

haskell-8.4-hspec-contrib

(define-public haskell-8.4-hspec-megaparsec
  (package
    (name "haskell-8.4-hspec-megaparsec")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-megaparsec/hspec-megaparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dafrbzjm7rzwvcpjpk3bsg7bd111xfij94n17sh8wfykzhim5hl"))))
    (properties `((upstream-name . "hspec-megaparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-megaparsec)))
    (home-page "https://github.com/mrkkrp/hspec-megaparsec")
    (synopsis "Utility functions for testing Megaparsec parsers with Hspec")
    (description
     "Utility functions for testing Megaparsec parsers with Hspec.")
    (license license:bsd-3)))

haskell-8.4-hspec-megaparsec

(define-public haskell-8.4-hsyslog-udp
  (package
    (name "haskell-8.4-hsyslog-udp")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hsyslog-udp/hsyslog-udp-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xahxchr1il9naf8kdwdbh1sy5vv4afqkcxfy4993nsk5j7zs586"))))
    (properties `((upstream-name . "hsyslog-udp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-hsyslog)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)))
    (home-page "https://github.com/ThoughtLeadr/hsyslog-udp")
    (synopsis "Log to syslog over a network via UDP")
    (description "Supports <https://tools.ietf.org/html/rfc5424 RFC 5424>,
<https://tools.ietf.org/html/rfc3164 RFC 3164>, or any
arbitrary protocol.")
    (license license:bsd-3)))

haskell-8.4-hsyslog-udp

(define-public haskell-8.4-htaglib
  (package
    (name "haskell-8.4-htaglib")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages mp3) taglib)))
    (home-page "https://github.com/mrkkrp/htaglib")
    (synopsis "Bindings to TagLib, audio meta-data library")
    (description "Bindings to TagLib, audio meta-data library.")
    (license license:bsd-3)))

haskell-8.4-htaglib

(define-public haskell-8.4-html-email-validate
  (package
    (name "haskell-8.4-html-email-validate")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-pcre-builtin)))
    (home-page "https://hackage.haskell.org/package/html-email-validate")
    (synopsis "Validating an email address against HTML standard")
    (description
     "The library allows to validate and parse an email address
as it's defined in <https://html.spec.whatwg.org/multipage/forms.html#valid-e-mail-address HTML standard>.
Note that HTML specification of a valid email address is a
'willful violation' of RFC 5322. If you want to validate
an address against RFC 5322 you should use <https://hackage.haskell.org/package/email-validate email-validate>.")
    (license license:bsd-3)))

haskell-8.4-html-email-validate

(define-public haskell-8.4-http-date
  (package
    (name "haskell-8.4-http-date")
    (version "0.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-date/http-date-" version
                    ".tar.gz"))
              (sha256
               (base32
                "09slbzqayjnqqz9zybk7slgzvizgplikqgg4b2flzgks91466k0g"))))
    (properties `((upstream-name . "http-date") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1za6cjv6hk9357n874jxhh962brcmvgflc07013598wqs6psya9b")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)))
    (home-page "https://hackage.haskell.org/package/http-date")
    (synopsis "HTTP Date parser/formatter")
    (description "Fast parser and formatter for HTTP Date")
    (license license:bsd-3)))

haskell-8.4-http-date

(define-public haskell-8.4-http-types
  (package
    (name "haskell-8.4-http-types")
    (version "0.12.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-types/http-types-" version
                    ".tar.gz"))
              (sha256
               (base32
                "01ck5wmzvl5cqd3w2kwkrmp18n78474a3lngk6ry28w9pbbh4caj"))))
    (properties `((upstream-name . "http-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-quickcheck-instances)))
    (home-page "https://github.com/aristidb/http-types")
    (synopsis
     "Generic HTTP types for Haskell (for both client and server code).")
    (description
     "Generic HTTP types for Haskell (for both client and server code).")
    (license license:bsd-3)))

haskell-8.4-http-types

(define-public haskell-8.4-hvect
  (package
    (name "haskell-8.4-hvect")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hvect/hvect-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1dihbqfjwgd92khlrc8mwjxsjbwbassma3bxg8hqr7qqgwdfyl6b"))))
    (properties `((upstream-name . "hvect") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0g00yilmsa81274r179y5l4s4wi6369p801s24p7vgd349sdff14")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/agrafix/hvect")
    (synopsis "Simple strict heterogeneous lists")
    (description
     "Small, concise and simple implementation of heterogeneous lists with useful utility functions")
    (license license:expat)))

haskell-8.4-hvect

(define-public haskell-8.4-hw-mquery
  (package
    (name "haskell-8.4-hw-mquery")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-mquery/hw-mquery-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0g8i7vlb0xhmcwdkvakmr6j7hy8gfyil4w0vnygshmqb96qaajkj"))))
    (properties `((upstream-name . "hw-mquery") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0rxp6sqiskbrh30r7fqq2h2nbby9njdm9kj387njrb2xwyvd04m7")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "http://github.com/haskell-works/hw-mquery#readme")
    (synopsis "Conduits for tokenizing streams.")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.4-hw-mquery

(define-public haskell-8.4-hw-string-parse
  (package
    (name "haskell-8.4-hw-string-parse")
    (version "0.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-string-parse/hw-string-parse-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dzjx6virpikbqnpzdjlliakm8kd6kxyn3y4jgr5bqhisgwfp8b4"))))
    (properties `((upstream-name . "hw-string-parse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://github.com/haskell-works/hw-string-parse#readme")
    (synopsis "String parser")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.4-hw-string-parse

(define-public haskell-8.4-identicon
  (package
    (name "haskell-8.4-identicon")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/mrkkrp/identicon")
    (synopsis "Flexible generation of identicons")
    (description "Flexible generation of identicons.")
    (license license:bsd-3)))

haskell-8.4-identicon

(define-public haskell-8.4-ilist
  (package
    (name "haskell-8.4-ilist")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ilist/ilist-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "15zy584mjk85kr69acs1r7dfsr7g2mgy2bbfyrla5rbp23fy3678"))))
    (properties `((upstream-name . "ilist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "http://github.com/aelve/ilist")
    (synopsis "Optimised list functions for doing index-related things")
    (description
     "Optimised list functions for doing index-related things. They're faster than common idioms in all cases, they avoid <https://ghc.haskell.org/trac/ghc/ticket/12620 space leaks>, and sometimes they fuse better as well.")
    (license license:bsd-3)))

haskell-8.4-ilist

(define-public haskell-8.4-indexed-list-literals
  (package
    (name "haskell-8.4-indexed-list-literals")
    (version "0.2.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/indexed-list-literals/indexed-list-literals-"
                    version ".tar.gz"))
              (sha256
               (base32
                "043xl356q9n1nw2bw8a8msymy18d6f7nwcyrrpzak9qr75dsx5nq"))))
    (properties `((upstream-name . "indexed-list-literals") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "198hmw2m3539vmh3s58d33h6vl5d0fqpdms8rp8cwj196diipjlc")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-Only)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
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

haskell-8.4-indexed-list-literals

(define-public haskell-8.4-io-region
  (package
    (name "haskell-8.4-io-region")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
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

haskell-8.4-io-region

(define-public haskell-8.4-iproute
  (package
    (name "haskell-8.4-iproute")
    (version "1.7.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/iproute/iproute-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0gab5930nvzrpvisx3x43ydnp2rd4fbmy9cq1zpgqy1adx5gx8z6"))))
    (properties `((upstream-name . "iproute") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-appar)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-byteorder)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)))
    (home-page "http://www.mew.org/~kazu/proj/iproute/")
    (synopsis "IP Routing Table")
    (description "IP Routing Table is a tree of IP ranges
to search one of them on the longest
match base. It is a kind of TRIE with one
way branching removed. Both IPv4 and IPv6
are supported.")
    (license license:bsd-3)))

haskell-8.4-iproute

(define-public haskell-8.4-iso8601-time
  (package
    (name "haskell-8.4-iso8601-time")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/nh2/iso8601-time")
    (synopsis "Convert to/from the ISO 8601 time format")
    (description
     "Conversion functions between Haskell time types and the ISO 8601 format,
which is often used for printing times, e.g. JavaScript's @@new Date().toISOString()@@.")
    (license license:expat)))

haskell-8.4-iso8601-time

(define-public haskell-8.4-json-feed
  (package
    (name "haskell-8.4-json-feed")
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/json-feed/json-feed-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17y8hnqp4ahg7cx6fwfd4y65pz16py1avhfkn4fcfjs06xv465qs"))))
    (properties `((upstream-name . "json-feed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-mime-types)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-tagsoup)))
    (home-page "https://github.com/tfausak/json-feed#readme")
    (synopsis "JSON Feed")
    (description
     "This is an implementation of the JSON Feed spec in Haskell. The spec is available at <https://jsonfeed.org>. JSON Feed is similar to the Atom and RSS feed formats, but it is serialized as JSON rather than XML.")
    (license license:expat)))

haskell-8.4-json-feed

(define-public haskell-8.4-json-rpc-client
  (package
    (name "haskell-8.4-json-rpc-client")
    (version "0.2.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/json-rpc-client/json-rpc-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "177lrw5m9dxdk6mcay0f92rwyih8q7znwb8m6da6r3zsn30gajak"))))
    (properties `((upstream-name . "json-rpc-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-demo")
       #:cabal-revision
       ("10" "19vf7gibvqgcm27b5n0ls4s7wi1kr87crn776ifqc9gbr2l9bfpi")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-json-rpc-server)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-vector-algorithms)))
    (home-page "https://github.com/grayjay/json-rpc-client")
    (synopsis "JSON-RPC 2.0 on the client side.")
    (description
     "Functions for creating a JSON-RPC 2.0 client.  See
<http://www.jsonrpc.org/specification>. This library supports
batch requests and notifications, as well as single method
calls.  It also provides a function for creating corresponding
server-side methods with the package
<http://hackage.haskell.org/package/json-rpc-server json-rpc-server>.
This library does not handle transport, so a function for
communicating with the server must be provided.
The demo folder contains an example client and server that can
be compiled with the demo flag.  See \"Network.JsonRpc.Client\"
for details.")
    (license license:expat)))

haskell-8.4-json-rpc-client

(define-public haskell-8.4-json-rpc-generic
  (package
    (name "haskell-8.4-json-rpc-generic")
    (version "0.2.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/json-rpc-generic/json-rpc-generic-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h1spyiq5xix3rbjdk37a28l6l46zygvxafdhaa466hyn2j7p4cz"))))
    (properties `((upstream-name . "json-rpc-generic") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-aeson-generic-compat)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-quickcheck-simple)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://github.com/khibino/haskell-json-rpc-generic")
    (synopsis "Generic encoder and decode for JSON-RPC")
    (description
     "This package contains generic encoder and decode for JSON-RPC")
    (license license:bsd-3)))

haskell-8.4-json-rpc-generic

(define-public haskell-8.4-language-javascript
  (package
    (name "haskell-8.4-language-javascript")
    (version "0.6.0.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-javascript/language-javascript-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hv1rj3yarv035mpnnnbqys4sgd0awqlm5hyf29wp051r6dnwxfl"))))
    (properties `((upstream-name . "language-javascript") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-alex)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-happy)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-light)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
    (home-page "https://github.com/erikd/language-javascript")
    (synopsis "Parser for JavaScript")
    (description
     "Parses Javascript into an Abstract Syntax Tree (AST).  Initially intended as frontend to hjsmin.

Note: Version 0.5.0 breaks compatibility with prior versions, the AST has been reworked to allow
round trip processing of JavaScript.")
    (license license:bsd-3)))

haskell-8.4-language-javascript

(define-public haskell-8.4-lens-family-th
  (package
    (name "haskell-8.4-lens-family-th")
    (version "0.5.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-family-th/lens-family-th-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rmhcnnlnll4mq7pqld5qg6crxh74gp0fqiwl6wn8l3ssgx5l9ww"))))
    (properties `((upstream-name . "lens-family-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "06sbynlrbqb51rn392w1q82qww1f6k8mmw1npgla2wc6s39k4977")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "http://github.com/DanBurton/lens-family-th#readme")
    (synopsis "Generate lens-family style lenses")
    (description "(see README.md)")
    (license license:bsd-3)))

haskell-8.4-lens-family-th

(define-public haskell-8.4-logging-facade
  (package
    (name "haskell-8.4-logging-facade")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/logging-facade/logging-facade-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0d0lwxxgd16is9aw6v3ps4r9prv3dj8xscmm45fvzq3nicjiawcf"))))
    (properties `((upstream-name . "logging-facade") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1wzln1b02wipm1m7slipij031p96ak0z3qnnzl2xz5lh7bp3zb13")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-call-stack)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/sol/logging-facade#readme")
    (synopsis "Simple logging abstraction that allows multiple back-ends")
    (description "Simple logging abstraction that allows multiple back-ends")
    (license license:expat)))

haskell-8.4-logging-facade

(define-public haskell-8.4-loop
  (package
    (name "haskell-8.4-loop")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/nh2/loop")
    (synopsis "Fast loops (for when GHC can't optimize forM_)")
    (description
     "This package provides a convenient and fast alternative to the common
`forM_ [1..n]` idiom, which in many cases GHC cannot fuse to efficient
code.

See <https://ghc.haskell.org/trac/ghc/ticket/8763>.")
    (license license:expat)))

haskell-8.4-loop

(define-public haskell-8.4-lrucaching
  (package
    (name "haskell-8.4-lrucaching")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("12" "0jc46492lq09yrmp0887q9smk0z6nn35nlgcarm9rndsr2a1x0ya")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-psqueues)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/cocreature/lrucaching#readme")
    (synopsis "LRU cache")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.4-lrucaching

(define-public haskell-8.4-lz4
  (package
    (name "haskell-8.4-lz4")
    (version "0.2.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lz4/lz4-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1wck0sl7m873pqnpmn95vrp9jbr7awjdp9rrkqgj0nd3l6z65k4q"))))
    (properties `((upstream-name . "lz4") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "http://github.com/mwotton/lz4hs")
    (synopsis "LZ4 compression for ByteStrings")
    (description
     "High level bindings to the LZ4 compression library.

Currently based on lz4 r119. C sources are included and no external
dependencies are needed other than @@cereal@@.")
    (license license:bsd-3)))

haskell-8.4-lz4

(define-public haskell-8.4-main-tester
  (package
    (name "haskell-8.4-main-tester")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/main-tester/main-tester-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sagm9fkdgjv8x602bjj32glcrivjf3yz47gpbbm48k0mk0dj2dc"))))
    (properties `((upstream-name . "main-tester") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-hspec-core)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://gitlab.com/igrep/main-tester#readme")
    (synopsis
     "Capture stdout/stderr/exit code, and replace stdin of your main function.")
    (description "See README.md for detail.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.4-main-tester

(define-public haskell-8.4-matrix-market-attoparsec
  (package
    (name "haskell-8.4-matrix-market-attoparsec")
    (version "0.1.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/matrix-market-attoparsec/matrix-market-attoparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xqa4q4wyjjh55lggsyjhsi0kb5rhk3afzk0qhnhdmnzmf0slhay"))))
    (properties `((upstream-name . "matrix-market-attoparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)))
    (home-page "https://github.com/ocramz/matrix-market-attoparsec")
    (synopsis
     "Parsing and serialization functions for the NIST Matrix Market format")
    (description
     "Parsing and serialization functions for the NIST Matrix Market format.")
    (license license:bsd-2)))

haskell-8.4-matrix-market-attoparsec

(define-public haskell-8.4-mcmc-types
  (package
    (name "haskell-8.4-mcmc-types")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mcmc-types/mcmc-types-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0vpwrszhpl0ygs1qjk9v8gakl4rjia0cl4y3vna7cmh51c1jajrw"))))
    (properties `((upstream-name . "mcmc-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-mwc-probability)))
    (home-page "http://github.com/jtobin/mcmc-types")
    (synopsis "Common types for sampling.")
    (description
     "Common types for implementing Markov Chain Monte Carlo (MCMC) algorithms.

An instance of an MCMC problem can be characterized by the following:

* A /target distribution/ over some parameter space

* A /parameter space/ for a Markov chain to wander over

* A /transition operator/ to drive the Markov chain

/mcmc-types/ provides the suitably-general 'Target', 'Chain', and
'Transition' types for representing these things respectively.")
    (license license:expat)))

haskell-8.4-mcmc-types

(define-public haskell-8.4-microstache
  (package
    (name "haskell-8.4-microstache")
    (version "1.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microstache/microstache-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0851sqr1ppdj6m822635pa3j6qzdf25gyrhkjs25zdry6518bsax"))))
    (properties `((upstream-name . "microstache") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("7" "05ia18kywpmk01sqnywflfq0ck3yivh8rc178f575py1zrdpn3l7")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/phadej/microstache")
    (synopsis "Mustache templates for Haskell")
    (description
     "Mustache templates for Haskell.

Based on @@stache@@ library, which uses @@megaparsec@@.
This library uses @@parsec@@, thus the name: @@microstache@@.")
    (license license:bsd-3)))

haskell-8.4-microstache

(define-public haskell-8.4-mime-mail
  (package
    (name "haskell-8.4-mime-mail")
    (version "0.4.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mime-mail/mime-mail-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0gmapbjci8nclwm8syg5xfci4nj8cpchb9ry1b7gwhcp9kaw6cln"))))
    (properties `((upstream-name . "mime-mail") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "14zadyz63gjpf58h6v36w3jwwpxpg86czw19r4211wprqfclvr92")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)))
    (home-page "http://github.com/snoyberg/mime-mail")
    (synopsis "Compose MIME email messages.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/mime-mail>.")
    (license license:expat)))

haskell-8.4-mime-mail

(define-public haskell-8.4-mnist-idx
  (package
    (name "haskell-8.4-mnist-idx")
    (version "0.1.2.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mnist-idx/mnist-idx-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1zmjj71bv5yzdjm4hmlkiwcvv810mln090yp8znj2j21hiz1dzs2"))))
    (properties `((upstream-name . "mnist-idx") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/kryoxide/mnist-idx/")
    (synopsis
     "Read and write IDX data that is used in e.g. the MNIST database.")
    (description
     "This package provides functionality to read and write data in the IDX
binary format. This format is relevant for machine learning applications,
like the MNIST handwritten digit database.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.4-mnist-idx

(define-public haskell-8.4-netpbm
  (package
    (name "haskell-8.4-netpbm")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/netpbm/netpbm-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1my2zi26wspzh0pplfhgwj9vmkv41hwvrzl8k1virqsbm6y08sl4"))))
    (properties `((upstream-name . "netpbm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1vhwjv5c5gxn9l9982da54nzczbmj8rl09xn8ac7rix0zmmyvl50")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-attoparsec-binary)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-storable-record)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-vector-th-unbox)))
    (home-page "https://github.com/nh2/haskell-netpbm")
    (synopsis "Loading PBM, PGM, PPM image files")
    (description
     "This package contains pure Haskell parsers for the netpbm image formats: PBM, PGM and PPM, for both ASCII and binary encodings.

All netpbm image formats are implemented (P1 - P6).

The current implementation parses PPM images at around 10 MB/s on a Core i5-2520M.

CHANGELOG

Version 1.0.1

* Added required Vector imports necessary for deriving Unbox instances.

Version 1.0.0

* Use storable instead of unboxed vectors to allow easier integration with Ptr based APIs.")
    (license license:expat)))

haskell-8.4-netpbm

(define-public haskell-8.4-newtype-generics
  (package
    (name "haskell-8.4-newtype-generics")
    (version "0.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/newtype-generics/newtype-generics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0igyisw2djg19v9vkna1rwf47k97mvkvk4bbkmswznvbm00z15gj"))))
    (properties `((upstream-name . "newtype-generics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1glnwq1lw7780qgahqvh1qfx6k2ciwmbhc2wcc78v3aa3s954c8v")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "http://github.com/sjakobi/newtype-generics")
    (synopsis "A typeclass and set of functions for working with newtypes")
    (description
     "Per Conor McBride, the Newtype typeclass represents the packing and unpacking of a newtype,
and allows you to operate under that newtype with functions such as ala.
Generics support was added in version 0.4, making this package a full replacement
for the original newtype package, and a better alternative to newtype-th.")
    (license license:bsd-3)))

haskell-8.4-newtype-generics

(define-public haskell-8.4-optparse-text
  (package
    (name "haskell-8.4-optparse-text")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)))
    (home-page "https://github.com/passy/optparse-text#readme")
    (synopsis "Data.Text helpers for optparse-applicative")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.4-optparse-text

(define-public haskell-8.4-pagination
  (package
    (name "haskell-8.4-pagination")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pagination/pagination-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0g90xg5nfrwkrrmsfca5d2xf9y8md6pgh91zjk0dl2l3kvkbmp48"))))
    (properties `((upstream-name . "pagination") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("2" "0wvwi3hymp2vhhpzpycdc65zbsqmi2h0c6r0nf8p5nkgsk4pm1k2")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/mrkkrp/pagination")
    (synopsis "Framework-agnostic pagination boilerplate")
    (description "Framework-agnostic pagination boilerplate.")
    (license license:bsd-3)))

haskell-8.4-pagination

(define-public haskell-8.4-path-pieces
  (package
    (name "haskell-8.4-path-pieces")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/path-pieces")
    (synopsis "Components of paths.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/path-pieces>.")
    (license license:bsd-3)))

haskell-8.4-path-pieces

(define-public haskell-8.4-plot-light
  (package
    (name "haskell-8.4-plot-light")
    (version "0.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/plot-light/plot-light-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1fwz74a2fh7rgxv7i9kz6izxl1zrpa8bml2dxph7w7hdz1pi3g5b"))))
    (properties `((upstream-name . "plot-light") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-blaze-markup)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-svg)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-colour)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-histogram-fill)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/ocramz/plot-light")
    (synopsis "A lightweight plotting library, exporting to SVG")
    (description
     "This library provides drawing and plotting datastructures and functions; it is aimed in particular at scientific visualization, but it also exposes its plotting primitives and a small but general purpose 2D geometry library.")
    (license license:bsd-3)))

haskell-8.4-plot-light

(define-public haskell-8.4-postgresql-simple-url
  (package
    (name "haskell-8.4-postgresql-simple-url")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-simple-url/postgresql-simple-url-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jg9gvpidrfy2hqixwqsym1l1mnkafmxwq58jpbzdmrbvryga1qk"))))
    (properties `((upstream-name . "postgresql-simple-url") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "17l5iq6c4yjw3gswgav398cbih5105m05ak68kdibv6jjazkqw7p")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-postgresql-simple)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql)))
    (home-page "https://github.com/futurice/postgresql-simple-url")
    (synopsis "Parse postgres:// url into ConnectInfo")
    (description
     "The 'Database.PostgreSQL.Simple.URL' module in this package exports
two helper functions 'parseDatabaseUrl' and 'urlToConnectInfo' to
construct 'ConnectInfo' from URI (or string).

@@
>>> parseDatabaseUrl \"postgres://foo:bar@@example.com:2345/database\"
Just (ConnectInfo \"example.com\" 2345 \"foo\" \"bar\" \"database\")
@@")
    (license license:expat)))

haskell-8.4-postgresql-simple-url

(define-public haskell-8.4-pretty-types
  (package
    (name "haskell-8.4-pretty-types")
    (version "0.2.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pretty-types/pretty-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kvqp39q1qydgf6rlrabgjcgv53irdh9xvw2p7hazbls178ljv75"))))
    (properties `((upstream-name . "pretty-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)))
    (home-page "https://github.com/sheyll/pretty-types#readme")
    (synopsis "A small pretty printing DSL for complex types.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.4-pretty-types

(define-public haskell-8.4-projectroot
  (package
    (name "haskell-8.4-projectroot")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/yamadapc/haskell-projectroot")
    (synopsis "Bindings to the projectroot C logic")
    (description
     "Simple way of finding the root of a project given an
entry-point. This module provides bindings to the
<https://github.com/yamadapc/projectroot projectroot> C library")
    (license license:expat)))

haskell-8.4-projectroot

(define-public haskell-8.4-prometheus-client
  (package
    (name "haskell-8.4-prometheus-client")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prometheus-client/prometheus-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nyh90ixf4g54q8qy315fv310rn0sw6rypkj37876isdhq5w8a2z"))))
    (properties `((upstream-name . "prometheus-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-atomic-primops)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-clock)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-random-shuffle)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
    (home-page "https://github.com/fimad/prometheus-haskell")
    (synopsis "Haskell client library for http://prometheus.io.")
    (description "Haskell client library for http://prometheus.io.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.4-prometheus-client

(define-public haskell-8.4-protobuf-simple
  (package
    (name "haskell-8.4-protobuf-simple")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/protobuf-simple/protobuf-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1i6dmf9nppjk2xd2s91bmbnb9r915h5ypq5923jpralry2ax6ach"))))
    (properties `((upstream-name . "protobuf-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)))
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

haskell-8.4-protobuf-simple

(define-public haskell-8.4-psql-helpers
  (package
    (name "haskell-8.4-psql-helpers")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/psql-helpers/psql-helpers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1x0r68mfv56rp87j8ick875wbq3qzkii9ia60amx6xr40x1acg7i"))))
    (properties `((upstream-name . "psql-helpers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-postgresql-simple)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql)))
    (home-page "http://github.com/agrafix/psql-helpers#readme")
    (synopsis
     "A small collection of helper functions to generate postgresql queries")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.4-psql-helpers

(define-public haskell-8.4-publicsuffix
  (package
    (name "haskell-8.4-publicsuffix")
    (version "0.20180513")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/publicsuffix/publicsuffix-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wq9hz1z924a5pk17zyaf9nyz5z5fyrlf806rypdxnpvi4q1j7xm"))))
    (properties `((upstream-name . "publicsuffix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/wereHamster/publicsuffix-haskell/")
    (synopsis "The publicsuffix list exposed as proper Haskell types")
    (description
     "This package contains a parsed representation of the publicsuffix list,
and functions which you can use to query it.

The package version follows the template @@\\<api version\\>.\\<date\\>@@ where
@@date@@ is when the publicsuffix list was last updated from upstream, in the
format @@YYYYMMDD@@.")
    (license license:expat)))

haskell-8.4-publicsuffix

(define-public haskell-8.4-quickbench
  (package
    (name "haskell-8.4-quickbench")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickbench/quickbench-" version
                    ".tar.gz"))
              (sha256
               (base32
                "09mrhwvz0jnjrxgj3as7d4jl739gakli5crxfmp390x6a0p2bzlb"))))
    (properties `((upstream-name . "quickbench") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-docopt)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-pretty-show)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tabular)))
    (home-page "https://github.com/simonmichael/quickbench#readme")
    (synopsis "quick & easy benchmarking of command-line programs")
    (description
     "quickbench produces very simple output (elapsed seconds),
as quickly as possible (running commands just once by default),
and tabulates results from multiple executables.
I find it very useful for quick and dirty, exploratory, and comparative measurements
that you can understand at a glance.
Please see the readme for more.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-quickbench

(define-public haskell-8.4-quickcheck-assertions
  (package
    (name "haskell-8.4-quickcheck-assertions")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-ieee754)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-pretty-show)))
    (home-page "https://github.com/s9gf4ult/quickcheck-assertions")
    (synopsis "HUnit like assertions for QuickCheck")
    (description
     "Library with convenient assertions for QuickCheck properties like in HUnit")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.4-quickcheck-assertions

(define-public haskell-8.4-ramus
  (package
    (name "haskell-8.4-ramus")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-quickcheck-io)))
    (home-page "https://github.com/NickSeagull/ramus#readme")
    (synopsis "Elm signal system for Haskell")
    (description
     "Ramus is a direct port of purescript-signal into Haskell, offering the Elm signal system for Haskell.")
    (license license:expat)))

haskell-8.4-ramus

(define-public haskell-8.4-resourcet
  (package
    (name "haskell-8.4-resourcet")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/resourcet/resourcet-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1rfbfcv3r1h29y0yqr3x6a1s04lbc3vzm3jqnfg4f9rqp9d448qk"))))
    (properties `((upstream-name . "resourcet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "18v6frks5zr64hpq8dprbk6dxpq4ykijp1xg00ghp7qz060f1r0i")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unliftio-core)))
    (home-page "http://github.com/snoyberg/conduit")
    (synopsis "Deterministic allocation and freeing of scarce resources.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/resourcet>.")
    (license license:bsd-3)))

haskell-8.4-resourcet

(define-public haskell-8.4-rot13
  (package
    (name "haskell-8.4-rot13")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/kvanberendonck/codec-rot13")
    (synopsis "Fast ROT13 cipher for Haskell.")
    (description
     "A fast ROT13 cipher for Haskell implemented using as few branches as possible.
For more information on ROT13, see: <https://en.wikipedia.org/wiki/ROT13>")
    (license license:bsd-3)))

haskell-8.4-rot13

(define-public haskell-8.4-rvar
  (package
    (name "haskell-8.4-rvar")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rvar/rvar-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1h3bii1pamkv7656280i6zx7fpdwgbn2ysfijpd2s65szlpsz2np"))))
    (properties `((upstream-name . "rvar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fmtl2")
       #:cabal-revision
       ("1" "1ifwwjlhc3l8ycjmmarw6v1nm7jxpgqw2ly0q35idlj0jc0nbxn6")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-MonadPrompt)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-random-source)))
    (home-page "https://github.com/mokus0/random-fu")
    (synopsis "Random Variables")
    (description "Random number generation based on modeling random
variables by an abstract type ('RVar') which can be
composed and manipulated monadically and sampled in
either monadic or \\\"pure\\\" styles.

The primary purpose of this library is to support
defining and sampling a wide variety of high quality
random variables.  Quality is prioritized over speed,
but performance is an important goal too.

In my testing, I have found it capable of speed
comparable to other Haskell libraries, but still
a fair bit slower than straight C implementations of
the same algorithms.

Changes in 0.2.0.1:  Version bump for transformers
dependency.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.4-rvar

(define-public haskell-8.4-safe-exceptions
  (package
    (name "haskell-8.4-safe-exceptions")
    (version "0.1.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safe-exceptions/safe-exceptions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sd0zfsm9pcll5bzzj523rbn45adjrnavdkz52hgmdjjgdcdrk8q"))))
    (properties `((upstream-name . "safe-exceptions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "0x82m44qwf3fls3ypbdca958l9hhfqyfip6rzzxi7648f0sasv21")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-void)))
    (home-page "https://github.com/fpco/safe-exceptions#readme")
    (synopsis "Safe, consistent, and easy exception handling")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.4-safe-exceptions

(define-public haskell-8.4-scalendar
  (package
    (name "haskell-8.4-scalendar")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/scalendar/scalendar-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1b33w7fh9jfsr9wrdvnhc7nvn7km69f4qb03d0hb4zlylf6mxj7m"))))
    (properties `((upstream-name . "scalendar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-SCalendar-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/stackbuilders/scalendar")
    (synopsis
     "A library for handling calendars and resource availability over time.")
    (description
     "scalendar is a library based on the \"top-nodes algorithm\", invented by
Martin Rayrole <https://en.wikipedia.org/wiki/Top-nodes_algorithm>, and
set operations, which makes it easy to handle the availability of a set of
resources over time.")
    (license license:expat)))

haskell-8.4-scalendar

(define-public haskell-8.4-scanner
  (package
    (name "haskell-8.4-scanner")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/scanner/scanner-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1sd5czkfncadyxlbr13is44ad3kkk6rfwm9fqw8m4aipl1l0s0is"))))
    (properties `((upstream-name . "scanner") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1mf7sia243x1cf23kxsrq3qrlrabrs2j8pk8y9m9pq5rg4kvvdq7")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/Yuras/scanner")
    (synopsis
     "Fast non-backtracking incremental combinator parsing for bytestrings")
    (description "Parser combinator library designed to be fast. It doesn't
support backtracking.")
    (license license:bsd-3)))

haskell-8.4-scanner

(define-public haskell-8.4-search-algorithms
  (package
    (name "haskell-8.4-search-algorithms")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/search-algorithms/search-algorithms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "046v424bvfnvf3hw38k9isdn9f05l4jk8k1fb2p3zn5zgb4h77aa"))))
    (properties `((upstream-name . "search-algorithms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/devonhollowood/search-algorithms#readme")
    (synopsis "Common graph search algorithms")
    (description "Library containing common graph search algorithms,
including depth-first and breadth-first searches,
Dijkstra's algorithm, and A*")
    (license license:bsd-3)))

haskell-8.4-search-algorithms

(define-public haskell-8.4-shakespeare
  (package
    (name "haskell-8.4-shakespeare")
    (version "2.0.20")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shakespeare/shakespeare-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00wybn9dcwi2y1cp87fyvhcqn8filvb8as7k78g1m1c5wpwby3pm"))))
    (properties `((upstream-name . "shakespeare") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-test_export" "-f-test_coffee" "-f-test_roy")
       #:cabal-revision
       ("1" "027jrzir3xp4bi58g4brp96mgvc02nvjbz6wnd19jxmr9gsrd5b7")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-blaze-markup)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://www.yesodweb.com/book/shakespearean-templates")
    (synopsis "A toolkit for making compile-time interpolated templates")
    (description
     "Shakespeare is a family of type-safe, efficient template languages. Shakespeare templates are expanded at compile-time, ensuring that all interpolated variables are in scope. Variables are interpolated according to their type through a typeclass.

Shakespeare templates can be used inline with a quasi-quoter or in an external file.

Note there is no dependency on haskell-src-extras. Instead Shakespeare believes logic should stay out of templates and has its own minimal Haskell parser.

Packages that use this: xml-hamlet

Please see the documentation at <http://www.yesodweb.com/book/shakespearean-templates> for more details.")
    (license license:expat)))

haskell-8.4-shakespeare

(define-public haskell-8.4-should-not-typecheck
  (package
    (name "haskell-8.4-should-not-typecheck")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hspec-expectations)))
    (home-page "http://github.com/CRogers/should-not-typecheck")
    (synopsis
     "A HUnit/hspec assertion library to verify that an expression does not typecheck")
    (description
     "For examples and an introduction to the library please take a look at the <https://github.com/CRogers/should-not-typecheck#should-not-typecheck- README> on github.")
    (license license:bsd-3)))

haskell-8.4-should-not-typecheck

(define-public haskell-8.4-skylighting
  (package
    (name "haskell-8.4-skylighting")
    (version "0.7.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/skylighting/skylighting-"
                    version ".tar.gz"))
              (sha256
               (base32
                "080kmpqaqh76qqjml34rfm7m6pchdmd2519g6y3kdb3x5vj01qbx"))))
    (properties `((upstream-name . "skylighting") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-system-pcre" "-f-executable")))
    (outputs (list "out" "static" "doc"))
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
                     haskell-8.4-pretty-show)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-skylighting-core)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
    (home-page "https://github.com/jgm/skylighting")
    (synopsis "syntax highlighting library")
    (description "Skylighting is a syntax highlighting library with
support for over one hundred languages.  It derives
its tokenizers from XML syntax definitions used
by KDE's KSyntaxHighlighting framework, so any
syntax supported by that framework can be added.
An optional command-line program is provided.
Skylighting is intended to be the successor to
highlighting-kate.
This package provides generated syntax modules
based on the KDE XML definitions provided by the
@@skylighting-core@@ package. As a result this
package is licensed under the GPL.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-skylighting

(define-public haskell-8.4-stopwatch
  (package
    (name "haskell-8.4-stopwatch")
    (version "0.1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stopwatch/stopwatch-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0q9l27cpfz5hs3ggxij0lk8p3vrgkjg1binhv2nwss4dvygdc7j6"))))
    (properties `((upstream-name . "stopwatch") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-test_delay_upper_bound" "-f-test_threaded")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-clock)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/debug-ito/stopwatch")
    (synopsis "A simple stopwatch utility")
    (description "A simple stopwatch utility")
    (license license:bsd-3)))

haskell-8.4-stopwatch

(define-public haskell-8.4-streaming-commons
  (package
    (name "haskell-8.4-streaming-commons")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/streaming-commons/streaming-commons-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13fn6qmpiggwpn8lczyydgp77cyzfypwds7wxskrwir4i5cgxlfq"))))
    (properties `((upstream-name . "streaming-commons") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-use-bytestring-builder")
       #:cabal-revision
       ("2" "0nidxk67znphb4qz41r1bzzh2y65d5lqlb368gq72wy7w43qvxby")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/fpco/streaming-commons")
    (synopsis
     "Common lower-level functions needed by various streaming data libraries")
    (description
     "Provides low-dependency functionality commonly needed by various streaming data libraries, such as conduit and pipes.")
    (license license:expat)))

haskell-8.4-streaming-commons

(define-public haskell-8.4-string-conversions
  (package
    (name "haskell-8.4-string-conversions")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
    (home-page "https://github.com/soenkehahn/string-conversions#readme")
    (synopsis "Simplifies dealing with different types for strings")
    (description
     "Provides a simple type class for converting values of different string types into values of other string types.")
    (license license:bsd-3)))

haskell-8.4-string-conversions

(define-public haskell-8.4-stringbuilder
  (package
    (name "haskell-8.4-stringbuilder")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/stringbuilder")
    (synopsis "A writer monad for multi-line string literals")
    (description "<https://github.com/sol/stringbuilder#readme>")
    (license license:expat)))

haskell-8.4-stringbuilder

(define-public haskell-8.4-sum-type-boilerplate
  (package
    (name "haskell-8.4-sum-type-boilerplate")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/jdreaver/sum-type-boilerplate#readme")
    (synopsis "Library for reducing the boilerplate involved with sum types")
    (description
     "Library for reducing the boilerplate involved in creating and manipulating sum types")
    (license license:expat)))

haskell-8.4-sum-type-boilerplate

(define-public haskell-8.4-sysinfo
  (package
    (name "haskell-8.4-sysinfo")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hspec-expectations)))
    (home-page "https://github.com/psibi/sysinfo#readme")
    (synopsis "Haskell Interface for getting overall system statistics")
    (description "This package can be used to get system statistics like
uptime, free memory, system load etc. Note that
the package works *only* on Linux system with
kernel version >= 2.3.23 and uses FFI calls.")
    (license license:bsd-3)))

haskell-8.4-sysinfo

(define-public haskell-8.4-tasty-expected-failure
  (package
    (name "haskell-8.4-tasty-expected-failure")
    (version "0.11.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-expected-failure/tasty-expected-failure-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1i2s809m644b7hgiblqay9j364r3fjj1rwbrahsn1pgr5q6mr6ji"))))
    (properties `((upstream-name . "tasty-expected-failure") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1b3fn7d3zwhhwm3gp8cmmsdcrvn9dhshd665xrx1mk6cmy4m8k16")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
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

haskell-8.4-tasty-expected-failure

(define-public haskell-8.4-tasty-hunit
  (package
    (name "haskell-8.4-tasty-hunit")
    (version "0.10.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-hunit/tasty-hunit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j3hgga6c3s8h5snzivb8a75h96207ia2rlbxzj07xbf4zpkp44g"))))
    (properties `((upstream-name . "tasty-hunit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-call-stack)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "https://github.com/feuerbach/tasty")
    (synopsis "HUnit support for the Tasty test framework.")
    (description "HUnit support for the Tasty test framework.")
    (license license:expat)))

haskell-8.4-tasty-hunit

(define-public haskell-8.4-tasty-hunit-notests
  (package
    (name "haskell-8.4-tasty-hunit-notests")
    (version "0.10.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-hunit/tasty-hunit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j3hgga6c3s8h5snzivb8a75h96207ia2rlbxzj07xbf4zpkp44g"))))
    (properties `((upstream-name . "tasty-hunit") (hidden? . #t)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-call-stack)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "https://github.com/feuerbach/tasty")
    (synopsis "HUnit support for the Tasty test framework.")
    (description "HUnit support for the Tasty test framework.")
    (license license:expat)))

haskell-8.4-tasty-hunit-notests

(define-public haskell-8.4-tasty-program
  (package
    (name "haskell-8.4-tasty-program")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
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

haskell-8.4-tasty-program

(define-public haskell-8.4-tasty-quickcheck-notests
  (package
    (name "haskell-8.4-tasty-quickcheck-notests")
    (version "0.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-quickcheck/tasty-quickcheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vr6szbbz3s5461i0zr8zpq347zfvidfzv5gf3xwxhm0yk731z8h"))))
    (properties `((upstream-name . "tasty-quickcheck") (hidden? . #t)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1ndkkywcqgb2wj339vgckjv5915da5kd4ixlkaww9fsba3qsrnwx")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "https://github.com/feuerbach/tasty")
    (synopsis "QuickCheck support for the Tasty test framework.")
    (description "QuickCheck support for the Tasty test framework.")
    (license license:expat)))

haskell-8.4-tasty-quickcheck-notests

(define-public haskell-8.4-tasty-smallcheck
  (package
    (name "haskell-8.4-tasty-smallcheck")
    (version "0.8.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-smallcheck/tasty-smallcheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1n66ngzllf3xrlqykwszlkwsi96n5nkm7xbpfq7774vpvfnafjri"))))
    (properties `((upstream-name . "tasty-smallcheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1cpbgvbai02kmrqly283zwk0lhni8lrad4rfm2kwxa95mfalsjrr")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-smallcheck)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "http://documentup.com/feuerbach/tasty")
    (synopsis "SmallCheck support for the Tasty test framework.")
    (description "SmallCheck support for the Tasty test framework.")
    (license license:expat)))

haskell-8.4-tasty-smallcheck

(define-public haskell-8.4-tasty-stats
  (package
    (name "haskell-8.4-tasty-stats")
    (version "0.2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-stats/tasty-stats-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0z244l1yl1m77i4nvs9db2v6a2ydgcpgyc78hzgfyin7as002kd6"))))
    (properties `((upstream-name . "tasty-stats") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "https://github.com/minad/tasty-stats#readme")
    (synopsis "Collect statistics of your Tasty testsuite")
    (description "Collect statistics of your Tasty testsuite in a CSV file")
    (license license:expat)))

haskell-8.4-tasty-stats

(define-public haskell-8.4-text-conversions
  (package
    (name "haskell-8.4-text-conversions")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-conversions/text-conversions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "089c56vdj9xysqfr1hnvbnrghlg83q6w10xk02gflpsidcpvwmhp"))))
    (properties `((upstream-name . "text-conversions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1rw2fi2y77599zmkacf2y06jmxkasydmkkknkmg5xg29hw64a82i")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-errors)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/cjdev/text-conversions#readme")
    (synopsis "Safe conversions between textual types")
    (description "Safe conversions between textual types")
    (license license:isc)))

haskell-8.4-text-conversions

(define-public haskell-8.4-text-metrics
  (package
    (name "haskell-8.4-text-metrics")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-metrics/text-metrics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18mzxwkdvjp31r720ai9bnxr638qq8x3a2v408bz0d8f0rsayx1q"))))
    (properties `((upstream-name . "text-metrics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("4" "017drxq9x56b345d8w5m8xdsi1zzs0z16pbdx8j35cd1lsnh3kf1")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/mrkkrp/text-metrics")
    (synopsis "Calculate various string metrics efficiently")
    (description "Calculate various string metrics efficiently.")
    (license license:bsd-3)))

haskell-8.4-text-metrics

(define-public haskell-8.4-text-zipper
  (package
    (name "haskell-8.4-text-zipper")
    (version "0.10.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-zipper/text-zipper-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jxicjp0ak1fyl1n3yspxq6hv9l90zzy75glsv8bc2svsn9ypyls"))))
    (properties `((upstream-name . "text-zipper") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/jtdaugherty/text-zipper/")
    (synopsis "A text editor zipper library")
    (description "This library provides a zipper and API for editing text.")
    (license license:bsd-3)))

haskell-8.4-text-zipper

(define-public haskell-8.4-th-orphans
  (package
    (name "haskell-8.4-th-orphans")
    (version "0.13.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-orphans/th-orphans-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0sfl3pn9kq9da3ji3lsgzgzy82vz6yvsg80dmakc1jvk7awycibp"))))
    (properties `((upstream-name . "th-orphans") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-th-lift)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-th-lift-instances)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-th-reify-many)))
    (home-page "https://hackage.haskell.org/package/th-orphans")
    (synopsis "Orphan instances for TH datatypes")
    (description "Orphan instances for TH datatypes.  In particular, instances
for Ord and Lift, as well as a few missing Show / Eq.  These
instances used to live in haskell-src-meta, and that's where
the version number started.")
    (license license:bsd-3)))

haskell-8.4-th-orphans

(define-public haskell-8.4-thread-hierarchy
  (package
    (name "haskell-8.4-thread-hierarchy")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/thread-hierarchy/thread-hierarchy-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0d2wbm75f59vj1h18afdhb1wqyclv5gpgj6pyrhbcnf7aa2490c1"))))
    (properties `((upstream-name . "thread-hierarchy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/nshimaza/thread-hierarchy#readme")
    (synopsis "Simple Haskel thread management in hierarchical manner")
    (description
     "Please see the README on GitHub at <https://github.com/nshimaza/thread-hierarchy#readme>")
    (license license:expat)))

haskell-8.4-thread-hierarchy

(define-public haskell-8.4-type-of-html
  (package
    (name "haskell-8.4-type-of-html")
    (version "1.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-of-html/type-of-html-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05c9rsbfivw7dsjmci7rnv08i4xmyg59kqghqi0f3dr5hrvas8dv"))))
    (properties `((upstream-name . "type-of-html") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-double-conversion)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://github.com/knupfer/type-of-html")
    (synopsis "High performance type driven html generation.")
    (description
     "This library makes most invalid html documents compile time errors and uses advanced type level features to realise compile time computations.")
    (license license:bsd-3)))

haskell-8.4-type-of-html

(define-public haskell-8.4-typenums
  (package
    (name "haskell-8.4-typenums")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/typenums/typenums-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06wrsvbddv2ga7k39954697jnclb5r6g4m95pr0fmv34ws1y1d66"))))
    (properties `((upstream-name . "typenums") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/adituv/typenums#readme")
    (synopsis "Type level numbers using existing Nat functionality")
    (description
     "Type level numbers using existing Nat functionality. Uses kind-polymorphic typeclasses and type families to facilitate more general code compatible with existing code using type-level Naturals.")
    (license license:bsd-3)))

haskell-8.4-typenums

(define-public haskell-8.4-uniprot-kb
  (package
    (name "haskell-8.4-uniprot-kb")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uniprot-kb/uniprot-kb-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hh6fnnmr6i4mgli07hgaagswdipa0p3ckr3jzzfcw4y5x98036l"))))
    (properties `((upstream-name . "uniprot-kb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1g4qds20lwsbn5hqrgbhb4yd5w5vx2gkw47mjvxr8z8nj20g2pii")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-neat-interpolation)))
    (home-page "https://github.com/biocad/uniprot-kb#readme")
    (synopsis "UniProt-KB format parser")
    (description
     "Specification implementation of https://web.expasy.org/docs/userman.html")
    (license license:bsd-3)))

haskell-8.4-uniprot-kb

(define-public haskell-8.4-unix-time
  (package
    (name "haskell-8.4-unix-time")
    (version "0.3.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unix-time/unix-time-" version
                    ".tar.gz"))
              (sha256
               (base32
                "051slgpid5cxiaw203ky0ql3823h28fcjs08axkzd4265wrvv8fw"))))
    (properties `((upstream-name . "unix-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-old-time)))
    (home-page "https://hackage.haskell.org/package/unix-time")
    (synopsis "Unix time parser/formatter and utilities")
    (description "Fast parser\\/formatter\\/utilities for Unix time")
    (license license:bsd-3)))

haskell-8.4-unix-time

(define-public haskell-8.4-unliftio
  (package
    (name "haskell-8.4-unliftio")
    (version "0.2.9.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unliftio/unliftio-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1f1rrmajnz5j2ljryi9gqx64hjr30yy7pz9rjx02pdfi6alrcrgz"))))
    (properties `((upstream-name . "unliftio") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unliftio-core)))
    (home-page "https://github.com/fpco/unliftio/tree/master/unliftio#readme")
    (synopsis
     "The MonadUnliftIO typeclass for unlifting monads to IO (batteries included)")
    (description
     "Please see the documentation and README at <https://www.stackage.org/package/unliftio>")
    (license license:expat)))

haskell-8.4-unliftio

(define-public haskell-8.4-validity
  (package
    (name "haskell-8.4-validity")
    (version "0.7.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity/validity-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0xribw98amafihw87ddajk6vlirp7w9b26lrnjgq7jfm4710j95f"))))
    (properties `((upstream-name . "validity") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
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

haskell-8.4-validity

(define-public haskell-8.4-valor
  (package
    (name "haskell-8.4-valor")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/valor/valor-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1rmsss4zffyzf6vf1p2zj07a6a32pyrbdb259gflr5gg817m3kh4"))))
    (properties `((upstream-name . "valor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/reygoch/valor#readme")
    (synopsis "Simple general structured validation library")
    (description
     "Please see the README on GitHub at <https://github.com/reygoch/valor#readme>")
    (license license:expat)))

haskell-8.4-valor

(define-public haskell-8.4-wikicfp-scraper
  (package
    (name "haskell-8.4-wikicfp-scraper")
    (version "0.1.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wikicfp-scraper/wikicfp-scraper-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qj28a53shcr4dq8i1fhyjbr4ybiyfb0kz3w0g439736mrnzsg4y"))))
    (properties `((upstream-name . "wikicfp-scraper") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scalpel-core)))
    (home-page "https://github.com/debug-ito/wikicfp-scraper")
    (synopsis "Scrape WikiCFP web site")
    (description "Scrape WikiCFP web site. See 'Web.WikiCFP.Scraper'.")
    (license license:bsd-3)))

haskell-8.4-wikicfp-scraper

(define-public haskell-8.4-wild-bind
  (package
    (name "haskell-8.4-wild-bind")
    (version "0.1.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wild-bind/wild-bind-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1dl3vh4xn6mml2mydapyqwlg872pczgz7lv912skzwnzv55hxg12"))))
    (properties `((upstream-name . "wild-bind") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-microlens)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)))
    (home-page "https://github.com/debug-ito/wild-bind")
    (synopsis "Dynamic key binding framework")
    (description
     "Dynamic key binding framework. See <https://github.com/debug-ito/wild-bind>")
    (license license:bsd-3)))

haskell-8.4-wild-bind

(define-public haskell-8.4-with-location
  (package
    (name "haskell-8.4-with-location")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/sol/with-location#readme")
    (synopsis
     "Use ImplicitParams-based source locations in a backward compatible way")
    (description "")
    (license license:expat)))

haskell-8.4-with-location

(define-public haskell-8.4-word-trie
  (package
    (name "haskell-8.4-word-trie")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/yi-editor/word-trie")
    (synopsis "Implementation of a finite trie over words.")
    (description "Implementation of a finite trie over words.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-word-trie

(define-public haskell-8.4-word-wrap
  (package
    (name "haskell-8.4-word-wrap")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/word-wrap/word-wrap-" version
                    ".tar.gz"))
              (sha256
               (base32
                "15rcqhg9vb7qisk9ryjnyhhfgigxksnkrczycaw2rin08wczjwpb"))))
    (properties `((upstream-name . "word-wrap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1k4w4g053vhmpp08542hrqaw81p3p35i567xgdarqmpghfrk68pp")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/jtdaugherty/word-wrap/")
    (synopsis "A library for word-wrapping")
    (description "A library for wrapping long lines of text.")
    (license license:bsd-3)))

haskell-8.4-word-wrap

(define-public haskell-8.4-word8
  (package
    (name "haskell-8.4-word8")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/word8")
    (synopsis "Word8 library")
    (description "Word8 library to be used with Data.ByteString")
    (license license:bsd-3)))

haskell-8.4-word8

(define-public haskell-8.4-xss-sanitize
  (package
    (name "haskell-8.4-xss-sanitize")
    (version "0.3.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xss-sanitize/xss-sanitize-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1d72s3a6520iwwc1wbn9v2znqgbw6a5wwzb23iq8ny9ccnjyx1dk"))))
    (properties `((upstream-name . "xss-sanitize") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-css-text)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-tagsoup)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
    (home-page "https://github.com/yesodweb/haskell-xss-sanitize#readme")
    (synopsis "sanitize untrusted HTML to prevent XSS attacks")
    (description
     "run untrusted HTML through Text.HTML.SanitizeXSS.sanitizeXSS to prevent XSS attacks. see README.md <http://github.com/yesodweb/haskell-xss-sanitize> for more details")
    (license license:bsd-2)))

haskell-8.4-xss-sanitize

(define-public haskell-8.4-xxhash-ffi
  (package
    (name "haskell-8.4-xxhash-ffi")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/haskell-haskey/xxhash-ffi#readme")
    (synopsis "Bindings to the C implementation the xxHash algorithm")
    (description
     "Bindings to the C implementation the xxHash algorithm. xxHash provides 32-bit and 64-bit extremely fast non-cryptographic hash functions.")
    (license license:bsd-3)))

haskell-8.4-xxhash-ffi

(define-public haskell-8.4-yes-precure5-command
  (package
    (name "haskell-8.4-yes-precure5-command")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)))
    (home-page "https://github.com/igrep/yes-precure5-command/")
    (synopsis "Extended yes command to reproduce phrases in Yes! Precure 5.")
    (description
     "Provides extended yes command to reproduce phrases in Yes! Precure 5 or Yes! PreCure5 GoGo!

See <https://github.com/igrep/yes-precure5-command/blob/master/README.mkd> for details.")
    (license license:expat)))

haskell-8.4-yes-precure5-command

(define-public haskell-8.4-yi-rope
  (package
    (name "haskell-8.4-yi-rope")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-fingertree)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-quickcheck-instances)))
    (home-page "https://hackage.haskell.org/package/yi-rope")
    (synopsis "A rope data structure used by Yi")
    (description "A rope data structure used by Yi")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-yi-rope

(define-public haskell-8.4-zlib-bindings
  (package
    (name "haskell-8.4-zlib-bindings")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/snapframework/zlib-bindings")
    (synopsis "Low-level bindings to the zlib package.")
    (description "Low-level bindings to the zlib package.")
    (license license:bsd-3)))

haskell-8.4-zlib-bindings

