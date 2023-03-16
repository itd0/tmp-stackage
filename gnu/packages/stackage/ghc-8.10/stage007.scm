;;; generated file
(define-module (gnu packages stackage ghc-8.10 stage007)
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
(define-public haskell-8.10-ClustalParser
  (package
    (name "haskell-8.10-ClustalParser")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cmdargs)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-either-unwrap)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
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

haskell-8.10-ClustalParser

(define-public haskell-8.10-GLFW-b
  (package
    (name "haskell-8.10-GLFW-b")
    (version "3.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/GLFW-b/GLFW-b-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1xh6nnm4c7bjvbr62rw7vv86p0r76vrqhdbm89vmcs51jk92yxv4"))))
    (properties `((upstream-name . "GLFW-b") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-bindings-GLFW)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxcursor)
                             (@ (gnu packages xorg) libxi)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxxf86vm)))
    (home-page "https://hackage.haskell.org/package/GLFW-b")
    (synopsis "Bindings to GLFW OpenGL library")
    (description
     "Bindings to GLFW (<http://www.glfw.org/>), an open source, multi-platform
library for creating windows with OpenGL contexts and managing input and
events.

GLFW-b depends on bindings-GLFW
(<http://hackage.haskell.org/package/bindings-GLFW>), which, as of the time
of this writing, binds to GLFW 3.3.0, released 2019-04-15
(<http://www.glfw.org/Version-3.3.0-released.html>
<http://www.glfw.org/changelog.html>).

If you've used GLFW < 3 before, you should read the transition guide
(<http://www.glfw.org/docs/3.0/moving.html>).")
    (license license:bsd-3)))

haskell-8.10-GLFW-b

(define-public haskell-8.10-GLURaw
  (package
    (name "haskell-8.10-GLURaw")
    (version "2.0.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/GLURaw/GLURaw-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1b3rnva77k9naw5bl573bqgmsq7n9i8rrrvfvhbjcndqgmzhkini"))))
    (properties `((upstream-name . "GLURaw") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fusenativewindowslibraries")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-OpenGLRaw)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "http://www.haskell.org/haskellwiki/Opengl")
    (synopsis "A raw binding for the OpenGL graphics system")
    (description
     "GLURaw is a raw Haskell binding for the GLU 1.3 OpenGL utility library. It is
basically a 1:1 mapping of GLU's C API, intended as a basis for a nicer
interface.

OpenGL is the industry's most widely used and supported 2D and 3D graphics
application programming interface (API), incorporating a broad set of
rendering, texture mapping, special effects, and other powerful visualization
functions. For more information about OpenGL and its various extensions,
please see <http://www.opengl.org/>
and <http://www.opengl.org/registry/>.")
    (license license:bsd-3)))

haskell-8.10-GLURaw

(define-public haskell-8.10-HasBigDecimal
  (package
    (name "haskell-8.10-HasBigDecimal")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/thma/HasBigDecimal#readme")
    (synopsis "A library for arbitrary precision decimal numbers.")
    (description
     "A native Haskell implementation of arbitrary precicion decimal numbers, based on Haskell Integers. Inspired by Java BigDecimals")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-HasBigDecimal

(define-public haskell-8.10-HsOpenSSL
  (package
    (name "haskell-8.10-HsOpenSSL")
    (version "0.11.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HsOpenSSL/HsOpenSSL-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ysdfl8ck3nzhx597fa13dqf31jq5gzwajlak6r91jajks9w0dl5"))))
    (properties `((upstream-name . "HsOpenSSL") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-fast-bignum" "-f-homebrew-openssl" "-f-macports-openssl" "-f-use-pkg-config")
       #:cabal-revision
       ("3" "0nsqxym87s48029laqba4nzwpk7nrk35x7wmpjqfnbrj82ddcshd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hsc2hs)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)))
    (home-page "https://github.com/haskell-cryptography/HsOpenSSL")
    (synopsis "Partial OpenSSL binding for Haskell")
    (description
     "HsOpenSSL is an OpenSSL binding for Haskell. It can generate RSA
and DSA keys, read and write PEM files, generate message digests,
sign and verify messages, encrypt and decrypt messages. It has
also some capabilities of creating SSL clients and servers.

This package is in production use by a number of Haskell based
systems and stable. You may also be interested in the @@tls@@ package,
<http://hackage.haskell.org/package/tls>, which is a pure Haskell
implementation of SSL.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-HsOpenSSL

(define-public haskell-8.10-JuicyPixels-extra
  (package
    (name "haskell-8.10-JuicyPixels-extra")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mrkkrp/JuicyPixels-extra")
    (synopsis "Efficiently scale, crop, flip images with JuicyPixels")
    (description "Efficiently scale, crop, flip images with JuicyPixels.")
    (license license:bsd-3)))

haskell-8.10-JuicyPixels-extra

(define-public haskell-8.10-ViennaRNAParser
  (package
    (name "haskell-8.10-ViennaRNAParser")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-ParsecTools)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/ViennaRNAParser")
    (synopsis "Libary for parsing ViennaRNA package output")
    (description
     "Currently contains parsers and datatypes for: RNAalifold, RNAcode, RNAdistance, RNAcofold, RNAfold, RNAplex, RNAup, RNAz.

For more information on the ViennaRNA package refer to <http://www.tbi.univie.ac.at/RNA/>.

The libary is tested with Version 2.3.2 of the ViennaRNA package.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-ViennaRNAParser

(define-public haskell-8.10-adler32
  (package
    (name "haskell-8.10-adler32")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
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

haskell-8.10-adler32

(define-public haskell-8.10-alarmclock
  (package
    (name "haskell-8.10-alarmclock")
    (version "0.7.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/alarmclock/alarmclock-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0197phsc4rn5mn155hbmxplxi2ymra1x6lxq16xs6a8zrk4gfkj9"))))
    (properties `((upstream-name . "alarmclock") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-clock)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unbounded-delays)))
    (home-page "https://github.com/DaveCTurner/alarmclock")
    (synopsis "Wake up and perform an action at a certain time.")
    (description
     "Please see the README at <https://github.com/DaveCTurner/alarmclock/blob/master/README.md>")
    (license license:bsd-3)))

haskell-8.10-alarmclock

(define-public haskell-8.10-alsa-pcm
  (package
    (name "haskell-8.10-alsa-pcm")
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
       (list "-f-buildexamples" "-f-buildsynthesizer" "-f-debug")
       #:cabal-revision
       ("1" "1bq0rmawwn7xaqny6gvp0qh0pggqcxr9b64346fm4a8fsq71a6wi")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages linux) alsa-lib)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-alsa-core)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-sample-frame)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-storable-record)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://www.haskell.org/haskellwiki/ALSA")
    (synopsis "Binding to the ALSA Library API (PCM audio).")
    (description
     "This package provides access to ALSA realtime audio signal input and output.
For MIDI support see alsa-seq.")
    (license license:bsd-3)))

haskell-8.10-alsa-pcm

(define-public haskell-8.10-app-settings
  (package
    (name "haskell-8.10-app-settings")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
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

haskell-8.10-app-settings

(define-public haskell-8.10-appendmap
  (package
    (name "haskell-8.10-appendmap")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/koterpillar/appendmap#readme")
    (synopsis
     "Map with a Semigroup and Monoid instances delegating to Semigroup of the elements")
    (description
     "Please see the README on GitHub at <https://github.com/koterpillar/appendmap#readme>")
    (license license:bsd-3)))

haskell-8.10-appendmap

(define-public haskell-8.10-async-pool
  (package
    (name "haskell-8.10-async-pool")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-fgl)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)))
    (home-page "https://hackage.haskell.org/package/async-pool")
    (synopsis
     "A modified version of async that supports worker groups and many-to-many task dependencies")
    (description
     "This library modifies the @@async@@ package to allow for task pooling and
many-to-many dependencies between tasks.")
    (license license:expat)))

haskell-8.10-async-pool

(define-public haskell-8.10-bank-holidays-england
  (package
    (name "haskell-8.10-bank-holidays-england")
    (version "0.2.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bank-holidays-england/bank-holidays-england-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g8x61byxikanfdpnmfc354gp1kyd5c4jlym9w65sh7l1jpbm4ss"))))
    (properties `((upstream-name . "bank-holidays-england") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/DaveCTurner/bank-holidays-england")
    (synopsis "Calculation of bank holidays in England and Wales")
    (description
     "Calculation of bank holidays in England and Wales, using the rules that have
been in place since 1978, and including all exceptions to the rules in the
years 1995 to 2020.")
    (license license:bsd-3)))

haskell-8.10-bank-holidays-england

(define-public haskell-8.10-base-compat-batteries
  (package
    (name "haskell-8.10-base-compat-batteries")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
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

haskell-8.10-base-compat-batteries

(define-public haskell-8.10-bbdb
  (package
    (name "haskell-8.10-bbdb")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
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

haskell-8.10-bbdb

(define-public haskell-8.10-bitset-word8
  (package
    (name "haskell-8.10-bitset-word8")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-th-lift-instances)))
    (home-page "https://github.com/nshimaza/bitset-word8#readme")
    (synopsis
     "Space efficient set of Word8 and some pre-canned sets useful for parsing HTTP")
    (description
     "Please see the README on GitHub at <https://github.com/nshimaza/bitset-word8#readme>")
    (license license:expat)))

haskell-8.10-bitset-word8

(define-public haskell-8.10-boots
  (package
    (name "haskell-8.10-boots")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/leptonyu/boots#readme")
    (synopsis "IoC Monad in Haskell")
    (description
     "Monad used to encapsulate components, similiar to an IoC container.")
    (license license:expat)))

haskell-8.10-boots

(define-public haskell-8.10-bordacount
  (package
    (name "haskell-8.10-bordacount")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/hverr/bordacount#readme")
    (synopsis "Implementation of the Borda count election method.")
    (description
     "Implementation of the Borda count election method, optionally with
different weights for different participants.

See <https://en.wikipedia.org/wiki/Borda_count>")
    (license license:bsd-3)))

haskell-8.10-bordacount

(define-public haskell-8.10-burrito
  (package
    (name "haskell-8.10-burrito")
    (version "1.2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/burrito/burrito-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1i08p5g6yivmkgbhxv48amfdw523agjwyd02pbk5lbzyssc2sp7d"))))
    (properties `((upstream-name . "burrito") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
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
    (license license:isc)))

haskell-8.10-burrito

(define-public haskell-8.10-byte-count-reader
  (package
    (name "haskell-8.10-byte-count-reader")
    (version "0.10.1.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/byte-count-reader/byte-count-reader-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hnjn160xjvhk7mpi1l5sb5jv39660fhysrz1qg8azjgbykwpcja"))))
    (properties `((upstream-name . "byte-count-reader") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-parsec-numbers)))
    (home-page "https://github.com/danielrolls/byte-count-reader#readme")
    (synopsis "Read strings describing a number of bytes like 2Kb and 0.5 MiB")
    (description
     "Please see the README on GitHub at <https://github.com/danielrolls/byte-count-reader#readme>")
    (license license:gpl3)))

haskell-8.10-byte-count-reader

(define-public haskell-8.10-can-i-haz
  (package
    (name "haskell-8.10-can-i-haz")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/0xd34df00d/can-i-haz#readme")
    (synopsis "Generic implementation of the Has and CoHas patterns")
    (description
     "Please see the README on GitHub at <https://github.com/0xd34df00d/can-i-haz#readme>")
    (license license:bsd-3)))

haskell-8.10-can-i-haz

(define-public haskell-8.10-clientsession
  (package
    (name "haskell-8.10-clientsession")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-cipher-aes)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-cprng-aes)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-crypto-api)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-crypto-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-entropy)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-setenv)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-skein)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)))
    (home-page "http://github.com/yesodweb/clientsession/tree/master")
    (synopsis "Securely store session data in a client-side cookie.")
    (description "Achieves security through AES-CTR encryption and
Skein-MAC-512-256 authentication.  Uses Base64
encoding to avoid any issues with characters.")
    (license license:expat)))

haskell-8.10-clientsession

(define-public haskell-8.10-climb
  (package
    (name "haskell-8.10-climb")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/climb/climb-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0d6jscwbjlm21jcdl29c3ix6vd5ly9mjr0ljchzkr6yk7gqk4z24"))))
    (properties `((upstream-name . "climb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-linenoise)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)))
    (home-page "https://github.com/ejconlon/climb#readme")
    (synopsis "Building blocks for a GHCi-like REPL with colon-commands")
    (description
     "Please see the README on GitHub at <https://github.com/ejconlon/climb#readme>")
    (license license:bsd-3)))

haskell-8.10-climb

(define-public haskell-8.10-compactmap
  (package
    (name "haskell-8.10-compactmap")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://hackage.haskell.org/package/compactmap")
    (synopsis "A read-only memory-efficient key-value store.")
    (description "")
    (license license:bsd-3)))

haskell-8.10-compactmap

(define-public haskell-8.10-concurrent-output
  (package
    (name "haskell-8.10-concurrent-output")
    (version "1.10.15")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/concurrent-output/concurrent-output-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1n02ck0zci6y2w8dm03j2qypgbc176skapixrmnxrp9dnbwcprc0"))))
    (properties `((upstream-name . "concurrent-output") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0dn0033wimnci0ws6gjs7l264vczimfamh7lsx33cgalnj3py9hc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-terminal-size)))
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

haskell-8.10-concurrent-output

(define-public haskell-8.10-conferer
  (package
    (name "haskell-8.10-conferer")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://conferer.ludat.io")
    (synopsis "Configuration management library")
    (description
     "Library to abstract the parsing of many haskell config values from different config sources")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-conferer

(define-public haskell-8.10-constraints
  (package
    (name "haskell-8.10-constraints")
    (version "0.13.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/constraints/constraints-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jhdix263zxsiki0pmdpyrg7vcfxx2x9w7pjiypva3wsr9agdjzr"))))
    (properties `((upstream-name . "constraints") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-type-equality)))
    (home-page "http://github.com/ekmett/constraints/")
    (synopsis "Constraint manipulation")
    (description
     "GHC 7.4 gave us the ability to talk about @@ConstraintKinds@@. They stopped crashing the compiler in GHC 7.6.

This package provides a vocabulary for working with them.")
    (license license:bsd-2)))

haskell-8.10-constraints

(define-public haskell-8.10-crc32c
  (package
    (name "haskell-8.10-crc32c")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-c2hs)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-hspec-core)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://github.com/leptonyu/crc32c#readme")
    (synopsis "Haskell bindings for crc32c")
    (description "")
    (license license:bsd-3)))

haskell-8.10-crc32c

(define-public haskell-8.10-css-syntax
  (package
    (name "haskell-8.10-css-syntax")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/css-syntax/css-syntax-" version
                    ".tar.gz"))
              (sha256
               (base32
                "02f000nzc0dhjhlp1z82q4far8ablvzalpk918lg54f63lbqdwsh"))))
    (properties `((upstream-name . "css-syntax") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "1i3svb2zy7i3g2xrv8hki5dn6fd5rh2pwjxv72rbmbgl1adp3w3s")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)))
    (home-page "https://hackage.haskell.org/package/css-syntax")
    (synopsis "High-performance CSS tokenizer and serializer.")
    (description "See https://drafts.csswg.org/css-syntax/")
    (license license:expat)))

haskell-8.10-css-syntax

(define-public haskell-8.10-currencies
  (package
    (name "haskell-8.10-currencies")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/alx741/currencies#readme")
    (synopsis "Currencies representation, pretty printing and conversion")
    (description
     "ISO 4217 Currencies representation, pretty printing and conversion:

* Represent monetary amounts of a particular currency in a type-safe manner

* Convert amounts between different currencies

* Print human readable amounts")
    (license license:bsd-3)))

haskell-8.10-currencies

(define-public haskell-8.10-data-diverse
  (package
    (name "haskell-8.10-data-diverse")
    (version "4.7.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-diverse/data-diverse-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ccbb8kf2spaa2h6k10y26zzaij1w28vrifhc8c1ljlvsmc9dkf3"))))
    (properties `((upstream-name . "data-diverse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)))
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

haskell-8.10-data-diverse

(define-public haskell-8.10-dejafu
  (package
    (name "haskell-8.10-dejafu")
    (version "2.4.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dejafu/dejafu-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1qzc8jbl6zwbncfmfmcwwmmhwzgbwc7wmnxxxa3mbcjbwhyibf92"))))
    (properties `((upstream-name . "dejafu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-concurrency)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-contravariant)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-leancheck)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)))
    (home-page "https://github.com/barrucadu/dejafu")
    (synopsis "A library for unit-testing concurrent programs.")
    (description
     "/[Déjà Fu is] A martial art in which the user's limbs move in time as well as space, […] It is best described as \"the feeling that you have been kicked in the head this way before\"/ -- Terry Pratchett, Thief of Time

This package builds on the
<https://hackage.haskell.org/package/concurrency concurrency>
package by enabling you to deterministically test your concurrent
programs.

See the <https://dejafu.readthedocs.io website> or README for more.")
    (license license:expat)))

haskell-8.10-dejafu

(define-public haskell-8.10-dense-linear-algebra
  (package
    (name "haskell-8.10-dense-linear-algebra")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-math-functions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-vector-algorithms)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-vector-binary-instances)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-vector-th-unbox)))
    (home-page "https://hackage.haskell.org/package/dense-linear-algebra")
    (synopsis
     "Simple and incomplete pure haskell implementation of linear algebra")
    (description
     "This library is simply collection of linear-algebra related modules
split from statistics library.")
    (license license:bsd-2)))

haskell-8.10-dense-linear-algebra

(define-public haskell-8.10-depq
  (package
    (name "haskell-8.10-depq")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-psqueues)))
    (home-page "https://github.com/ocramz/depq")
    (synopsis "Double-ended priority queues")
    (description
     "Double-ended priority queues, for efficient retrieval of minimum and maximum elements in ordered collections of items.")
    (license license:bsd-3)))

haskell-8.10-depq

(define-public haskell-8.10-deriving-compat
  (package
    (name "haskell-8.10-deriving-compat")
    (version "0.5.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/deriving-compat/deriving-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ah04xsb71wv6iax47xpdykfadxp3lcw2l6vkg15723l1xgy8ach"))))
    (properties `((upstream-name . "deriving-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbase-4-9" "-ftemplate-haskell-2-11" "-fnew-functor-classes")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-orphans)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-abstraction)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-void)))
    (home-page "https://github.com/haskell-compat/deriving-compat")
    (synopsis "Backports of GHC deriving extensions")
    (description
     "Provides Template Haskell functions that mimic deriving
extensions that were introduced or modified in recent versions
of GHC. Currently, the following typeclasses/extensions are covered:

* Deriving @@Bounded@@

* Deriving @@Enum@@

* Deriving @@Ix@@

* Deriving @@Eq@@, @@Eq1@@, and @@Eq2@@

* Deriving @@Ord@@, @@Ord1@@, and @@Ord2@@

* Deriving @@Read@@, @@Read1@@, and @@Read2@@

* Deriving @@Show@@, @@Show1@@, and @@Show2@@

* @@DeriveFoldable@@

* @@DeriveFunctor@@

* @@DeriveTraversable@@

* @@GeneralizedNewtypeDeriving@@ (with GHC 8.2 or later)

* @@DerivingVia@@ (with GHC 8.2 or later)

See the \"Data.Deriving\" module for a full list of backported changes.

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

haskell-8.10-deriving-compat

(define-public haskell-8.10-do-list
  (package
    (name "haskell-8.10-do-list")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/tserduke/do-list#readme")
    (synopsis "Do notation for free")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.10-do-list

(define-public haskell-8.10-dockerfile
  (package
    (name "haskell-8.10-dockerfile")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/creichert/dockerfile#readme")
    (synopsis "A Haskell DSL for generating Dockerfiles")
    (description "")
    (license license:expat)))

haskell-8.10-dockerfile

(define-public haskell-8.10-dvorak
  (package
    (name "haskell-8.10-dvorak")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/kvanberendonck/codec-dvorak")
    (synopsis "Dvorak encoding for Haskell.")
    (description "")
    (license license:bsd-3)))

haskell-8.10-dvorak

(define-public haskell-8.10-elf
  (package
    (name "haskell-8.10-elf")
    (version "0.30")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/elf/elf-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "16gfpqsqfwlq4qprh0nswa4br1rz7rj7in7v803cqggkxz7s5c4p"))))
    (properties `((upstream-name . "elf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "08krv9xws8gr8s5k6796y7yzng22gf4m1a4mv5g57j3yjldwkds2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/wangbj/elf")
    (synopsis "An Elf parser")
    (description "Parser for ELF object format.")
    (license license:bsd-3)))

haskell-8.10-elf

(define-public haskell-8.10-elynx-nexus
  (package
    (name "haskell-8.10-elynx-nexus")
    (version "0.5.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/elynx-nexus/elynx-nexus-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1p5x2in4r63amb9ifrxdqb3b9bjrxy97gwij0p3hsh9h8p7wsijg"))))
    (properties `((upstream-name . "elynx-nexus") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/dschrempf/elynx#readme")
    (synopsis "Import and export Nexus files")
    (description
     "Examine, modify, and simulate molecular sequences in a reproducible way. Please see the README on GitHub at <https://github.com/dschrempf/elynx>.")
    (license license:gpl3+)))

haskell-8.10-elynx-nexus

(define-public haskell-8.10-enclosed-exceptions
  (package
    (name "haskell-8.10-enclosed-exceptions")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-lifted-base)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)))
    (home-page "https://github.com/jcristovao/enclosed-exceptions")
    (synopsis "Catching all exceptions from within an enclosed computation")
    (description
     "Catching all exceptions raised within an enclosed computation,
while remaining responsive to (external) asynchronous exceptions.
For more information on the technique, please see:
<https://www.fpcomplete.com/user/snoyberg/general-haskell/exceptions/catching-all-exceptions>")
    (license license:expat)))

haskell-8.10-enclosed-exceptions

(define-public haskell-8.10-envparse
  (package
    (name "haskell-8.10-envparse")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
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

haskell-8.10-envparse

(define-public haskell-8.10-fakedata-parser
  (package
    (name "haskell-8.10-fakedata-parser")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/psibi/fakedata-parser#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/psibi/fakedata-parser#readme>")
    (license license:bsd-3)))

haskell-8.10-fakedata-parser

(define-public haskell-8.10-fakefs
  (package
    (name "haskell-8.10-fakefs")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://gitlab.com/igrep/haskell-fakefs#readme")
    (synopsis "Extensible fake file system for testing.")
    (description "See <https://gitlab.com/igrep/haskell-fakefs#readme>.")
    (license license:asl2.0)))

haskell-8.10-fakefs

(define-public haskell-8.10-fakepull
  (package
    (name "haskell-8.10-fakepull")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/igrep/haskell-fakepull#readme")
    (synopsis "Monad to pull from fake stream-like objects.")
    (description "See <https://github.com/igrep/haskell-fakepull#readme>.")
    (license license:asl2.0)))

haskell-8.10-fakepull

(define-public haskell-8.10-flush-queue
  (package
    (name "haskell-8.10-flush-queue")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-atomic-primops)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/fpco/flush-queue#readme")
    (synopsis
     "Concurrent bouded blocking queues optimized for flushing. Both IO and STM implementations.")
    (description
     "Please see the README on GitHub at <https://github.com/fpco/flush-queue#readme>")
    (license license:bsd-3)))

haskell-8.10-flush-queue

(define-public haskell-8.10-fold-debounce
  (package
    (name "haskell-8.10-fold-debounce")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-stm-delay)))
    (home-page "https://github.com/debug-ito/fold-debounce")
    (synopsis "Fold multiple events that happen in a given period of time.")
    (description
     "Fold multiple events that happen in a given period of time. See \"Control.FoldDebounce\".")
    (license license:bsd-3)))

haskell-8.10-fold-debounce

(define-public haskell-8.10-format-numbers
  (package
    (name "haskell-8.10-format-numbers")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/agrafix/format-numbers#readme")
    (synopsis "Various number formatting functions")
    (description "Various number formatting functions")
    (license license:expat)))

haskell-8.10-format-numbers

(define-public haskell-8.10-formatting
  (package
    (name "haskell-8.10-formatting")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-clock)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-double-conversion)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://github.com/AJChapman/formatting#readme")
    (synopsis
     "Combinator-based type-safe formatting (like printf() or FORMAT)")
    (description
     "Combinator-based type-safe formatting (like printf() or FORMAT), modelled from the HoleyMonoids package.

See the README at <https://github.com/AJChapman/formatting#readme> for more info.")
    (license license:bsd-3)))

haskell-8.10-formatting

(define-public haskell-8.10-friendly-time
  (package
    (name "haskell-8.10-friendly-time")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)))
    (home-page "https://hackage.haskell.org/package/friendly-time")
    (synopsis "Print time information in friendly ways")
    (description "Print time information in friendly ways")
    (license license:bsd-3)))

haskell-8.10-friendly-time

(define-public haskell-8.10-fuzzcheck
  (package
    (name "haskell-8.10-fuzzcheck")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-lifted-base)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)))
    (home-page "https://github.com/fpco/fuzzcheck")
    (synopsis "A simple checker for stress testing monadic code")
    (description "A simple checker for stress testing monadic code")
    (license license:bsd-3)))

haskell-8.10-fuzzcheck

(define-public haskell-8.10-generic-deriving
  (package
    (name "haskell-8.10-generic-deriving")
    (version "1.14.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generic-deriving/generic-deriving-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19qpahcfhs9nqqv6na8znybrvpw885cajbdnrfylxbsmm0sys4s7"))))
    (properties `((upstream-name . "generic-deriving") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fbase-4-9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-abstraction)))
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

haskell-8.10-generic-deriving

(define-public haskell-8.10-ghc-syntax-highlighter
  (package
    (name "haskell-8.10-ghc-syntax-highlighter")
    (version "0.0.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-syntax-highlighter/ghc-syntax-highlighter-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dxm4w44y339flwl4ivsmvml3nvzzlxq585by9mm7j56ljlb4aja"))))
    (properties `((upstream-name . "ghc-syntax-highlighter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ghc-lib-parser)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/mrkkrp/ghc-syntax-highlighter")
    (synopsis "Syntax highlighter for Haskell using lexer of GHC itself")
    (description "Syntax highlighter for Haskell using lexer of GHC itself.")
    (license license:bsd-3)))

haskell-8.10-ghc-syntax-highlighter

(define-public haskell-8.10-ghost-buster
  (package
    (name "haskell-8.10-ghost-buster")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/Lazersmoke/ghost-buster#readme")
    (synopsis "Existential type utilites")
    (description
     "This package provides utilities for working with existential types.")
    (license license:bsd-3)))

haskell-8.10-ghost-buster

(define-public haskell-8.10-graph-wrapper
  (package
    (name "haskell-8.10-graph-wrapper")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/soenkehahn/graph-wrapper")
    (synopsis
     "A wrapper around the standard Data.Graph with a less awkward interface")
    (description
     "A wrapper around the standard Data.Graph with a less awkward interface")
    (license license:bsd-3)))

haskell-8.10-graph-wrapper

(define-public haskell-8.10-hdaemonize
  (package
    (name "haskell-8.10-hdaemonize")
    (version "0.5.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hdaemonize/hdaemonize-" version
                    ".tar.gz"))
              (sha256
               (base32
                "097fgjgskigy3grnd3ijzyhdq34vjmd9bjk2rscixi59j8j30vxd"))))
    (properties `((upstream-name . "hdaemonize") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hsyslog)))
    (home-page "http://github.com/unprolix/hdaemonize")
    (synopsis "Library to handle the details of writing daemons for UNIX")
    (description "Provides functions that help writing better UNIX daemons,
daemonize and serviced/serviced': daemonize does what
a daemon should do (forking and closing descriptors),
while serviced does that and more (syslog interface,
PID file writing, start-stop-restart command line
handling, dropping privileges).")
    (license license:bsd-3)))

haskell-8.10-hdaemonize

(define-public haskell-8.10-hebrew-time
  (package
    (name "haskell-8.10-hebrew-time")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/snoyberg/hebrew-time#readme")
    (synopsis "Hebrew dates and prayer times.")
    (description "Conversion to and from Hebrew dates.")
    (license license:expat)))

haskell-8.10-hebrew-time

(define-public haskell-8.10-hformat
  (package
    (name "haskell-8.10-hformat")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-unicode-symbols)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "http://github.com/mvoidex/hformat")
    (synopsis "Simple Haskell formatting")
    (description "String formatting")
    (license license:bsd-3)))

haskell-8.10-hformat

(define-public haskell-8.10-hlibsass
  (package
    (name "haskell-8.10-hlibsass")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
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

haskell-8.10-hlibsass

(define-public haskell-8.10-hopfli
  (package
    (name "haskell-8.10-hopfli")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/ananthakumaran/hopfli")
    (synopsis "Bidings to Google's Zopfli compression library")
    (description
     "Hopfli provides a pure interface to compress data using the Zopfli library
algorithm.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-hopfli

(define-public haskell-8.10-hosc
  (package
    (name "haskell-8.10-hosc")
    (version "0.18.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hosc/hosc-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ygyvwzsvqv4pihzdm6i3kzkr01nh3qpk9g9f9ap6243yx7003vj"))))
    (properties `((upstream-name . "hosc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)))
    (home-page "http://rohandrape.net/t/hosc")
    (synopsis "Haskell Open Sound Control")
    (description "@@hosc@@ implements a subset of the Open Sound Control
byte protocol, <http://opensoundcontrol.org/>.

See \"Sound.OSC.Core\" or \"Sound.OSC\" or \"Sound.OSC.FD\".")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-hosc

(define-public haskell-8.10-hs-tags
  (package
    (name "haskell-8.10-hs-tags")
    (version "0.1.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hs-tags/hs-tags-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "17h1jgi7nr6p93zhsqxx6gx1yjwv0gahz84pw14gnsr79v3q9z1f"))
              (patches (search-patches "defaultMain.patch"))))
    (properties `((upstream-name . "hs-tags") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-ghc-paths)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-strict)))
    (home-page "https://hackage.haskell.org/package/hs-tags")
    (synopsis "Create tag files (ctags and etags) for Haskell code.")
    (description "
Executable to generate a tags (ctags) or TAGS (etags) file
for a bunch of Haskell files, using GHC as parser.
These tag files are used by editors (e.g. TAGS by Emacs) to
implement jump-to-definition (e.g. M-. in Emacs).")
    (license license:expat)))

haskell-8.10-hs-tags

(define-public haskell-8.10-hsdns
  (package
    (name "haskell-8.10-hsdns")
    (version "1.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hsdns/hsdns-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0jxnfgzsshhaf3n8ywhxy84l6ldhz5cdwaayr61v26iqgm3c3qk0"))))
    (properties `((upstream-name . "hsdns") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-install-examples")
       #:cabal-revision
       ("1" "09ixj0xywmbigfhqmq58dwqns8l3w6wprykafg52fx69bvhg9yph")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hsc2hs)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages adns) adns)))
    (home-page "https://github.com/peti/hsdns")
    (synopsis "Asynchronous DNS Resolver")
    (description "This library provides an asynchronous DNS resolver on top
of GNU ADNS <http://www.chiark.greenend.org.uk/~ian/adns/>.
Not all options are supported, but A, MX, and PTR lookups
work nicely. There is also support for retrieving generic
RR types, CNAMEs, and for NSEC zone walking. The library
can be expected to work with fine ADNS 1.4 or later. It
might also work with version ADNS 1.3, but that hasn't
been tested.

The example program adns-reverse-lookup.hs demonstrates
how the resolver is used. Given a list of host names on
the command line, it performs an A/PTR double-lookup and
checks whether the records are consistent. The
output is printed in the order in which the DNS responses
arrive:

> $ ./adns-reverse-lookup cryp.to localhost www.example.com
> OK: localhost <-> 127.0.0.1
> FAIL: cryp.to -> 217.19.183.102 -> [\"zuse.cryp.to\"]
> OK: www.example.com <-> 192.0.32.10")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.10-hsdns

(define-public haskell-8.10-hsemail
  (package
    (name "haskell-8.10-hsemail")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-time-compat)))
    (home-page "https://github.com/peti/hsemail#readme")
    (synopsis "Parsec parsers for the Internet Message format (e-mail)")
    (description
     "Parsec parsers for the Internet Message format defined in RFC2822.")
    (license license:bsd-3)))

haskell-8.10-hsemail

(define-public haskell-8.10-hspec-attoparsec
  (package
    (name "haskell-8.10-hspec-attoparsec")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hspec-expectations)))
    (home-page "http://github.com/alpmestan/hspec-attoparsec")
    (synopsis
     "Utility functions for testing your attoparsec parsers with hspec")
    (description
     "This package provides some helper functions for testing attoparsec parsers with hspec.

See the documentation in @@Test.Hspec.Attoparsec@@ for examples, or this package's own test suite.")
    (license license:bsd-3)))

haskell-8.10-hspec-attoparsec

(define-public haskell-8.10-hspec-contrib
  (package
    (name "haskell-8.10-hspec-contrib")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-hspec-core)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "http://hspec.github.io/")
    (synopsis "Contributed functionality for Hspec")
    (description "Contributed functionality for Hspec")
    (license license:expat)))

haskell-8.10-hspec-contrib

(define-public haskell-8.10-hspec-leancheck
  (package
    (name "haskell-8.10-hspec-leancheck")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-hspec-core)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-leancheck)))
    (home-page "https://github.com/rudymatela/hspec-leancheck#readme")
    (synopsis "LeanCheck support for the Hspec test framework.")
    (description
     "LeanCheck support for the Hspec test framework.

This package can be used to incorporate LeanCheck tests into Hspec test
suites.

Please see the Haddock documentation and README for more details.")
    (license license:bsd-3)))

haskell-8.10-hspec-leancheck

(define-public haskell-8.10-hspec-megaparsec
  (package
    (name "haskell-8.10-hspec-megaparsec")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)))
    (home-page "https://github.com/mrkkrp/hspec-megaparsec")
    (synopsis "Utility functions for testing Megaparsec parsers with Hspec")
    (description
     "Utility functions for testing Megaparsec parsers with Hspec.")
    (license license:bsd-3)))

haskell-8.10-hspec-megaparsec

(define-public haskell-8.10-hspec-need-env
  (package
    (name "haskell-8.10-hspec-need-env")
    (version "0.1.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-need-env/hspec-need-env-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bh420y4rcp3pvdccxzlasmcbqpj4zdxfphywfi8q4gqryz32cc9"))))
    (properties `((upstream-name . "hspec-need-env") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-hspec-core)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-setenv)))
    (home-page "https://github.com/debug-ito/hspec-need-env")
    (synopsis "Read environment variables for hspec tests")
    (description
     "Read environment variables for hspec tests. See 'Test.Hspec.NeedEnv'.")
    (license license:bsd-3)))

haskell-8.10-hspec-need-env

(define-public haskell-8.10-hspec-parsec
  (package
    (name "haskell-8.10-hspec-parsec")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hspec-expectations)))
    (home-page "https://github.com/sjakobi/hspec-parsec#readme")
    (synopsis "Hspec expectations for testing Parsec parsers")
    (description "")
    (license license:bsd-3)))

haskell-8.10-hspec-parsec

(define-public haskell-8.10-hspec-tables
  (package
    (name "haskell-8.10-hspec-tables")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-tables/hspec-tables-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07z85920dr85kc763hfqd6rrzl81cc39cjgc0ymy95ycgpdz2w1q"))))
    (properties `((upstream-name . "hspec-tables") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1li02kvz1mpq0x9j7q7cjwn8b35m2aqgfbrgab4vsngqq61a4f0z")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-hspec-core)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/marcin-rzeznicki/hspec-tables")
    (synopsis "Table-driven (by-example) HSpec tests")
    (description "Table-driven (by-example) HSpec tests")
    (license license:expat)))

haskell-8.10-hspec-tables

(define-public haskell-8.10-htaglib
  (package
    (name "haskell-8.10-htaglib")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages mp3) taglib)))
    (home-page "https://github.com/mrkkrp/htaglib")
    (synopsis "Bindings to TagLib, audio meta-data library")
    (description "Bindings to TagLib, audio meta-data library.")
    (license license:bsd-3)))

haskell-8.10-htaglib

(define-public haskell-8.10-hvect
  (package
    (name "haskell-8.10-hvect")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/agrafix/hvect")
    (synopsis "Simple strict heterogeneous lists")
    (description
     "Small, concise and simple implementation of heterogeneous lists with useful utility functions")
    (license license:expat)))

haskell-8.10-hvect

(define-public haskell-8.10-hw-string-parse
  (package
    (name "haskell-8.10-hw-string-parse")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "http://github.com/haskell-works/hw-string-parse#readme")
    (synopsis "String parser")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.10-hw-string-parse

(define-public haskell-8.10-identicon
  (package
    (name "haskell-8.10-identicon")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mrkkrp/identicon")
    (synopsis "Flexible generation of identicons")
    (description "Flexible generation of identicons.")
    (license license:bsd-3)))

haskell-8.10-identicon

(define-public haskell-8.10-ilist
  (package
    (name "haskell-8.10-ilist")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "http://github.com/kowainik/ilist")
    (synopsis "Optimised list functions for doing index-related things")
    (description
     "Optimised list functions for doing index-related things. They're
faster than common idioms in all cases, they avoid
<https://ghc.haskell.org/trac/ghc/ticket/12620 space leaks>, and
sometimes they fuse better as well.")
    (license license:mpl2.0)))

haskell-8.10-ilist

(define-public haskell-8.10-indexed-containers
  (package
    (name "haskell-8.10-indexed-containers")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/indexed-containers/indexed-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18njnawx2wbkgq9f5747id11k8cpm604mc2xqhn3iaiyn3zyn28f"))))
    (properties `((upstream-name . "indexed-containers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/zliu41/indexed-containers")
    (synopsis "Simple, no-frills indexed lists.")
    (description
     "If the lengths of your lists are known statically, using indexed lists improves type safety with no runtime overhead.")
    (license license:bsd-3)))

haskell-8.10-indexed-containers

(define-public haskell-8.10-indexed-list-literals
  (package
    (name "haskell-8.10-indexed-list-literals")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-Only)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
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

haskell-8.10-indexed-list-literals

(define-public haskell-8.10-io-region
  (package
    (name "haskell-8.10-io-region")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
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

haskell-8.10-io-region

(define-public haskell-8.10-ipa
  (package
    (name "haskell-8.10-ipa")
    (version "0.3.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ipa/ipa-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "08n47l0vjcyp0g3wlwww0cf8cyqfy6mj5480r94in7l3zr7vx6a4"))))
    (properties `((upstream-name . "ipa") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unicode-transforms)))
    (home-page "https://gitlab.com/ngua/ipa-hs/-/blob/master/README.org")
    (synopsis "Internal Phonetic Alphabet (IPA)")
    (description "See the README at https://gitlab.com/ngua/ipa-hs")
    (license license:bsd-3)))

haskell-8.10-ipa

(define-public haskell-8.10-iproute
  (package
    (name "haskell-8.10-iproute")
    (version "1.7.12")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/iproute/iproute-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0qvb4d7nw8f6j4s09cnpn6z1rdwcwknwklfrhsgivg7wg4aisxgi"))))
    (properties `((upstream-name . "iproute") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-appar)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-byteorder)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)))
    (home-page "http://www.mew.org/~kazu/proj/iproute/")
    (synopsis "IP Routing Table")
    (description "IP Routing Table is a tree of IP ranges
to search one of them on the longest
match base. It is a kind of TRIE with one
way branching removed. Both IPv4 and IPv6
are supported.")
    (license license:bsd-3)))

haskell-8.10-iproute

(define-public haskell-8.10-isbn
  (package
    (name "haskell-8.10-isbn")
    (version "1.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/isbn/isbn-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "16srdvsjsiqzcm0hb3rhwry1vr170fz85g84wk6nyk1glbva4bga"))))
    (properties `((upstream-name . "isbn") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/charukiewicz/hs-isbn")
    (synopsis "ISBN Validation and Manipulation")
    (description
     "See the README at <https://github.com/charukiewicz/hs-isbn#readme>")
    (license license:asl2.0)))

haskell-8.10-isbn

(define-public haskell-8.10-iso8601-time
  (package
    (name "haskell-8.10-iso8601-time")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/nh2/iso8601-time")
    (synopsis "Convert to/from the ISO 8601 time format")
    (description
     "Conversion functions between Haskell time types and the ISO 8601 format,
which is often used for printing times, e.g. JavaScript's @@new Date().toISOString()@@.")
    (license license:expat)))

haskell-8.10-iso8601-time

(define-public haskell-8.10-jalaali
  (package
    (name "haskell-8.10-jalaali")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/jalaali/jalaali-hs#readme")
    (synopsis "Jalaali calendar systems")
    (description
     "Functions for working with Jalaali (Jalali, Persian, Khayyami, Khorshidi, Shamsi) calendar systems. Please see the README on GitHub at <https://github.com/jalaali/jalaali-hs#readme>")
    (license license:expat)))

haskell-8.10-jalaali

(define-public haskell-8.10-language-javascript
  (package
    (name "haskell-8.10-language-javascript")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-alex)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-happy)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-utf8-light)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)))
    (home-page "https://github.com/erikd/language-javascript")
    (synopsis "Parser for JavaScript")
    (description
     "Parses Javascript into an Abstract Syntax Tree (AST).  Initially intended as frontend to hjsmin.

Note: Version 0.5.0 breaks compatibility with prior versions, the AST has been reworked to allow
round trip processing of JavaScript.")
    (license license:bsd-3)))

haskell-8.10-language-javascript

(define-public haskell-8.10-language-thrift
  (package
    (name "haskell-8.10-language-thrift")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)))
    (home-page "https://github.com/abhinav/language-thrift#readme")
    (synopsis "Parser and pretty printer for the Thrift IDL format.")
    (description "This package provides a parser and pretty printer for the
<http://thrift.apache.org/docs/idl Thrift IDL format>.")
    (license license:bsd-3)))

haskell-8.10-language-thrift

(define-public haskell-8.10-lens-family-th
  (package
    (name "haskell-8.10-lens-family-th")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "http://github.com/DanBurton/lens-family-th#readme")
    (synopsis "Generate lens-family style lenses")
    (description "(see README.md)")
    (license license:bsd-3)))

haskell-8.10-lens-family-th

(define-public haskell-8.10-list-predicate
  (package
    (name "haskell-8.10-list-predicate")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/pgujjula/list-utilities#readme")
    (synopsis "Predicates on lists")
    (description
     "Please see the README on GitHub at <https://github.com/pgujjula/list-utilities/tree/master/list-predicate#readme>.")
    (license license:bsd-3)))

haskell-8.10-list-predicate

(define-public haskell-8.10-logging-facade
  (package
    (name "haskell-8.10-logging-facade")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-call-stack)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/sol/logging-facade#readme")
    (synopsis "Simple logging abstraction that allows multiple back-ends")
    (description "Simple logging abstraction that allows multiple back-ends")
    (license license:expat)))

haskell-8.10-logging-facade

(define-public haskell-8.10-loop
  (package
    (name "haskell-8.10-loop")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/nh2/loop")
    (synopsis "Fast loops (for when GHC can't optimize forM_)")
    (description
     "This package provides a convenient and fast alternative to the common
`forM_ [1..n]` idiom, which in many cases GHC cannot fuse to efficient
code.

See <https://ghc.haskell.org/trac/ghc/ticket/8763>.")
    (license license:expat)))

haskell-8.10-loop

(define-public haskell-8.10-lrucaching
  (package
    (name "haskell-8.10-lrucaching")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-psqueues)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/cocreature/lrucaching#readme")
    (synopsis "LRU cache")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.10-lrucaching

(define-public haskell-8.10-matrix-market-attoparsec
  (package
    (name "haskell-8.10-matrix-market-attoparsec")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)))
    (home-page "https://github.com/ocramz/matrix-market-attoparsec")
    (synopsis
     "Parsing and serialization functions for the NIST Matrix Market format")
    (description
     "Parsing and serialization functions for the NIST Matrix Market format.")
    (license license:bsd-2)))

haskell-8.10-matrix-market-attoparsec

(define-public haskell-8.10-midi
  (package
    (name "haskell-8.10-midi")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0sa17aphsnk0lc42k1niisbd4jck7j4xij95mjjc5nlrcx1zd123")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-event-list)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-explicit-exception)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-monoid-transformer)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-non-negative)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)))
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

haskell-8.10-midi

(define-public haskell-8.10-mime-mail
  (package
    (name "haskell-8.10-mime-mail")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)))
    (home-page "http://github.com/snoyberg/mime-mail")
    (synopsis "Compose MIME email messages.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/mime-mail>.")
    (license license:expat)))

haskell-8.10-mime-mail

(define-public haskell-8.10-mnist-idx
  (package
    (name "haskell-8.10-mnist-idx")
    (version "0.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mnist-idx/mnist-idx-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0i65f83bs6l5gjf3wj3ad3c76ni3d22sac5qyi5hi5i93w0px32j"))))
    (properties `((upstream-name . "mnist-idx") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://christof-schramm.net")
    (synopsis
     "Read and write IDX data that is used in e.g. the MNIST database.")
    (description
     "This package provides functionality to read and write data in the IDX
binary format. This format is relevant for machine learning applications,
like the MNIST handwritten digit database.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.10-mnist-idx

(define-public haskell-8.10-more-containers
  (package
    (name "haskell-8.10-more-containers")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/mtth/more-containers")
    (synopsis "A few more collections")
    (description "https://github.com/mtth/more-containers")
    (license license:expat)))

haskell-8.10-more-containers

(define-public haskell-8.10-multi-containers
  (package
    (name "haskell-8.10-multi-containers")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/multi-containers/multi-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0spqq8a9lzz7ajwdxsnnvs7q4n4y1g1yb0k16ykldvy3b21bckb6"))))
    (properties `((upstream-name . "multi-containers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/zliu41/multi-containers#readme")
    (synopsis "A few multimap variants.")
    (description "A library that provides a few multimap variants.")
    (license license:bsd-3)))

haskell-8.10-multi-containers

(define-public haskell-8.10-multistate
  (package
    (name "haskell-8.10-multistate")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)))
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

haskell-8.10-multistate

(define-public haskell-8.10-n2o
  (package
    (name "haskell-8.10-n2o")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/xafizoff/n2o#readme")
    (synopsis "Abstract Protocol Loop")
    (description "Embeddable Application Protocol Loop")
    (license license:bsd-3)))

haskell-8.10-n2o

(define-public haskell-8.10-nagios-check
  (package
    (name "haskell-8.10-nagios-check")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/olorin/haskell-nagios-check")
    (synopsis "Package for writing monitoring plugins")
    (description "Implements Nagios plugin development guidelines
within a Haskell framework for writing Nagios
checks.")
    (license license:expat)))

haskell-8.10-nagios-check

(define-public haskell-8.10-netlib-comfort-array
  (package
    (name "haskell-8.10-netlib-comfort-array")
    (version "0.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/netlib-comfort-array/netlib-comfort-array-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mwgdll9m0ryy5y1385sx2asff98kqfkz4bif8s4i0dkrqalsfx4"))))
    (properties `((upstream-name . "netlib-comfort-array") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0sl8xf5rgf4g5is5kfr6sai9i5mkw46391zv7j7v2zfw36iwx8i9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-comfort-array)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-netlib-ffi)))
    (home-page "https://hub.darcs.net/thielema/netlib-comfort-array/")
    (synopsis "Helper modules for comfort-array wrappers to BLAS and LAPACK")
    (description
     "Netlib is a collection of packages for efficient numeric linear algebra.
Most prominent parts of Netlib are BLAS and LAPACK.
These packages contain functions for matrix computations,
solution of simultaneous linear equations and eigenvalue problems.

This package provides definitions shared by
the packages @@blas-comfort-array@@ and @@lapack-comfort-array@@.")
    (license license:bsd-3)))

haskell-8.10-netlib-comfort-array

(define-public haskell-8.10-network-bsd
  (package
    (name "haskell-8.10-network-bsd")
    (version "2.8.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-bsd/network-bsd-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kid0811lv4x761fd5gv6lsc8p5j2bn41rfd366pjb642p562jfr"))))
    (properties `((upstream-name . "network-bsd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1gd9a8j7fwg0jz0s6il5fk9sl0hm19ja1w56ix51wa0qi2h5x56d")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hsc2hs)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)))
    (home-page "https://github.com/haskell/network-bsd")
    (synopsis "POSIX network database (<netdb.h>) API")
    (description
     "This package provides Haskell bindings to the
the [POSIX network database (netdb.h) API](http://pubs.opengroup.org/onlinepubs/009696699/basedefs/netdb.h.html).

=== Relationship to the @@network@@ package

The @@network@@ package version 2.* series provides \"Network.BSD\" but
it is removed starting with @@network@@ version 3.0.

This package provides the \"Network.BSD\" module split off from the
<https://hackage.haskell.org/package/network network package>.

If in addition to the @@network@@'s modules also \"Network.BSD\" is
necessary, add @@network-bsd@@ to your dependencies like so:

> library
>     build-depends: network     >= 2.7 && < 3.2
>                  , network-bsd >= 2.7 && < 2.9

I.e. you can control the version of the @@network@@ package
independently.

__NOTE__: Starting with @@network-bsd-2.8.1.0@@ the APIs of @@network@@
and @@network-bsd@@ evolve differently, and consequently the
versioning doesn't match up anymore! Moreover, also starting with
version @@network-bsd-2.8.1.0@@ this package requires @@network >= 3@@
in order to avoid module name clashes with @@network < 3@@'s
\"Network.BSD\" module.

However, @@network-bsd-2.7.0.0@@ and @@network-bsd-2.8.0.0@@ passes thru
the \"Network.BSD\" module from @@network-2.7.*@@ and @@network-2.8.*@@
respectively in a non-clashing way via Cabal's
<https://www.haskell.org/cabal/users-guide/developing-packages.html#pkg-field-library-reexported-modules reexported-modules>
feature while ensuring a well-defined
<https://pvp.haskell.org/ API versioning> of the observable API of
@@network-bsd@@. This is why the example above supporting a wide range
of @@network@@ versions works by including version 2.7.0.0 in the
required version range of @@network-bsd@@.")
    (license license:bsd-3)))

haskell-8.10-network-bsd

(define-public haskell-8.10-network-run
  (package
    (name "haskell-8.10-network-run")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-run/network-run-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0w3dmwk03j4n01xkiq8m4sqa27bskh239mpw7m4ihjmkxqcwc5gl"))))
    (properties `((upstream-name . "network-run") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)))
    (home-page "https://hackage.haskell.org/package/network-run")
    (synopsis "Simple network runner library")
    (description "Simple functions to run network clients and servers.")
    (license license:bsd-3)))

haskell-8.10-network-run

(define-public haskell-8.10-newtype-generics
  (package
    (name "haskell-8.10-newtype-generics")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/newtype-generics/newtype-generics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1aswwfz3lc65n56l3vqcp5ak002vd11kcfz2is0a3584p8pz1zpw"))))
    (properties `((upstream-name . "newtype-generics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "http://github.com/sjakobi/newtype-generics")
    (synopsis "A typeclass and set of functions for working with newtypes")
    (description
     "Per Conor McBride, the Newtype typeclass represents the packing and unpacking of a newtype,
and allows you to operate under that newtype with functions such as ala.
Generics support was added in version 0.4, making this package a full replacement
for the original newtype package, and a better alternative to newtype-th.")
    (license license:bsd-3)))

haskell-8.10-newtype-generics

(define-public haskell-8.10-optparse-text
  (package
    (name "haskell-8.10-optparse-text")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)))
    (home-page "https://github.com/passy/optparse-text#readme")
    (synopsis "Data.Text helpers for optparse-applicative")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.10-optparse-text

(define-public haskell-8.10-pagination
  (package
    (name "haskell-8.10-pagination")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/mrkkrp/pagination")
    (synopsis "Framework-agnostic pagination boilerplate")
    (description "Framework-agnostic pagination boilerplate.")
    (license license:bsd-3)))

haskell-8.10-pagination

(define-public haskell-8.10-path-pieces
  (package
    (name "haskell-8.10-path-pieces")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/path-pieces")
    (synopsis "Components of paths.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/path-pieces>.")
    (license license:bsd-3)))

haskell-8.10-path-pieces

(define-public haskell-8.10-pava
  (package
    (name "haskell-8.10-pava")
    (version "0.1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pava/pava-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "07k8kgzz4rscpg716f72my1xcl1sr1g4laky3xjrk3vh1gzn1g88"))))
    (properties `((upstream-name . "pava") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/dschrempf/pava#readme")
    (synopsis "Greatest convex majorants and least concave minorants")
    (description
     "Please see the README on GitHub at <https://github.com/dschrempf/pava#readme>")
    (license license:gpl3+)))

haskell-8.10-pava

(define-public haskell-8.10-pipes-concurrency
  (package
    (name "haskell-8.10-pipes-concurrency")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-contravariant)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-pipes)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-void)))
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

haskell-8.10-pipes-concurrency

(define-public haskell-8.10-pipes-parse
  (package
    (name "haskell-8.10-pipes-parse")
    (version "3.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-parse/pipes-parse-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05cd0j1avkzmryf3869hfpvd9xmzbpz4kc65srswx36n06dkz5x3"))))
    (properties `((upstream-name . "pipes-parse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1pg7hpk6ny6jxciw58pmn03dip31ll5wxyf8b0s1x22kzfc40fsr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-pipes)))
    (home-page "https://hackage.haskell.org/package/pipes-parse")
    (synopsis "Parsing infrastructure for the pipes ecosystem")
    (description
     "@@pipes-parse@@ builds upon the @@pipes@@ library to provide shared
parsing idioms and utilities:

* /Leftovers/: Save unused input for later consumption

* /Leftover propagation/: Leftovers are propagated backwards perfectly

* /Connect and Resume/: Use @@StateT@@ to save unused input for later

* /Termination Safety/: Detect and recover from end of input

@@Pipes.Parse@@ contains the full documentation for this library.

Read @@Pipes.Parse.Tutorial@@ for an extensive tutorial.")
    (license license:bsd-3)))

haskell-8.10-pipes-parse

(define-public haskell-8.10-pipes-safe
  (package
    (name "haskell-8.10-pipes-safe")
    (version "2.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-safe/pipes-safe-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19gp93x5m1bnq240bj3v33pglf9r5gzji39fsjcazji837czghab"))))
    (properties `((upstream-name . "pipes-safe") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-pipes)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)))
    (home-page "https://hackage.haskell.org/package/pipes-safe")
    (synopsis "Safety for the pipes ecosystem")
    (description
     "This package adds resource management and exception handling to the @@pipes@@
ecosystem.

Notable features include:

* /Resource Safety/: Guarantee finalization using @@finally@@, @@bracket@@ and
more

* /Exception Safety/: Even against asynchronous exceptions!

* /Laziness/: Only acquire resources when you need them

* /Promptness/: Finalize resources early when you are done with them

* /Native Exception Handling/: Catch and resume from exceptions inside pipes

* /No Buy-in/: Mix resource-safe pipes with unmanaged pipes using @@hoist@@")
    (license license:bsd-3)))

haskell-8.10-pipes-safe

(define-public haskell-8.10-poll
  (package
    (name "haskell-8.10-poll")
    (version "0.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/poll/poll-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1bllh4yr96p7k44bc10zyhdx2zdh3brl0im3gnn5a1m6irsx6j42"))))
    (properties `((upstream-name . "poll") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "05ghv8acp0gr86wlxsmjd0x6jaj981213ggg629hb78a95119f2q")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-enumset)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)))
    (home-page "https://hackage.haskell.org/package/poll")
    (synopsis "Bindings to poll.h")
    (description
     "Poll functionality allows to wait on different FileDescriptors simultaneously.")
    (license license:bsd-3)))

haskell-8.10-poll

(define-public haskell-8.10-port-utils
  (package
    (name "haskell-8.10-port-utils")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/port-utils/port-utils-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1phpf6n7bjg3a22syh45xsiczqlay82z3isdn6dq5alxdaa31y5n"))))
    (properties `((upstream-name . "port-utils") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)))
    (home-page "https://github.com/jfischoff/port-utils#readme")
    (synopsis "Utilities for creating and waiting on ports")
    (description
     "Utilities for creating and waiting on ports. . @@openFreePort@@ will create a socket bound to a random port (like @@warp@@'s @@openFreePort@@). . @@wait@@ will attempt to connect to given host and port repeatedly until successful. .")
    (license license:bsd-3)))

haskell-8.10-port-utils

(define-public haskell-8.10-postgresql-libpq-notify
  (package
    (name "haskell-8.10-postgresql-libpq-notify")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-libpq-notify/postgresql-libpq-notify-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06k63ix0d836w4x7q49m003wrxpbnnlvhmvbvk8mn9752xv55vkc"))))
    (properties `((upstream-name . "postgresql-libpq-notify") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-postgresql-libpq)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/jfischoff/postgresql-libpq-notify#readme")
    (synopsis "Minimal dependency PostgreSQL notifications library")
    (description
     "Minimal dependency PostgreSQL notifications library. Please see README.md")
    (license license:bsd-3)))

haskell-8.10-postgresql-libpq-notify

(define-public haskell-8.10-projectroot
  (package
    (name "haskell-8.10-projectroot")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/yamadapc/haskell-projectroot")
    (synopsis "Bindings to the projectroot C logic")
    (description
     "Simple way of finding the root of a project given an
entry-point. This module provides bindings to the
<https://github.com/yamadapc/projectroot projectroot> C library")
    (license license:expat)))

haskell-8.10-projectroot

(define-public haskell-8.10-publicsuffix
  (package
    (name "haskell-8.10-publicsuffix")
    (version "0.20200526")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/publicsuffix/publicsuffix-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sipkr4mzhha5w4236jj6j8assy565yf085aqa3awwqi28674mbb"))))
    (properties `((upstream-name . "publicsuffix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/wereHamster/publicsuffix-haskell/")
    (synopsis "The publicsuffix list exposed as proper Haskell types")
    (description
     "This package contains a parsed representation of the publicsuffix list,
and functions which you can use to query it.

The package version follows the template @@\\<api version\\>.\\<date\\>@@ where
@@date@@ is when the publicsuffix list was last updated from upstream, in the
format @@YYYYMMDD@@.")
    (license license:expat)))

haskell-8.10-publicsuffix

(define-public haskell-8.10-quickcheck-assertions
  (package
    (name "haskell-8.10-quickcheck-assertions")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-ieee754)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-pretty-show)))
    (home-page "https://github.com/s9gf4ult/quickcheck-assertions")
    (synopsis "HUnit like assertions for QuickCheck")
    (description
     "Library with convenient assertions for QuickCheck properties like in HUnit")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.10-quickcheck-assertions

(define-public haskell-8.10-rampart
  (package
    (name "haskell-8.10-rampart")
    (version "1.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rampart/rampart-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1kchbdzc4blis2l9k8dzzzib0zqg443iwmsgdzpsqgq7la6ajcgc"))))
    (properties `((upstream-name . "rampart") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/rampart")
    (synopsis "Determine how intervals relate to each other.")
    (description "Rampart determines how intervals relate to each other.")
    (license license:isc)))

haskell-8.10-rampart

(define-public haskell-8.10-ramus
  (package
    (name "haskell-8.10-ramus")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-quickcheck-io)))
    (home-page "https://github.com/NickSeagull/ramus#readme")
    (synopsis "Elm signal system for Haskell")
    (description
     "Ramus is a direct port of purescript-signal into Haskell, offering the Elm signal system for Haskell.")
    (license license:expat)))

haskell-8.10-ramus

(define-public haskell-8.10-reflection
  (package
    (name "haskell-8.10-reflection")
    (version "2.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/reflection/reflection-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1kd6dgnp99dzbkxdnj01g81j03v7zq5cwg0sf19rlcmvgs8i8gmz"))))
    (properties `((upstream-name . "reflection") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-slow" "-ftemplate-haskell")
       #:cabal-revision
       ("1" "1bnpkfmagii4mc8258yjy4f4lykflmljkqcifnxpfqv99bszw6pl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "http://github.com/ekmett/reflection")
    (synopsis
     "Reifies arbitrary terms into types that can be reflected back into terms")
    (description
     "This package addresses the /configuration problem/ which is
propagating configurations that are available at run-time, allowing
multiple configurations to coexist without resorting to mutable
global variables or 'System.IO.Unsafe.unsafePerformIO'.

That package is an implementation of the ideas presented in the
paper \\\"Functional Pearl: Implicit Configurations\\\" by Oleg Kiselyov
and Chung-chieh Shan (<http://okmij.org/ftp/Haskell/tr-15-04.pdf original paper>).
However, the API has been streamlined to improve performance.

Austin Seipp's tutorial <https://www.schoolofhaskell.com/user/thoughtpolice/using-reflection Reflecting values to types and back> provides a summary of the
approach taken by this library, along with more motivating examples.")
    (license license:bsd-3)))

haskell-8.10-reflection

(define-public haskell-8.10-relational-query-HDBC
  (package
    (name "haskell-8.10-relational-query-HDBC")
    (version "0.7.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/relational-query-HDBC/relational-query-HDBC-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gzgjqh6pp4nf2zkc77xmm9sm02h2hya1bn339z1sa71nxs0ksc3"))))
    (properties `((upstream-name . "relational-query-HDBC") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-HDBC)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-HDBC-session)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-convertible)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-names-th)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-persistable-record)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-product-isomorphic)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-quickcheck-simple)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-relational-query)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-relational-schemas)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-sql-words)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-data-compat)))
    (home-page "http://khibino.github.io/haskell-relational-record/")
    (synopsis
     "HDBC instance of relational-query and typed query interface for HDBC")
    (description
     "This package contains the HDBC instance of relational-query and
the typed query interface for HDBC.

Generating Database table definitions and functions for
relational-query by reading table and index definitions
from Database system catalogs.")
    (license license:bsd-3)))

haskell-8.10-relational-query-HDBC

(define-public haskell-8.10-repline
  (package
    (name "haskell-8.10-repline")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/repline/repline-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1dspwi28krinkxdd7waq4y6plz0dfmzz72885p9pcqp1r14qrhj3"))))
    (properties `((upstream-name . "repline") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-haskeline)))
    (home-page "https://github.com/sdiehl/repline")
    (synopsis "Haskeline wrapper for GHCi-like REPL interfaces.")
    (description
     "Haskeline wrapper for GHCi-like REPL interfaces. Composable with normal mtl transformers.")
    (license license:expat)))

haskell-8.10-repline

(define-public haskell-8.10-resourcet
  (package
    (name "haskell-8.10-resourcet")
    (version "1.2.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/resourcet/resourcet-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0zrvnikw1a0r2j59k12fxikyrg0ki5a7xhqhjgfl9h6dqpz54h85"))))
    (properties `((upstream-name . "resourcet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0jyk62f533papdf5ipp7nj20aw54ay7s824x1pybfii5lijcbd5d")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)))
    (home-page "http://github.com/snoyberg/conduit")
    (synopsis "Deterministic allocation and freeing of scarce resources.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/resourcet>.")
    (license license:bsd-3)))

haskell-8.10-resourcet

(define-public haskell-8.10-rfc1751
  (package
    (name "haskell-8.10-rfc1751")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/xenog/rfc1751.git#readme")
    (synopsis "RFC-1751 library for Haskell")
    (description "Convert 128-bit ByteString to/from 12 English words.")
    (license license:expat)))

haskell-8.10-rfc1751

(define-public haskell-8.10-rot13
  (package
    (name "haskell-8.10-rot13")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/kvanberendonck/codec-rot13")
    (synopsis "Fast ROT13 cipher for Haskell.")
    (description
     "A fast ROT13 cipher for Haskell implemented using as few branches as possible.
For more information on ROT13, see: <https://en.wikipedia.org/wiki/ROT13>")
    (license license:bsd-3)))

haskell-8.10-rot13

(define-public haskell-8.10-rpm-nvr
  (package
    (name "haskell-8.10-rpm-nvr")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rpm-nvr/rpm-nvr-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1lv1siz93bjgbyqfsl8c0f9j7scx2fj5dvim9mhanw7madsk6ijs"))))
    (properties `((upstream-name . "rpm-nvr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
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

haskell-8.10-rpm-nvr

(define-public haskell-8.10-safe-exceptions
  (package
    (name "haskell-8.10-safe-exceptions")
    (version "0.1.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safe-exceptions/safe-exceptions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15a80s87f603w8l7fnaba2cyqx62042vvcidpjzyga2685wpyqv9"))))
    (properties `((upstream-name . "safe-exceptions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-void)))
    (home-page "https://github.com/fpco/safe-exceptions#readme")
    (synopsis "Safe, consistent, and easy exception handling")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.10-safe-exceptions

(define-public haskell-8.10-sample-frame-np
  (package
    (name "haskell-8.10-sample-frame-np")
    (version "0.0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sample-frame-np/sample-frame-np-"
                    version ".tar.gz"))
              (sha256
               (base32
                "091nz5w5511xl8hp2q8dfvs4jz15nkhz22rr97zga0vmn0hpdnxi"))))
    (properties `((upstream-name . "sample-frame-np") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsplitbase")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-numeric-prelude)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-sample-frame)))
    (home-page "http://www.haskell.org/haskellwiki/Synthesizer")
    (synopsis
     "Orphan instances for types from sample-frame and numericprelude")
    (description
     "Orphan instances for types from @@sample-frame@@ package
and type classes from @@numeric-prelude@@.
Using this package instead defining custom orphan instances
saves you from conflicting instances.

This is used by packages @@synthesizer@@, @@synthesizer-alsa@@, @@synthesizer-llvm@@.")
    (license license:bsd-3)))

haskell-8.10-sample-frame-np

(define-public haskell-8.10-scanner
  (package
    (name "haskell-8.10-scanner")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-fail)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/Yuras/scanner")
    (synopsis
     "Fast non-backtracking incremental combinator parsing for bytestrings")
    (description "Parser combinator library designed to be fast. It doesn't
support backtracking.")
    (license license:bsd-3)))

haskell-8.10-scanner

(define-public haskell-8.10-sendfile
  (package
    (name "haskell-8.10-sendfile")
    (version "0.7.11.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sendfile/sendfile-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1i2i0w18l2ysambyylv93jzy0adiiqwwnhg7zagqb7p2srybxc3k"))))
    (properties `((upstream-name . "sendfile") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-portable")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)))
    (home-page "https://github.com/Happstack/sendfile")
    (synopsis "A portable sendfile library")
    (description
     "A library which exposes zero-copy sendfile functionality in a portable way. If a platform does not support sendfile, a fallback implementation in haskell is provided.

Currently supported platforms: Windows 2000+ (Native), Linux 2.6+ (Native), FreeBSD (Native), OS-X 10.5+ (Native), Everything else (Portable Haskell code).")
    (license license:bsd-3)))

haskell-8.10-sendfile

(define-public haskell-8.10-should-not-typecheck
  (package
    (name "haskell-8.10-should-not-typecheck")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hspec-expectations)))
    (home-page "http://github.com/CRogers/should-not-typecheck")
    (synopsis
     "A HUnit/hspec assertion library to verify that an expression does not typecheck")
    (description
     "For examples and an introduction to the library please take a look at the <https://github.com/CRogers/should-not-typecheck#should-not-typecheck- README> on github.")
    (license license:bsd-3)))

haskell-8.10-should-not-typecheck

(define-public haskell-8.10-socks
  (package
    (name "haskell-8.10-socks")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-basement)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)))
    (home-page "http://github.com/vincenthz/hs-socks")
    (synopsis "Socks proxy (ver 5)")
    (description "Socks proxy (version 5) implementation.")
    (license license:bsd-3)))

haskell-8.10-socks

(define-public haskell-8.10-sox
  (package
    (name "haskell-8.10-sox")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-explicit-exception)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-sample-frame)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)))
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

haskell-8.10-sox

(define-public haskell-8.10-splice
  (package
    (name "haskell-8.10-splice")
    (version "0.6.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/splice/splice-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0lsfkm4vfipzbnqpf3yli6fwrv5a5mwbs149dfzhs7spa9kbxyl1"))))
    (properties `((upstream-name . "splice") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fportable" "-f-llvm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)))
    (home-page "http://corsis.github.com/splice/")
    (synopsis "Cross-platform Socket to Socket Data Splicing")
    (description
     "A library that implements most efficient socket to socket
data transfer loops for proxy servers on all operating systems.

On GNU/Linux, it exports the zero-copy system call @@c_splice()@@
(<http://en.wikipedia.org/wiki/Splice_(system_call)#Requirements>)
in @@System.IO.Splice.Linux@@.

On other operating systems, it only exports a portable Haskell
implementation.

A unified sockets API for all operating systems is available in
@@Network.Socket.Splice@@.

[Version Scheme]
Major-@@/R/@@-ewrite . New-@@/F/@@-unctionality . @@/I/@@-mprovementAndBugFixes . @@/P/@@-ackagingOnly

* @@PackagingOnly@@ changes are made for quality assurance reasons.")
    (license license:bsd-3)))

haskell-8.10-splice

(define-public haskell-8.10-splitmix-distributions
  (package
    (name "haskell-8.10-splitmix-distributions")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-erf)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-splitmix)))
    (home-page "https://github.com/ocramz/splitmix-distributions#readme")
    (synopsis
     "Random samplers for some common distributions, based on splitmix.")
    (description
     "Random samplers for some common distributions, as well as a convenient interface for composing them, based on splitmix. Please see the README on GitHub at <https://github.com/ocramz/splitmix-distributions#readme>")
    (license license:bsd-3)))

haskell-8.10-splitmix-distributions

(define-public haskell-8.10-stopwatch
  (package
    (name "haskell-8.10-stopwatch")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-clock)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/debug-ito/stopwatch")
    (synopsis "A simple stopwatch utility")
    (description "A simple stopwatch utility")
    (license license:bsd-3)))

haskell-8.10-stopwatch

(define-public haskell-8.10-streaming
  (package
    (name "haskell-8.10-streaming")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-mmorph)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)))
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

haskell-8.10-streaming

(define-public haskell-8.10-streaming-commons
  (package
    (name "haskell-8.10-streaming-commons")
    (version "0.2.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/streaming-commons/streaming-commons-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wnc2hi90djilj1m0la3h3xri723pbpmfdyp0kxxs33irs6418an"))))
    (properties `((upstream-name . "streaming-commons") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-use-bytestring-builder")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/fpco/streaming-commons")
    (synopsis
     "Common lower-level functions needed by various streaming data libraries")
    (description
     "Provides low-dependency functionality commonly needed by various streaming data libraries, such as conduit and pipes.")
    (license license:expat)))

haskell-8.10-streaming-commons

(define-public haskell-8.10-streamly
  (package
    (name "haskell-8.10-streamly")
    (version "0.7.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/streamly/streamly-" version
                    ".tar.gz"))
              (sha256
               (base32
                "11bjyyqc745igw7122284fjph0922l56jddnhfy5h7w84nj35ck3"))))
    (properties `((upstream-name . "streamly") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-fusion-plugin" "-f-inspection" "-f-debug" "-f-dev" "-f-has-llvm" "-f-no-fusion" "-f-streamk" "-f-examples" "-f-examples-sdl")
       #:cabal-revision
       ("1" "1fbhk59p5hjkxf4dnghs8wb70pyv0kx6br5sf4csf4vk1rkqyljw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-atomic-primops)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-fusion-plugin-types)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-heaps)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-lockfree-queue)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)))
    (home-page "https://github.com/composewell/streamly")
    (synopsis "Beautiful Streaming, Concurrent and Reactive Composition")
    (description
     "Streamly is a framework for writing programs in a high level, declarative
data flow programming paradigm. It provides a simple API, very close to
standard Haskell lists.  A program is expressed as a composition of data
processing pipes, generally known as streams.  Streams can be generated,
merged, chained, mapped, zipped, and consumed concurrently – enabling a high
level, declarative yet concurrent composition of programs.  Programs can be
concurrent or non-concurrent without any significant change.  Concurrency is
auto scaled based on consumption rate.  Programmers do not have to be aware
of threads, locking or synchronization to write scalable concurrent programs.
Streamly provides C like performance, orders of magnitude better compared to
existing streaming libraries.

Streamly is designed to express the full spectrum of programs with highest
performance. Do not think that if you are writing a small and simple program
it may not be for you. It expresses a small \"hello world\" program with the
same efficiency, simplicity and elegance as a large scale concurrent
application. It unifies many different aspects of special purpose libraries
into a single yet simple framework.

Streamly covers the functionality provided by Haskell lists as well as the
functionality provided by streaming libraries like
<https://hackage.haskell.org/package/streaming streaming>,
<https://hackage.haskell.org/package/pipes pipes>, and
<https://hackage.haskell.org/package/conduit conduit> with a simpler API and
better performance. Streamly provides
advanced stream composition including various ways of appending, merging,
zipping, splitting, grouping, distributing, partitioning and unzipping of
streams with true streaming and with concurrency. Streamly subsumes the
functionality of list transformer libraries like @@pipes@@ or
<https://hackage.haskell.org/package/list-t list-t> and also the logic
programming library <https://hackage.haskell.org/package/logict logict>.
The grouping, splitting and windowing combinators in streamly can be compared
to the window operators in <https://flink.apache.org/ Apache Flink>.
However, compared to Flink streamly has a pure functional, succinct and
expressive API.

The concurrency capabilities of streamly are much more advanced and powerful
compared to the basic concurrency functionality provided by the
<https://hackage.haskell.org/package/async async> package.  Streamly is a
first class reactive programming library.  If you are familiar with
<http://reactivex.io/ Reactive Extensions> you will find that it is very
similar.  For most RxJs combinators you can find or write corresponding ones
in streamly. Streamly can be used as an alternative to
<https://hackage.haskell.org/package/Yampa Yampa> or
<https://hackage.haskell.org/package/reflex reflex> as well.

Streamly focuses on practical engineering with high performance. From well
written streamly programs one can expect performance competitive to C.  High
performance streaming eliminates the need for string and text libraries like
<https://hackage.haskell.org/package/bytestring bytestring>,
<https://hackage.haskell.org/package/text text> and their lazy and strict
flavors. The confusion and cognitive overhead arising from different
string types is eliminated. The two fundamental types in streamly are arrays
for storage and streams for processing. Strings and text are simply streams
or arrays of 'Char' as they should be. Arrays in streamly have performance
at par with the vector library.

Where to find more information:

* /Quick Overview/: <#readme README file> in the package
* /Building/: <src/docs/Build.md Build guide> for optimal performance
* /Detailed Tutorial/: \"Streamly.Tutorial\" module in the haddock documentation
* /Interoperation/: \"Streamly.Tutorial\" module for interop with other
streaming libraries
* /Reference Documentation/: Haddock documentation for the respective modules
* /Examples/: <src/examples examples directory> in the package
* /Guides/: <src/docs docs directory> in the package, for documentation on
advanced topics, limitations, semantics of the library or on specific use
cases.
* <https://github.com/composewell/streaming-benchmarks Streaming Benchmarks>
* <https://github.com/composewell/concurrency-benchmarks Concurrency Benchmarks>
")
    (license license:bsd-3)))

haskell-8.10-streamly

(define-public haskell-8.10-stringbuilder
  (package
    (name "haskell-8.10-stringbuilder")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/stringbuilder")
    (synopsis "A writer monad for multi-line string literals")
    (description "<https://github.com/sol/stringbuilder#readme>")
    (license license:expat)))

haskell-8.10-stringbuilder

(define-public haskell-8.10-structured-cli
  (package
    (name "haskell-8.10-structured-cli")
    (version "2.7.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/structured-cli/structured-cli-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18l4jy328djmrwhmcmli73592qlld85fwbwby95mghwdbdy2i68g"))))
    (properties `((upstream-name . "structured-cli") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-haskeline)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)))
    (home-page "https://gitlab.com/codemonkeylabs/structured-cli#readme")
    (synopsis "Application library for building interactive console CLIs")
    (description
     "This module provides the tools to build a complete \"structured\" CLI application, similar to those found in systems like Cisco IOS or console configuration utilities etc. It aims to be easy for implementors to use.")
    (license license:bsd-3)))

haskell-8.10-structured-cli

(define-public haskell-8.10-sum-type-boilerplate
  (package
    (name "haskell-8.10-sum-type-boilerplate")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/jdreaver/sum-type-boilerplate#readme")
    (synopsis "Library for reducing the boilerplate involved with sum types")
    (description
     "Library for reducing the boilerplate involved in creating and manipulating sum types")
    (license license:expat)))

haskell-8.10-sum-type-boilerplate

(define-public haskell-8.10-sysinfo
  (package
    (name "haskell-8.10-sysinfo")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hspec-expectations)))
    (home-page "https://github.com/psibi/sysinfo#readme")
    (synopsis "Haskell Interface for getting overall system statistics")
    (description "This package can be used to get system statistics like
uptime, free memory, system load etc. Note that
the package works *only* on Linux system with
kernel version >= 2.3.23 and uses FFI calls.")
    (license license:bsd-3)))

haskell-8.10-sysinfo

(define-public haskell-8.10-systemd
  (package
    (name "haskell-8.10-systemd")
    (version "2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/systemd/systemd-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1fa65j996snrdq83kh3jzzs2dsf2ddsscx596p03ykgknz1q1f16"))))
    (properties `((upstream-name . "systemd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)))
    (home-page "https://github.com/erebe/systemd")
    (synopsis "Systemd facilities (Socket activation, Notify)")
    (description "A module for Systemd facilities.")
    (license license:bsd-3)))

haskell-8.10-systemd

(define-public haskell-8.10-terminal-progress-bar
  (package
    (name "haskell-8.10-terminal-progress-bar")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/terminal-progress-bar/terminal-progress-bar-"
                    version ".tar.gz"))
              (sha256
               (base32
                "092yx9hal3xxcvpjwyqbfqww277l4gf83272pcnp3k6aj86a2756"))))
    (properties `((upstream-name . "terminal-progress-bar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-terminal-size)))
    (home-page "https://github.com/roelvandijk/terminal-progress-bar")
    (synopsis "A progress bar in the terminal")
    (description
     "A progress bar conveys the progress of a task. This package
implements a progress bar that is displayed in a terminal.

See the module 'System.ProgressBar' to get started or look at the
terminal-progress-bar-example package.

The animated progress bar depends entirely on the interpretation of
the carriage return character (\\'\\\\r\\'). If your terminal interprets
it as something else than \\\"move cursor to beginning of line\\\", the
animation won't work.")
    (license license:bsd-3)))

haskell-8.10-terminal-progress-bar

(define-public haskell-8.10-text-conversions
  (package
    (name "haskell-8.10-text-conversions")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-conversions/text-conversions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kbxin1q8xj9sgdl185gncrdjwcfzndp8sl5qll8y93l60yq8dxi"))))
    (properties `((upstream-name . "text-conversions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1gra9mdsqxy2gr43cagqwn6dnc0l4pzaf4lq80y1ly5xnm1nb456")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-errors)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/cjdev/text-conversions#readme")
    (synopsis "Safe conversions between textual types")
    (description "Safe conversions between textual types")
    (license license:isc)))

haskell-8.10-text-conversions

(define-public haskell-8.10-text-metrics
  (package
    (name "haskell-8.10-text-metrics")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/mrkkrp/text-metrics")
    (synopsis "Calculate various string metrics efficiently")
    (description "Calculate various string metrics efficiently.")
    (license license:bsd-3)))

haskell-8.10-text-metrics

(define-public haskell-8.10-text-zipper
  (package
    (name "haskell-8.10-text-zipper")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/jtdaugherty/text-zipper/")
    (synopsis "A text editor zipper library")
    (description "This library provides a zipper and API for editing text.")
    (license license:bsd-3)))

haskell-8.10-text-zipper

(define-public haskell-8.10-th-compat
  (package
    (name "haskell-8.10-th-compat")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-compat/th-compat-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1il1hs5yjfkb417c224pw1vrh4anyprasfwmjbd4fkviyv55jl3b"))))
    (properties `((upstream-name . "th-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1ax5yz41sfy9klif7j3ihahvdi08alb56l4y9nr45vbc9kvijn7n")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/haskell-compat/th-compat")
    (synopsis "Backward- (and forward-)compatible Quote and Code types")
    (description "This package defines a \"Language.Haskell.TH.Syntax.Compat\"
module, which backports the @@Quote@@ and @@Code@@ types to
work across a wide range of @@template-haskell@@ versions.
On recent versions of @@template-haskell@@ (2.17.0.0 or
later), this module simply reexports @@Quote@@ and @@Code@@
from \"Language.Haskell.TH.Syntax\". Refer to the Haddocks
for \"Language.Haskell.TH.Syntax.Compat\" for examples of
how to use this module.")
    (license license:bsd-3)))

haskell-8.10-th-compat

(define-public haskell-8.10-thread-hierarchy
  (package
    (name "haskell-8.10-thread-hierarchy")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/nshimaza/thread-hierarchy#readme")
    (synopsis "Simple Haskell thread management in hierarchical manner")
    (description
     "Please see the README on GitHub at <https://github.com/nshimaza/thread-hierarchy#readme>")
    (license license:expat)))

haskell-8.10-thread-hierarchy

(define-public haskell-8.10-ttl-hashtables
  (package
    (name "haskell-8.10-ttl-hashtables")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-clock)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-failable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hashtables)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/ttl-hashtables")
    (synopsis
     "Extends hashtables so that entries added can be expired after a TTL")
    (description
     "This library extends fast mutable hashtables so that entries added can be expired after a given TTL (time to live). This TTL can be specified as a default property of the table or on a per entry basis.")
    (license license:bsd-3)))

haskell-8.10-ttl-hashtables

(define-public haskell-8.10-type-of-html
  (package
    (name "haskell-8.10-type-of-html")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-double-conversion)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://github.com/knupfer/type-of-html")
    (synopsis "High performance type driven html generation.")
    (description
     "This library makes most invalid html documents compile time errors and uses advanced type level features to realise compile time computations.")
    (license license:bsd-3)))

haskell-8.10-type-of-html

(define-public haskell-8.10-typenums
  (package
    (name "haskell-8.10-typenums")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/adituv/typenums#readme")
    (synopsis "Type level numbers using existing Nat functionality")
    (description
     "Type level numbers using existing Nat functionality. Uses kind-polymorphic typeclasses and type families to facilitate more general code compatible with existing code using type-level Naturals.")
    (license license:bsd-3)))

haskell-8.10-typenums

(define-public haskell-8.10-unliftio
  (package
    (name "haskell-8.10-unliftio")
    (version "0.2.21.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unliftio/unliftio-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0z3g4hnwzianh8a564zfwj4rvs1ayggxm0wcwi97hc1g0ndz5hic"))))
    (properties `((upstream-name . "unliftio") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)))
    (home-page "https://github.com/fpco/unliftio/tree/master/unliftio#readme")
    (synopsis
     "The MonadUnliftIO typeclass for unlifting monads to IO (batteries included)")
    (description
     "Please see the documentation and README at <https://www.stackage.org/package/unliftio>")
    (license license:expat)))

haskell-8.10-unliftio

(define-public haskell-8.10-urbit-hob
  (package
    (name "haskell-8.10-urbit-hob")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-hspec-core)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-murmur3)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
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

haskell-8.10-urbit-hob

(define-public haskell-8.10-utf8-conversions
  (package
    (name "haskell-8.10-utf8-conversions")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/utf8-conversions/utf8-conversions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j5jskj35njz5c9yqs3sc0a8zmmjmnil8996pwr8akghj282b4wz"))))
    (properties `((upstream-name . "utf8-conversions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-charsetdetect-ae)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-text-short)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://github.com/chemirea/utf8-conversions#readme")
    (synopsis "A string conversion library that assumes utf8")
    (description
     "Please see the README on GitHub at <https://github.com/chemirea/utf8-conversions#readme>")
    (license license:bsd-3)))

haskell-8.10-utf8-conversions

(define-public haskell-8.10-validity
  (package
    (name "haskell-8.10-validity")
    (version "0.11.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity/validity-" version
                    ".tar.gz"))
              (sha256
               (base32
                "086nj5ymp4mxxfw9qjgjhd4j3z7gl2y9d89p0b7bkap5ampgdw2x"))))
    (properties `((upstream-name . "validity") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "18w650hk580azbzmpm543aqgnbhymdr4ry5qlih9igmp7iczjq76")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
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

haskell-8.10-validity

(define-public haskell-8.10-valor
  (package
    (name "haskell-8.10-valor")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/reygoch/valor#readme")
    (synopsis "Simple general structured validation library")
    (description
     "Please see the README on GitHub at <https://github.com/reygoch/valor#readme>")
    (license license:expat)))

haskell-8.10-valor

(define-public haskell-8.10-vformat
  (package
    (name "haskell-8.10-vformat")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/versioncloud/vformat#readme")
    (synopsis "A Python str.format() like formatter")
    (description "Please see the http://hackage.haskell.org/package/vformat")
    (license license:bsd-3)))

haskell-8.10-vformat

(define-public haskell-8.10-wcwidth
  (package
    (name "haskell-8.10-wcwidth")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/wcwidth/wcwidth-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1n1fq7v64b59ajf5g50iqj9sa34wm7s2j3viay0kxpmvlcv8gipz"))))
    (properties `((upstream-name . "wcwidth") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsplit-base" "-f-cli")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-setlocale)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)))
    (home-page "http://github.com/solidsnack/wcwidth/")
    (synopsis "Native wcwidth.")
    (description
     "Bindings for your system's native wcwidth and a command line tool to examine
the widths assigned by it. The command line tool can compile a width table
to Haskell code that assigns widths to the Char type.")
    (license license:bsd-3)))

haskell-8.10-wcwidth

(define-public haskell-8.10-wikicfp-scraper
  (package
    (name "haskell-8.10-wikicfp-scraper")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-scalpel-core)))
    (home-page "https://github.com/debug-ito/wikicfp-scraper")
    (synopsis "Scrape WikiCFP web site")
    (description "Scrape WikiCFP web site. See 'Web.WikiCFP.Scraper'.")
    (license license:bsd-3)))

haskell-8.10-wikicfp-scraper

(define-public haskell-8.10-wild-bind
  (package
    (name "haskell-8.10-wild-bind")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)))
    (home-page "https://github.com/debug-ito/wild-bind")
    (synopsis "Dynamic key binding framework")
    (description
     "Dynamic key binding framework. See <https://github.com/debug-ito/wild-bind>")
    (license license:bsd-3)))

haskell-8.10-wild-bind

(define-public haskell-8.10-with-location
  (package
    (name "haskell-8.10-with-location")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/sol/with-location#readme")
    (synopsis
     "Use ImplicitParams-based source locations in a backward compatible way")
    (description "")
    (license license:expat)))

haskell-8.10-with-location

(define-public haskell-8.10-wizards
  (package
    (name "haskell-8.10-wizards")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/wizards/wizards-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1clvbd1ckhvy29qrbmpkn7bya7300fq6znnps23nn3nxyrxhsr85"))))
    (properties `((upstream-name . "wizards") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "095qd17zrdhqmcvmslbyzfa5sh9glvvsnsvnlz31gzsmi8nnsgim")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-control-monad-free)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-haskeline)))
    (home-page "https://hackage.haskell.org/package/wizards")
    (synopsis "High level, generic library for interrogative user interfaces")
    (description
     "@@wizards@@ is a package designed for the quick and painless development of /interrogative/ programs, which
revolve around a \\\"dialogue\\\" with the user, who is asked a series of questions in a sequence much like an
installation wizard.

Everything from interactive system scripts, to installation wizards, to full-blown shells can be implemented with
the support of @@wizards@@.

It is developed transparently on top of a free monad, which separates out the semantics of the program from any
particular interface. A variety of backends exist, including console-based \"System.Console.Wizard.Haskeline\" and
\"System.Console.Wizard.BasicIO\", and the pure \"System.Console.Wizard.Pure\". It is also possible to write your
own backends, or extend existing back-ends with new features. While both built-in IO backends operate on a
console, there is no reason why @@wizards@@ cannot also be used for making GUI wizard interfaces.


See the github page for examples on usage:

<http://www.github.com/liamoc/wizards>

For creating backends, the module \"System.Console.Wizard.Internal\" has a brief tutorial.")
    (license license:bsd-3)))

haskell-8.10-wizards

(define-public haskell-8.10-word-trie
  (package
    (name "haskell-8.10-word-trie")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/yi-editor/word-trie")
    (synopsis "Implementation of a finite trie over words.")
    (description "Implementation of a finite trie over words.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-word-trie

(define-public haskell-8.10-word-wrap
  (package
    (name "haskell-8.10-word-wrap")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/jtdaugherty/word-wrap/")
    (synopsis "A library for word-wrapping")
    (description "A library for wrapping long lines of text.")
    (license license:bsd-3)))

haskell-8.10-word-wrap

(define-public haskell-8.10-word8
  (package
    (name "haskell-8.10-word8")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/word8")
    (synopsis "Word8 library")
    (description "Word8 library to be used with Data.ByteString")
    (license license:bsd-3)))

haskell-8.10-word8

(define-public haskell-8.10-xmonad
  (package
    (name "haskell-8.10-xmonad")
    (version "0.15")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/xmonad/xmonad-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0a7rh21k9y6g8fwkggxdxjns2grvvsd5hi2ls4klmqz5xvk4hyaa"))))
    (properties `((upstream-name . "xmonad") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-testing" "-f-generatemanpage")
       #:cabal-revision
       ("3" "0wam2zyil7lcawzmvzw6bmbm8r2nmic55sjbbz4xds0d8hr9jb8x")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-X11)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-setlocale)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)))
    (propagated-inputs (list (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxext)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxscrnsaver)))
    (home-page "http://xmonad.org")
    (synopsis "A tiling window manager")
    (description
     "xmonad is a tiling window manager for X. Windows are arranged
automatically to tile the screen without gaps or overlap, maximising
screen use. All features of the window manager are accessible from the
keyboard: a mouse is strictly optional. xmonad is written and
extensible in Haskell. Custom layout algorithms, and other extensions,
may be written by the user in config files. Layouts are applied
dynamically, and different layouts may be used on each workspace.
Xinerama is fully supported, allowing windows to be tiled on several
screens.")
    (license license:bsd-3)))

haskell-8.10-xmonad

(define-public haskell-8.10-xxhash-ffi
  (package
    (name "haskell-8.10-xxhash-ffi")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/haskell-haskey/xxhash-ffi#readme")
    (synopsis "Bindings to the C implementation the xxHash algorithm")
    (description
     "Bindings to the C implementation the xxHash algorithm. xxHash provides 32-bit and 64-bit extremely fast non-cryptographic hash functions.")
    (license license:bsd-3)))

haskell-8.10-xxhash-ffi

(define-public haskell-8.10-yes-precure5-command
  (package
    (name "haskell-8.10-yes-precure5-command")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)))
    (home-page "https://github.com/igrep/yes-precure5-command/")
    (synopsis "Extended yes command to reproduce phrases in Yes! Precure 5.")
    (description
     "Provides extended yes command to reproduce phrases in Yes! Precure 5 or Yes! PreCure5 GoGo!

See <https://github.com/igrep/yes-precure5-command/blob/master/README.mkd> for details.")
    (license license:expat)))

haskell-8.10-yes-precure5-command

(define-public haskell-8.10-zio
  (package
    (name "haskell-8.10-zio")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/zio/zio-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "15ka58l6xv3v4x5rcam75gq37mfcxjngm0frz9k0rmzqyf07l06k"))))
    (properties `((upstream-name . "zio") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-unexceptionalio)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-unexceptionalio-trans)))
    (home-page "https://github.com/bbarker/haskell-zio#readme")
    (synopsis
     "App-centric Monad-transformer based on Scala ZIO (UIO + ReaderT + ExceptT).")
    (description
     "Please see the README on GitHub at <https://github.com/bbarker/haskell-zio#readme>")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-zio

(define-public haskell-8.10-zlib-bindings
  (package
    (name "haskell-8.10-zlib-bindings")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/snapframework/zlib-bindings")
    (synopsis "Low-level bindings to the zlib package.")
    (description "Low-level bindings to the zlib package.")
    (license license:bsd-3)))

haskell-8.10-zlib-bindings

