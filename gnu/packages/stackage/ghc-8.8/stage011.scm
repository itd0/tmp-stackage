;;; generated file
(define-module (gnu packages stackage ghc-8.8 stage011)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-8.8))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-8.8-GLUT
  (package
    (name "haskell-8.8-GLUT")
    (version "2.7.0.15")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/GLUT/GLUT-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0271vnf6wllhxjwy0m348x90kv27aybxcbqkkglmd5w4cpwjg5g9"))))
    (properties `((upstream-name . "GLUT") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fusenativewindowslibraries" "-f-buildexamples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-OpenGL)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-OpenGLRaw)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-StateVar)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "http://www.haskell.org/haskellwiki/Opengl")
    (synopsis "A binding for the OpenGL Utility Toolkit")
    (description
     "A Haskell binding for the OpenGL Utility Toolkit, a window system independent
toolkit for writing OpenGL programs. For more information about the C library
on which this binding is based, please see:
<http://www.opengl.org/resources/libraries/glut/>.")
    (license license:bsd-3)))

haskell-8.8-GLUT

(define-public haskell-8.8-JuicyPixels-blurhash
  (package
    (name "haskell-8.8-JuicyPixels-blurhash")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/JuicyPixels-blurhash/JuicyPixels-blurhash-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kgl2j7990p8q5yrkn0wgaszc9fzva1pc3277j11k1lbjsymz360"))))
    (properties `((upstream-name . "JuicyPixels-blurhash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("8" "09mlq9874j1lc33mk9f7qx6nwyz58hywnb8r4l1nkmnnbnc56alj")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-Glob)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-discover)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/SamProtas/JuicyPixels-blurhash#readme")
    (synopsis
     "Blurhash is a very compact represenation of a placeholder for an image")
    (description
     "Please see the README on GitHub at <https://github.com/SamProtas/JuicyPixels-blurhash#readme>")
    (license license:bsd-3)))

haskell-8.8-JuicyPixels-blurhash

(define-public haskell-8.8-OpenAL
  (package
    (name "haskell-8.8-OpenAL")
    (version "1.7.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/OpenAL/OpenAL-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "167qgbls1439wbckva281cf61bclkca0krbbi4451l7qjinm8fil"))))
    (properties `((upstream-name . "OpenAL") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fusenativewindowslibraries" "-f-buildexamples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-ObjectName)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-OpenGL)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-StateVar)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)
                             (@ (gnu packages audio) openal)))
    (home-page "https://github.com/haskell-openal/ALUT")
    (synopsis "A binding to the OpenAL cross-platform 3D audio API")
    (description
     "A Haskell binding for the OpenAL cross-platform 3D audio API,
appropriate for use with gaming applications and many other
types of audio applications.

On Windows, this package works well with the \\\"OpenAL Soft\\\" binary
distribution from <http://kcat.strangesoft.net/openal.html>.
Type \\'cabal install --extra-lib-dirs=\\<DIR\\>\\' where \\<DIR\\> is the
directory where libOpenAL32.dll.a is located (must be an absolute path).
Then rename soft_oal.dll to OpenAL32.dll and put it somewhere in
the PATH. I found that c:\\\\Windows\\\\ worked.

This package has also been tested on GNU/Linux and iOS.")
    (license license:bsd-3)))

haskell-8.8-OpenAL

(define-public haskell-8.8-ace
  (package
    (name "haskell-8.8-ace")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-blaze-html)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-blaze-markup)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)))
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

haskell-8.8-ace

(define-public haskell-8.8-arbor-lru-cache
  (package
    (name "haskell-8.8-arbor-lru-cache")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/arbor-lru-cache/arbor-lru-cache-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ayr6d5p7x2b2ggck56skbbzsmf44vrsr5jf3bzhnqwcm1lljbv0"))))
    (properties `((upstream-name . "arbor-lru-cache") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-hw-hspec-hedgehog)))
    (home-page "https://github.com/arbor/arbor-lru-cache#readme")
    (synopsis "LRU cache based on STM")
    (description
     "Please see the README on GitHub at <https://github.com/arbor/arbor-lru-cache#readme>")
    (license license:expat)))

haskell-8.8-arbor-lru-cache

(define-public haskell-8.8-assoc
  (package
    (name "haskell-8.8-assoc")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/assoc/assoc-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0kqlizznjy94fm8zr1ng633yxbinjff7cnsiaqs7m33ix338v66q"))))
    (properties `((upstream-name . "assoc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0mrb12dx316q4gxyn68x2rl8jq0gd77zffd12r8j1r41l0xd9f4k")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)))
    (home-page "https://hackage.haskell.org/package/assoc")
    (synopsis "swap and assoc: Symmetric and Semigroupy Bifunctors")
    (description
     "Provides generalisations of
@@swap :: (a,b) -> (b,a)@@ and
@@assoc :: ((a,b),c) -> (a,(b,c))@@
to
@@Bifunctor@@s supporting similar operations (e.g. @@Either@@, @@These@@).")
    (license license:bsd-3)))

haskell-8.8-assoc

(define-public haskell-8.8-bits-extra
  (package
    (name "haskell-8.8-bits-extra")
    (version "0.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bits-extra/bits-extra-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1c54008kinzcx93kc8vcp7wq7la662m8nk82ax76i9b0gvbkk21f"))))
    (properties `((upstream-name . "bits-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-bmi2")
       #:cabal-revision
       ("2" "01qlnzbc3kgbyacqg9c7ldab2s91h9s4kalld0wz9q2k1d4063lv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-doctest-discover)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-hw-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/haskell-works/bits-extra#readme")
    (synopsis "Useful bitwise operations")
    (description
     "Please see the README on Github at <https://github.com/haskell-works/bits-extra#readme>")
    (license license:bsd-3)))

haskell-8.8-bits-extra

(define-public haskell-8.8-bsb-http-chunked
  (package
    (name "haskell-8.8-bsb-http-chunked")
    (version "0.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bsb-http-chunked/bsb-http-chunked-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0z0f18yc6zlwh29c6175ivfcin325lvi4irpvv0n3cmq7vi0k0ql"))))
    (properties `((upstream-name . "bsb-http-chunked") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "15hg352id2f4x0dnvv47bdiz6gv5hp5a2mki9yzmhc7ajpk31mdd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (home-page "http://github.com/sjakobi/bsb-http-chunked")
    (synopsis "Chunked HTTP transfer encoding for bytestring builders")
    (description
     "This library contains functions for encoding [bytestring
builders](http://hackage.haskell.org/package/bytestring/docs/Data-ByteString-Builder.html#t:Builder)
for [chunked HTTP\\/1.1 transfer](https://en.wikipedia.org/wiki/Chunked_transfer_encoding).

This functionality was extracted from
the [blaze-builder](http://hackage.haskell.org/package/blaze-builder)
package.")
    (license license:bsd-3)))

haskell-8.8-bsb-http-chunked

(define-public haskell-8.8-cardano-coin-selection
  (package
    (name "haskell-8.8-cardano-coin-selection")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage010) haskell-8.8-fmt)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-quiet)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page
     "https://github.com/input-output-hk/cardano-coin-selection#readme")
    (synopsis "Algorithms for coin selection and fee balancing.")
    (description
     "Please see the README on GitHub at <https://github.com/input-output-hk/cardano-coin-selection>")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-cardano-coin-selection

(define-public haskell-8.8-core-program
  (package
    (name "haskell-8.8-core-program")
    (version "0.2.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/core-program/core-program-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bgzlyxcmnn7bscw04v9rljny9wjhcg066nbqk47aphdd6b716dj"))))
    (properties `((upstream-name . "core-program") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-chronologique)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-core-data)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-core-text)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-fsnotify)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hourglass)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-prettyprinter)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-terminal-size)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-text-short)))
    (home-page "https://github.com/aesiniath/unbeliever#readme")
    (synopsis "Opinionated Haskell Interoperability")
    (description
     "A library to help build command-line programs, both tools and
longer-running daemons.

A description of this package, a list of features, and some background
to its design is contained in the
<https://github.com/aesiniath/unbeliever/blob/master/README.markdown README>
on GitHub.

See \"Core.Program.Execute\" to get started.")
    (license license:bsd-3)))

haskell-8.8-core-program

(define-public haskell-8.8-cuckoo-filter
  (package
    (name "haskell-8.8-cuckoo-filter")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cuckoo-filter/cuckoo-filter-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1yya8r3igwms910xp3cc4y1y34f5yw3yqqy1wy49d4xsi6smyjdc"))))
    (properties `((upstream-name . "cuckoo-filter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-criterion)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)))
    (home-page "https://github.com/ChrisCoffey/cuckoo-filter#readme")
    (synopsis "Pure and impure Cuckoo Filter")
    (description
     "Please see the README on Github at <https://github.com/ChrisCoffey/cuckoo-filter#readme>")
    (license license:expat)))

haskell-8.8-cuckoo-filter

(define-public haskell-8.8-cursor-brick
  (package
    (name "haskell-8.8-cursor-brick")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cursor-brick/cursor-brick-"
                    version ".tar.gz"))
              (sha256
               (base32
                "018i8yrdcj69qf00vz1sx7is5cx1a7vn5b8kr9b226n7vxlr3nzd"))))
    (properties `((upstream-name . "cursor-brick") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-brick)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-cursor)))
    (home-page "https://github.com/NorfairKing/cursor-brick#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/NorfairKing/cursor-brick#readme>")
    (license license:expat)))

haskell-8.8-cursor-brick

(define-public haskell-8.8-fused-effects
  (package
    (name "haskell-8.8-fused-effects")
    (version "1.0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fused-effects/fused-effects-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1n9nal5kz2gpi58jc7xspj100ibn582f8vgndc9ra84fbp380yy2"))))
    (properties `((upstream-name . "fused-effects") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-hedgehog-fn)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-inspection-testing)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (home-page "https://github.com/fused-effects/fused-effects")
    (synopsis "A fast, flexible, fused effect system.")
    (description
     "A fast, flexible, fused effect system, à la Effect Handlers in Scope, Monad Transformers and Modular Algebraic Effects: What Binds Them Together, and Fusion for Free—Efficient Algebraic Effect Handlers.")
    (license license:bsd-3)))

haskell-8.8-fused-effects

(define-public haskell-8.8-genvalidity-bytestring
  (package
    (name "haskell-8.8-genvalidity-bytestring")
    (version "0.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-bytestring/genvalidity-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0d15cjp4pxi7hb9nilbf88mia8sv3wzwxgy3kn46bvhz4w726z5d"))))
    (properties `((upstream-name . "genvalidity-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-genvalidity)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-validity)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-validity-bytestring)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for ByteString")
    (description "")
    (license license:expat)))

haskell-8.8-genvalidity-bytestring

(define-public haskell-8.8-genvalidity-containers
  (package
    (name "haskell-8.8-genvalidity-containers")
    (version "0.8.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-containers/genvalidity-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nqxjs9nb080zlf2qys07dq1kfwwg1sg7jh0lnzl1zm9f228q701"))))
    (properties `((upstream-name . "genvalidity-containers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-genvalidity)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-genvalidity-property)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-validity)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-validity-containers)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for containers")
    (description "")
    (license license:expat)))

haskell-8.8-genvalidity-containers

(define-public haskell-8.8-genvalidity-criterion
  (package
    (name "haskell-8.8-genvalidity-criterion")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-criterion/genvalidity-criterion-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1r28kqqwaaavchdncdwa4q52z3li5515rfa9wz5lcnyrscim62xg"))))
    (properties `((upstream-name . "genvalidity-criterion") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-criterion)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-genvalidity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Criterion benchmarks for generators")
    (description "")
    (license license:expat)))

haskell-8.8-genvalidity-criterion

(define-public haskell-8.8-genvalidity-hspec-binary
  (package
    (name "haskell-8.8-genvalidity-hspec-binary")
    (version "0.2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-binary/genvalidity-hspec-binary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "144gcr9hm89aqwr0fglnazc5biksdd7sv7qh0ivh56x7v80wd3r9"))))
    (properties `((upstream-name . "genvalidity-hspec-binary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-genvalidity)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-genvalidity-property)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Standard spec's for binary-related Instances")
    (description
     "Standard spec's for cereal-related Instances, see https://hackage.haskell.org/package/binary.")
    (license license:expat)))

haskell-8.8-genvalidity-hspec-binary

(define-public haskell-8.8-genvalidity-hspec-cereal
  (package
    (name "haskell-8.8-genvalidity-hspec-cereal")
    (version "0.2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-cereal/genvalidity-hspec-cereal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dyfx56cjila3l1nv199p12pi90hi9x27a97h5kqrkaxx5ca3czb"))))
    (properties `((upstream-name . "genvalidity-hspec-cereal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-genvalidity)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-genvalidity-property)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-validity)))
    (home-page "http://cs-syd.eu")
    (synopsis "Standard spec's for cereal-related instances")
    (description "")
    (license license:expat)))

haskell-8.8-genvalidity-hspec-cereal

(define-public haskell-8.8-genvalidity-hspec-hashable
  (package
    (name "haskell-8.8-genvalidity-hspec-hashable")
    (version "0.2.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-hashable/genvalidity-hspec-hashable-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ia1kvr4by2yfzdrk89da028aqpqx4sp3lllra147q7bpjys0kry"))))
    (properties `((upstream-name . "genvalidity-hspec-hashable")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-genvalidity)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-genvalidity-property)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-hspec-core)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Standard spec's for Hashable instances")
    (description "Standard spec's for Hashable instances")
    (license license:expat)))

haskell-8.8-genvalidity-hspec-hashable

(define-public haskell-8.8-genvalidity-hspec-optics
  (package
    (name "haskell-8.8-genvalidity-hspec-optics")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-optics/genvalidity-hspec-optics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mh9s6q3zii6dpkli4zbmz89wly6bjfalvgs7jh5fvg36wv0c0a8"))))
    (properties `((upstream-name . "genvalidity-hspec-optics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-genvalidity)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-genvalidity-property)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-validity)))
    (home-page "http://cs-syd.eu")
    (synopsis "Standard spec's for lens")
    (description "Standard spec's for lens (van Laarhoven encoding)")
    (license license:expat)))

haskell-8.8-genvalidity-hspec-optics

(define-public haskell-8.8-genvalidity-scientific
  (package
    (name "haskell-8.8-genvalidity-scientific")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-scientific/genvalidity-scientific-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1slcalgm79y7m5albya4n8bwv4721crr19iwvqkdy806rwr67dx9"))))
    (properties `((upstream-name . "genvalidity-scientific") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-genvalidity)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-validity)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-validity-scientific)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for Scientific")
    (description "")
    (license license:expat)))

haskell-8.8-genvalidity-scientific

(define-public haskell-8.8-genvalidity-text
  (package
    (name "haskell-8.8-genvalidity-text")
    (version "0.7.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-text/genvalidity-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0p2g8qffg3ajzvjs5vxz558ch94aqqxjvqddwgy1apcxaa933j9c"))))
    (properties `((upstream-name . "genvalidity-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-genvalidity)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-validity)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-validity-text)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for Text")
    (description "")
    (license license:expat)))

haskell-8.8-genvalidity-text

(define-public haskell-8.8-genvalidity-time
  (package
    (name "haskell-8.8-genvalidity-time")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-time/genvalidity-time-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1za9sgwjm1vlp1q12dj0fmrvph6xcgnalvvjsxqvg9p7p6s9avnw"))))
    (properties `((upstream-name . "genvalidity-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-genvalidity)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-validity-time)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for time")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.8-genvalidity-time

(define-public haskell-8.8-genvalidity-unordered-containers
  (package
    (name "haskell-8.8-genvalidity-unordered-containers")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-unordered-containers/genvalidity-unordered-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11f8j256944c96h1p5av9c2y4czmh7wkdmi70m3y2gd6cz24jgn2"))))
    (properties `((upstream-name . "genvalidity-unordered-containers")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-genvalidity)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-validity)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-validity-unordered-containers)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for unordered-containers")
    (description "")
    (license license:expat)))

haskell-8.8-genvalidity-unordered-containers

(define-public haskell-8.8-genvalidity-uuid
  (package
    (name "haskell-8.8-genvalidity-uuid")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-uuid/genvalidity-uuid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02iln9qvcqmsjljflfrq8jckch8pvsarjb6lx0bkk7j3cw2cgn2r"))))
    (properties `((upstream-name . "genvalidity-uuid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-genvalidity)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-uuid)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-validity)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-validity-uuid)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for UUID")
    (description "")
    (license license:expat)))

haskell-8.8-genvalidity-uuid

(define-public haskell-8.8-genvalidity-vector
  (package
    (name "haskell-8.8-genvalidity-vector")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-vector/genvalidity-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0y3msx28w15zy35x7w4p88xp5s1jy6p4gm3msviciy2swnm79vr0"))))
    (properties `((upstream-name . "genvalidity-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-genvalidity)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-validity)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-validity-vector)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for vector")
    (description "")
    (license license:expat)))

haskell-8.8-genvalidity-vector

(define-public haskell-8.8-greskell
  (package
    (name "haskell-8.8-greskell")
    (version "1.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/greskell/greskell-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1q3m4m994vmfk80szphfd74vzfq6zp678bdla6v4siwqjskagyn3"))))
    (properties `((upstream-name . "greskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-hint-test" "-f-server-test" "-f-server-behavior-test")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-doctest-discover)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-greskell-core)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage007) haskell-8.8-hint)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/debug-ito/greskell/")
    (synopsis "Haskell binding for Gremlin graph query language")
    (description
     "Haskell binding for [Gremlin graph query language](http://tinkerpop.apache.org/gremlin.html).
See [README.md](https://github.com/debug-ito/greskell/blob/master/README.md) for detail.

This package is the main entry point of greskell family.
It re-exports [greskell-core](http://hackage.haskell.org/package/greskell-core) package,
and adds some useful functions to it.")
    (license license:bsd-3)))

haskell-8.8-greskell

(define-public haskell-8.8-greskell-websocket
  (package
    (name "haskell-8.8-greskell-websocket")
    (version "0.1.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/greskell-websocket/greskell-websocket-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ybrfr4jj2bm8bdi1yr1j1nvfws64yi54gji4mrw46vrpqnsbbn0"))))
    (properties `((upstream-name . "greskell-websocket") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-server-test")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-greskell-core)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hashtables)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-uuid)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-websockets)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/debug-ito/greskell/")
    (synopsis "Haskell client for Gremlin Server using WebSocket serializer")
    (description
     "Haskell client for [Gremlin Server](http://tinkerpop.apache.org/docs/current/reference/#gremlin-server) using WebSocket serializer.
See [README.md](https://github.com/debug-ito/greskell/blob/master/README.md) for detail.

This package is based on [greskell-core](http://hackage.haskell.org/package/greskell-core),
and best used with [greskell](http://hackage.haskell.org/package/greskell) package.")
    (license license:bsd-3)))

haskell-8.8-greskell-websocket

(define-public haskell-8.8-hw-fingertree
  (package
    (name "haskell-8.8-hw-fingertree")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-fingertree/hw-fingertree-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0b1aff5aa9ifapyf2qvqggxfm36x5w7l7c37bfy9qdll264pdh0i"))))
    (properties `((upstream-name . "hw-fingertree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0hg9hnga0d15a5md67q7xl53kgp34hwvl4aw9s8xkjm4fs7a54z9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-doctest-discover)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-hw-prim)))
    (home-page "https://github.com/haskell-works/hw-fingertree#readme")
    (synopsis "Generic finger-tree structure, with example instances")
    (description
     "A general sequence representation with arbitrary
annotations, for use as a base for implementations of
various collection types, with examples, as described
in section 4 of

* Ralf Hinze and Ross Paterson,
\\\"Finger trees: a simple general-purpose data structure\\\",
/Journal of Functional Programming/ 16:2 (2006) pp 197-217.
<http://staff.city.ac.uk/~ross/papers/FingerTree.html>

For a tuned sequence type, see @@Data.Sequence@@ in the
@@containers@@ package, which is a specialization of
this structure.")
    (license license:bsd-3)))

haskell-8.8-hw-fingertree

(define-public haskell-8.8-hw-fingertree-strict
  (package
    (name "haskell-8.8-hw-fingertree-strict")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-fingertree-strict/hw-fingertree-strict-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zhh694m8hbin7059ys8c6sqjvyfsazcsp0jxqg59w5ypqjznzca"))))
    (properties `((upstream-name . "hw-fingertree-strict") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0vr8xqvwihg3j83bqfhcqlnlpdq7k2v6kkx1xly7fdjw2hcwgkhl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-doctest-discover)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-test-framework)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-quickcheck2)))
    (home-page "https://github.com/haskell-works/hw-fingertree-strict#readme")
    (synopsis "Generic strict finger-tree structure")
    (description
     "A general sequence representation with arbitrary
annotations, for use as a base for implementations of
various collection types, with examples, as described
in section 4 of

* Ralf Hinze and Ross Paterson,
\\\"Finger trees: a simple general-purpose data structure\\\",
/Journal of Functional Programming/ 16:2 (2006) pp 197-217.
<http://staff.city.ac.uk/~ross/papers/FingerTree.html>

For a tuned sequence type, see @@Data.Sequence@@ in the
@@containers@@ package, which is a specialization of
this structure.")
    (license license:bsd-3)))

haskell-8.8-hw-fingertree-strict

(define-public haskell-8.8-hw-parser
  (package
    (name "haskell-8.8-hw-parser")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-parser/hw-parser-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1zsbw725mw3fn4814qricqanbvx1kgbnqvgwijqgfv8jz7yf5gxa"))))
    (properties `((upstream-name . "hw-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "1kiak3rgwd62xs2a6lwg638jk45i172i6cja3xjxx8ph15aaq1p7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-doctest-discover)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-hw-prim)))
    (home-page "http://github.com/haskell-works/hw-parser#readme")
    (synopsis "Simple parser support")
    (description "Simple parser support. Please see README.md")
    (license license:bsd-3)))

haskell-8.8-hw-parser

(define-public haskell-8.8-idris
  (package
    (name "haskell-8.8-idris")
    (version "1.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/idris/idris-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1pachwc6msw3n1mz2z1r1w6h518w9gbhdvbaa5vi1qp3cn3wm6q4"))))
    (properties `((upstream-name . "idris") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-ffi" "-f-gmp" "-frelease" "-f-freestanding" "-f-ci" "-f-execonly")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-annotated-wl-pprint)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-blaze-html)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-blaze-markup)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-cheapskate)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-code-page)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-fingertree)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-fsnotify)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-haskeline)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-ieee754)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-parser-combinators)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-terminal-size)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-uniplate)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-vector-binary-instances)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-zip-archive)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://www.idris-lang.org/")
    (synopsis "Functional Programming Language with Dependent Types")
    (description
     "Idris is a general purpose language with full dependent types.
It is compiled, with eager evaluation.
Dependent types allow types to be predicated on values,
meaning that some aspects of a program's behaviour can be
specified precisely in the type. The language is closely
related to Epigram and Agda. There is a tutorial at
<https://www.idris-lang.org/documentation>.
Features include:

* Full, first class, dependent types with dependent pattern matching

* where clauses, with rule, case expressions,
pattern matching let and lambda bindings

* Interfaces (similar to type classes), monad comprehensions

* do notation, idiom brackets, syntactic conveniences for lists,
tuples, dependent pairs

* Totality checking

* Coinductive types

* Indentation significant syntax, extensible syntax

* Cumulative universes

* Simple foreign function interface (to C)

* Hugs style interactive environment")
    (license license:bsd-3)))

haskell-8.8-idris

(define-public haskell-8.8-little-logger
  (package
    (name "haskell-8.8-little-logger")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/little-logger/little-logger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ibcvcjh5wfdzi2p30dy7q1n6ac34mjckybmp8cn0xwyf9zs9zlw"))))
    (properties `((upstream-name . "little-logger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-co-log)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-co-log-core)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)))
    (home-page "https://github.com/ejconlon/little-logger#readme")
    (synopsis "Basic logging based on co-log")
    (description
     "Please see the README on GitHub at <https://github.com/ejconlon/little-logger#readme>")
    (license license:bsd-3)))

haskell-8.8-little-logger

(define-public haskell-8.8-lucid
  (package
    (name "haskell-8.8-lucid")
    (version "2.9.12")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lucid/lucid-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "156wniydd1hlb7rygbm95zln8ky8lai8rn2apkkv0rax9cdw6jrh"))))
    (properties `((upstream-name . "lucid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "02cfv2r4hfcpq6j2a0jca5ralcl70wvahm62w9pi2xb1548ifrrj")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-mmorph)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://github.com/chrisdone/lucid")
    (synopsis "Clear to write, read and edit DSL for HTML")
    (description
     "Clear to write, read and edit DSL for HTML.

* Names are consistent, and do not conflict with base or are keywords (all have suffix @@_@@)

* Same combinator can be used for attributes and elements (e.g. 'style_')

* For more, read <https://chrisdone.com/posts/lucid the blog post>

See the \"Lucid\" module for more documentation.")
    (license license:bsd-3)))

haskell-8.8-lucid

(define-public haskell-8.8-nagios-check
  (package
    (name "haskell-8.8-nagios-check")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)))
    (home-page "https://github.com/olorin/haskell-nagios-check")
    (synopsis "Package for writing monitoring plugins")
    (description "Implements Nagios plugin development guidelines
within a Haskell framework for writing Nagios
checks.")
    (license license:expat)))

haskell-8.8-nagios-check

(define-public haskell-8.8-o-clock
  (package
    (name "haskell-8.8-o-clock")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/o-clock/o-clock-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "15lad2rjnam0b1ny5zccd0ir3q4i559y28r93sqkws4j74mx8b4c"))))
    (properties `((upstream-name . "o-clock") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-aeson" "-f-hashable" "-f-deepseq" "-f-serialise" "-f-bench-buildable")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages check) doctest)
                  (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-Glob)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-tasty-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-type-spec)))
    (home-page "https://github.com/serokell/o-clock")
    (synopsis "Type-safe time library.")
    (description "See README.md for details.")
    (license license:expat)))

haskell-8.8-o-clock

(define-public haskell-8.8-ormolu
  (package
    (name "haskell-8.8-ormolu")
    (version "0.1.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ormolu/ormolu-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1aamgzimjn9h7kwby9ajfgbj5dx08nmxyalwvpg9rs4xd8pbpd9s"))))
    (properties `((upstream-name . "ormolu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "1fi8fxyhw9jdwhsbmrikjqd461wrz7h4kdszrahlvdjfdsn4wh7d")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-Diff)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-dlist)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ghc-lib-parser)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-gitrev)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage009) haskell-8.8-path)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-path-io)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-syb)))
    (home-page "https://github.com/tweag/ormolu")
    (synopsis "A formatter for Haskell source code")
    (description "A formatter for Haskell source code.")
    (license license:bsd-3)))

haskell-8.8-ormolu

(define-public haskell-8.8-pkcs10
  (package
    (name "haskell-8.8-pkcs10")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pkcs10/pkcs10-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "15328w93rbpxx1wz3agw0271gxcy1ykgr6lcwkqcgi5scwzr4vl9"))))
    (properties `((upstream-name . "pkcs10") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-asn1-parse)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-asn1-types)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-pem)
                  (@ (gnu packages stackage ghc-8.8 stage010) haskell-8.8-x509)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/fcomb/pkcs10-hs#readme")
    (synopsis "PKCS#10 library")
    (description "Please see README.md")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-pkcs10

(define-public haskell-8.8-profunctors
  (package
    (name "haskell-8.8-profunctors")
    (version "5.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/profunctors/profunctors-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0z5gk2ip4x2z0jad9lnsnq1q1i8bbgchw3bwgiy3gbmgp2m7j5az"))))
    (properties `((upstream-name . "profunctors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0b73nqyl3yc3q4r0asrciqx7q19y6ygfszb79kn37pndnzj4m0hd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-orphans)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-comonad)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-contravariant)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-distributive)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)))
    (home-page "http://github.com/ekmett/profunctors/")
    (synopsis "Profunctors")
    (description "Profunctors.")
    (license license:bsd-3)))

haskell-8.8-profunctors

(define-public haskell-8.8-quickcheck-classes-base
  (package
    (name "haskell-8.8-quickcheck-classes-base")
    (version "0.6.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-classes-base/quickcheck-classes-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yzljsy74njmbav90hgraxhjx0l86zggakfw0j3k7maz9376jvax"))))
    (properties `((upstream-name . "quickcheck-classes-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-funary-laws" "-fbinary-laws")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-orphans)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-contravariant)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-fail)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)))
    (home-page "https://github.com/andrewthad/quickcheck-classes#readme")
    (synopsis "QuickCheck common typeclasses from `base`")
    (description
     "This libary is a minimal variant of `quickcheck-classes` that
only provides laws for typeclasses from `base`. The main purpose
of splitting this out is so that `primitive` can depend on
`quickcheck-classes-base` in its test suite, avoiding the circular
dependency that arises if `quickcheck-classes` is used instead.

This library provides QuickCheck properties to ensure
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

haskell-8.8-quickcheck-classes-base

(define-public haskell-8.8-retry
  (package
    (name "haskell-8.8-retry")
    (version "0.8.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/retry/retry-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0nwyis42xpmxfw8nz8qn59r3v7q0dkfzkzkhllgn30cdjbbmwhf5"))))
    (properties `((upstream-name . "retry") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (home-page "http://github.com/Soostone/retry")
    (synopsis "Retry combinators for monadic actions that may fail")
    (description
     "This package exposes combinators that can wrap arbitrary
monadic actions. They run the action and potentially retry
running it with some configurable delay for a configurable
number of times.
The purpose is to make it easier to work with IO and
especially network IO actions that often experience temporary
failure and warrant retrying of the original action. For
example, a database query may time out for a while, in which
case we should hang back for a bit and retry the query instead
of simply raising an exception.")
    (license license:bsd-3)))

haskell-8.8-retry

(define-public haskell-8.8-scheduler
  (package
    (name "haskell-8.8-scheduler")
    (version "1.4.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/scheduler/scheduler-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0xf5gmla5h0k0a84f7b5xyk98xr72a9mygjlg5c913vc29i31ccx"))))
    (properties `((upstream-name . "scheduler") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-atomic-primops)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-mwc-random)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-unliftio)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/lehins/haskell-scheduler")
    (synopsis "Work stealing scheduler.")
    (description
     "A work stealing scheduler that is primarily developed for [massiv](https://github.com/lehins/massiv) array library, but it is general enough to be useful for any computation that fits the model of few workers and many jobs.")
    (license license:bsd-3)))

haskell-8.8-scheduler

(define-public haskell-8.8-semigroupoids
  (package
    (name "haskell-8.8-semigroupoids")
    (version "5.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/semigroupoids/semigroupoids-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0r49qpbi803jk3v4i09jr1a98l6hcgnjhrv1a9fhmay3ff4y9lh0"))))
    (properties `((upstream-name . "semigroupoids") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fcontainers" "-fcontravariant" "-fdistributive" "-fdoctests" "-fcomonad" "-ftagged" "-funordered-containers")
       #:cabal-revision
       ("3" "0kmhy0qcqyaqh0b9ca2fs811a3r761i857nmrcczb5nnb9556nrq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-orphans)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-comonad)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-contravariant)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-distributive)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
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

Ideally the following relationships would hold:

> Foldable ----> Traversable <--- Functor ------> Alt ---------> Plus           Semigroupoid
>      |               |            |                              |                  |
>      v               v            v                              v                  v
> Foldable1 ---> Traversable1     Apply --------> Applicative -> Alternative      Category
>                                   |               |              |                  |
>                                   v               v              v                  v
>                                 Bind ---------> Monad -------> MonadPlus          Arrow
>

Apply, Bind, and Extend (not shown) give rise the Static, Kleisli and Cokleisli semigroupoids respectively.

This lets us remove many of the restrictions from various monad transformers
as in many cases the binding operation or @@\\<*\\>@@ operation does not require them.

Finally, to work with these weaker structures it is beneficial to have containers
that can provide stronger guarantees about their contents, so versions of 'Traversable'
and 'Foldable' that can be folded with just a 'Semigroup' are added.")
    (license license:bsd-3)))

haskell-8.8-semigroupoids

(define-public haskell-8.8-ses-html
  (package
    (name "haskell-8.8-ses-html")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ses-html/ses-html-" version
                    ".tar.gz"))
              (sha256
               (base32
                "13x0m3i8gs0rapshniwxhzwz0311fzan7k87s6ink3jk7gh6xxyg"))))
    (properties `((upstream-name . "ses-html") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-HsOpenSSL)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-blaze-html)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-byteable)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-cryptohash)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-http-streams)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-tagsoup)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/ses-html")
    (synopsis
     "Send HTML formatted emails using Amazon's SES REST API with blaze")
    (description
     "Send html emails using Amazon's Simple Email Service and Blaze Templating in Haskell")
    (license license:bsd-3)))

haskell-8.8-ses-html

(define-public haskell-8.8-smash
  (package
    (name "haskell-8.8-smash")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/smash/smash-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1vr6zc8mw2w510vcs3m8ngqbdscxywiqimvqs8jimjfyi86g30rb"))))
    (properties `((upstream-name . "smash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1p43gdh5d3vm5zx4mdi3zfka5i0zx332454aia4r7zrqs2x82csr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)))
    (home-page "https://github.com/emilypi/smash")
    (synopsis "Combinators for Maybe types")
    (description
     "This package provides the calculus for pointed types, including the pointed
product, Can, the pointed coproduct, Wedge, and the smash product.")
    (license license:bsd-3)))

haskell-8.8-smash

(define-public haskell-8.8-snap-server
  (package
    (name "haskell-8.8-snap-server")
    (version "1.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/snap-server/snap-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0w4yv9a5ilpma0335ariwap2iscmdbaaif88lq3cm7px910nyc4j"))))
    (properties `((upstream-name . "snap-server") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-portable" "-f-openssl" "-f-build-pong" "-f-build-testserver" "-f-debug")
       #:cabal-revision
       ("2" "0dzsn3y7jnha1jbp0n5igjrg4cb8kggps798rlix60d66iy8r1l2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-clock)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-http-common)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-http-streams)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-io-streams)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-io-streams-haproxy)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-lifted-base)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-old-locale)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-parallel)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-snap-core)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-test-framework)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-threads)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unix-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://snapframework.com/")
    (synopsis "A web server for the Snap Framework")
    (description
     "Snap is a simple and fast web development framework and server written in
Haskell. For more information or to download the latest version, you can
visit the Snap project website at <http://snapframework.com/>.

The Snap HTTP server is a high performance web server library written in
Haskell. Together with the @@snap-core@@ library upon which it depends, it
provides a clean and efficient Haskell programming interface to the HTTP
protocol.")
    (license license:bsd-3)))

haskell-8.8-snap-server

(define-public haskell-8.8-starter
  (package
    (name "haskell-8.8-starter")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/starter/starter-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "14rxrs1gjsm26m7rk4rj9b2389zca0j24kjl7sfznqpxgk99qmpx"))))
    (properties `((upstream-name . "starter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-fsnotify)))
    (home-page "https://github.com/rkaippully/starter#readme")
    (synopsis "Develop applications without restarts")
    (description
     "Please see the README on Github at <https://github.com/rkaippully/starter#readme>")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-starter

(define-public haskell-8.8-strict-tuple
  (package
    (name "haskell-8.8-strict-tuple")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/strict-tuple/strict-tuple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06fyf58kl3c5xpfdd5h7368ggbfadm5n67h3kqajrsgh3yl84hrq"))))
    (properties `((upstream-name . "strict-tuple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "127byff30qm6vfnpdb2jfhag6dfv8zz306hkdnlkryx4gf5aab86")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)))
    (home-page "https://github.com/mitchellwrosen/strict-tuple")
    (synopsis "Strict tuples")
    (description "Strict tuples.")
    (license license:bsd-3)))

haskell-8.8-strict-tuple

(define-public haskell-8.8-tidal
  (package
    (name "haskell-8.8-tidal")
    (version "1.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tidal/tidal-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "03y1hfwc5frbqhcwvvfr6ykas0sy6pw982sgdgkvd3l0wbmnhdrz"))))
    (properties `((upstream-name . "tidal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-clock)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-colour)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-hosc)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-microspec)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "http://tidalcycles.org/")
    (synopsis "Pattern language for improvised music")
    (description
     "Tidal is a domain specific language for live coding pattern.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-tidal

(define-public haskell-8.8-universum
  (package
    (name "haskell-8.8-universum")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universum/universum-" version
                    ".tar.gz"))
              (sha256
               (base32
                "007nh8kw5a2m681bjwvcdjdf69nb768kwdsckj2kdd7406mfgdm7"))))
    (properties `((upstream-name . "universum") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-Glob)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-microlens-mtl)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/serokell/universum")
    (synopsis "Custom prelude used in Serokell")
    (description "See README.md file for more details.")
    (license license:expat)))

haskell-8.8-universum

(define-public haskell-8.8-uri-bytestring
  (package
    (name "haskell-8.8-uri-bytestring")
    (version "0.3.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uri-bytestring/uri-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zpynqz2q29cfk77n0d6lrnzmrqqi5nijvqd2pkz2fax3s6qhysz"))))
    (properties `((upstream-name . "uri-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-th-lift-instances)))
    (home-page "https://github.com/Soostone/uri-bytestring")
    (synopsis "Haskell URI parsing as ByteStrings")
    (description
     "uri-bytestring aims to be an RFC3986 compliant URI parser that uses efficient ByteStrings for parsing and representing the URI data.")
    (license license:bsd-3)))

haskell-8.8-uri-bytestring

(define-public haskell-8.8-validation-selective
  (package
    (name "haskell-8.8-validation-selective")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validation-selective/validation-selective-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ia3g2c1137pa0ns97yf8vbfvwmjhqnqhzn9lzgxvxwzchvwpnf7"))))
    (properties `((upstream-name . "validation-selective") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "19pcv1i7xcrgg248dbgyl83zx3gn9zilrxqs3arlmkwdi0jdj4nv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-selective)))
    (home-page "https://github.com/kowainik/validation-selective")
    (synopsis
     "Lighweight pure data validation based on Applicative and Selective functors")
    (description
     "Lighweight pure data validation based on Applicative and Selective
functors. The library builds validation interface around the
following data type:

@@
__data__ Validation e a
\\    = Failure e
\\    | Success a
@@
")
    (license license:mpl2.0)))

haskell-8.8-validation-selective

(define-public haskell-8.8-validity-path
  (package
    (name "haskell-8.8-validity-path")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-path/validity-path-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00p02jgqp5x34yjshylbalsbi44ksdywwjf5c8fwbqjkykwx98px"))))
    (properties `((upstream-name . "validity-path") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage009) haskell-8.8-path)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for Path")
    (description "")
    (license license:expat)))

haskell-8.8-validity-path

(define-public haskell-8.8-with-utf8
  (package
    (name "haskell-8.8-with-utf8")
    (version "1.0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/with-utf8/with-utf8-" version
                    ".tar.gz"))
              (sha256
               (base32
                "13zifhmhpdfwifw9bwyn9w5a29iph7h59jx13r0wiw5ry0g7qbif"))))
    (properties `((upstream-name . "with-utf8") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-discover)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-temporary)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-th-env)))
    (home-page "https://github.com/serokell/haskell-with-utf8#readme")
    (synopsis "Get your IO right on the first try")
    (description
     "This minimalistic library helps you navigate the world of text encodings
avoiding @@invalid argument (invalid byte sequence)@@
and @@invalid argument (invalid character)@@ in runtime.

The two most important modules are:

* \"Main.Utf8\"
* \"System.IO.Utf8\"

See <https://serokell.io/blog/haskell-with-utf8 this blog post> for why this
library exists and what exactly it does.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-with-utf8

(define-public haskell-8.8-x509-store
  (package
    (name "haskell-8.8-x509-store")
    (version "1.6.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/x509-store/x509-store-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1y8yyr1i95jkllg8k0z54k5v4vachp848clc07m33xpxidn3b1lp"))))
    (properties `((upstream-name . "x509-store") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "04h2h8kdzhd2fp3w4a834xc1n88b1jgrxlgcsynfn0iwpbsb41x7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-asn1-types)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-pem)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage010) haskell-8.8-x509)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/vincenthz/hs-certificate")
    (synopsis "X.509 collection accessing and storing methods")
    (description
     "X.509 collection accessing and storing methods for certificate, crl, exception list")
    (license license:bsd-3)))

haskell-8.8-x509-store

