;;; generated file
(define-module (gnu packages stackage ghc-9.4 stage018)
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
(define-public haskell-9.4-Allure
  (package
    (name "haskell-9.4-Allure")
    (version "0.11.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Allure/Allure-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1mmnn86azcpig1j61mwks2z227sw70lc7hsmi342hprabrccq9b1"))))
    (properties `((upstream-name . "Allure") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-with_expensive_assertions" "-fwith_costly_optimizations" "-frelease" "-fsupportnodejs")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-LambdaHack)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-enummapset)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-file-embed)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hsini)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-splitmix)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-th-lift-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages sdl) sdl2)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://allureofthestars.com")
    (synopsis "Near-future Sci-Fi roguelike and tactical squad combat game")
    (description
     "Allure of the Stars is a near-future Sci-Fi roguelike
and tactical squad combat game. Binaries and the game manual
are available at the homepage. You can also try the game out
in the browser at <http://allureofthestars.com/play>.

Not a single image in this game. You have to imagine everything
yourself, like with a book (a grown-up book, without pictures).
Once you learn to imagine things, though, you can keep exploring
and mastering the world and making up stories for a long time.

The game is written in Haskell using the LambdaHack roguelike
game engine <http://hackage.haskell.org/package/LambdaHack>.
Please see the changelog file for recent improvements
and the issue tracker for short-term plans. Long term goals
are high replayability and auto-balancing through procedural
content generation and persistent content modification
based on player behaviour. Contributions are welcome.

This is a workaround .cabal file, flattened to eliminate
internal libraries until generating haddocks for them
is fixed. The original .cabal file is in .cabal.bkp file.")
    (license license:agpl3+)))

haskell-9.4-Allure

(define-public haskell-9.4-HasBigDecimal
  (package
    (name "haskell-9.4-HasBigDecimal")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HasBigDecimal/HasBigDecimal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "182hdsbl3adldkix6m4dv7fn2cjvvjjx76hwdmd0j0bh4h7y61yi"))))
    (properties `((upstream-name . "HasBigDecimal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-criterion)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/thma/HasBigDecimal#readme")
    (synopsis "A library for arbitrary precision decimal numbers.")
    (description
     "Please see the README on GitHub at <https://github.com/thma/HasBigDecimal#readme>")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.4-HasBigDecimal

(define-public haskell-9.4-auto-update
  (package
    (name "haskell-9.4-auto-update")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/auto-update/auto-update-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1i36xc2i34aync8271x3pv515l3zb53i518dybn8ghqkhzf27q7l"))))
    (properties `((upstream-name . "auto-update") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-retry)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/yesodweb/wai")
    (synopsis "Efficiently run periodic, on-demand actions")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/auto-update>.")
    (license license:expat)))

haskell-9.4-auto-update

(define-public haskell-9.4-buffer-builder
  (package
    (name "haskell-9.4-buffer-builder")
    (version "0.2.4.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/buffer-builder/buffer-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14l70h4j1dmhm96fsxg1mhiw00h9jqw0wy02v31lsz0jwpdr2513"))))
    (properties `((upstream-name . "buffer-builder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-HTF)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-criterion)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/chadaustin/buffer-builder")
    (synopsis
     "Library for efficiently building up buffers, one piece at a time")
    (description
     "\"Data.BufferBuilder\" is an efficient library for incrementally building
up 'ByteString's, one chunk at a time.  Early benchmarks show it
is over twice as fast as ByteString Builder, primarily because
'BufferBuilder' is built upon an ST-style restricted monad and
mutable state instead of ByteString Builder's monoidal AST.

Internally, BufferBuilder is backed by a few C functions.
Examination of GHC's output shows nearly optimal code generation
with no intermediate thunks -- and thus, continuation passing and
its associated indirect jumps and stack traffic only occur when
BufferBuilder is asked to append a non-strict ByteString.

I benchmarked four approaches with a URL encoding benchmark:

* State monad, concatenating ByteStrings: 6.98 us

* State monad, ByteString Builder: 2.48 us

* Crazy explicit RealWorld baton passing with unboxed state: 28.94 us (GHC generated really awful code for this, but see the revision history for the technique)

* C + FFI + ReaderT: 1.11 us

Using BufferBuilder is very simple:

> import qualified Data.BufferBuilder as BB
>
> let byteString = BB.runBufferBuilder $ do
>       BB.appendBS \"http\"
>       BB.appendChar8 '/'
>       BB.appendBS \"//\"

This package also provides \"Data.BufferBuilder.Utf8\" for generating UTF-8 buffers
and \"Data.BufferBuilder.Json\" for encoding data structures into JSON.")
    (license license:bsd-3)))

haskell-9.4-buffer-builder

(define-public haskell-9.4-bytehash
  (package
    (name "haskell-9.4-bytehash")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bytehash/bytehash-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1jc8fz8rv7072is0srcp730ff37xkb68xl6s6yssba4anxc8s5nm"))))
    (properties `((upstream-name . "bytehash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0b840m5ykjgqzxd8sfzjgbs86qm87lzcf477xnl8zlmf11yhjyqg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-byte-order)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-byteslice)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-entropy)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-primitive-unlifted)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/andrewthad/bytehash")
    (synopsis "Universal hashing of bytes")
    (description
     "Taken together, universal hash functions and a good source of entropy
provide a foundation for hash maps guarantee O(1) lookups even if an
adversary chooses the keys. This library implements such a hash map.
The implementation of lookup is tuned for performance. The functions
for building hash maps are not since they are intended to be called
infrequently.")
    (license license:bsd-3)))

haskell-9.4-bytehash

(define-public haskell-9.4-classy-prelude-conduit
  (package
    (name "haskell-9.4-classy-prelude-conduit")
    (version "1.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/classy-prelude-conduit/classy-prelude-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "007xz0yzp0bzbrx7arj7xmjlwrja120kwgxrbkm98sydjlsph9ys"))))
    (properties `((upstream-name . "classy-prelude-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-classy-prelude)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis "classy-prelude together with conduit functions")
    (description
     "See docs and README at <http://www.stackage.org/package/classy-prelude-conduit>")
    (license license:expat)))

haskell-9.4-classy-prelude-conduit

(define-public haskell-9.4-conduit-aeson
  (package
    (name "haskell-9.4-conduit-aeson")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduit-aeson/conduit-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jam2d4kk1pky9d88afl467a7sf5q46079cpfx9g2mjx7nc6x6zn"))))
    (properties `((upstream-name . "conduit-aeson") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/lehins/conduit-aeson")
    (synopsis "Short description")
    (description
     "Please see the README on GitHub at <https://github.com/lehins/conduit-aeson#readme>")
    (license license:bsd-3)))

haskell-9.4-conduit-aeson

(define-public haskell-9.4-conduit-zstd
  (package
    (name "haskell-9.4-conduit-zstd")
    (version "0.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduit-zstd/conduit-zstd-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0f0ir4zs3skw33c8mfppxhfsyqh1c2cnc4gkf8bvv3bdiikdj1yl"))))
    (properties `((upstream-name . "conduit-zstd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-zstd)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/luispedro/conduit-zstd#readme")
    (synopsis "Conduit-based ZStd Compression")
    (description
     "Zstandard compression packaged as a conduit. This is a very thin wrapper around the [official hs-zstd interface](https://github.com/facebookexperimental/hs-zstd/)")
    (license license:expat)))

haskell-9.4-conduit-zstd

(define-public haskell-9.4-cryptonite-conduit
  (package
    (name "haskell-9.4-cryptonite-conduit")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cryptonite-conduit/cryptonite-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bldcmda4xh52mw1wfrjljv8crhw3al7v7kv1j0vidvr7ymnjpbh"))))
    (properties `((upstream-name . "cryptonite-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1hh2nzfz4qpxgivfilgk4ll416lph8b2fdkzpzrmqfjglivydfmz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-crypto/cryptonite-conduit")
    (synopsis "cryptonite conduit")
    (description "Conduit bridge for cryptonite

For now only provide a conduit version for hash and hmac, but
with contribution, this could provide cipher conduits too,
and probably other things.")
    (license license:bsd-3)))

haskell-9.4-cryptonite-conduit

(define-public haskell-9.4-csv-conduit
  (package
    (name "haskell-9.4-csv-conduit")
    (version "0.7.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/csv-conduit/csv-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xh11h4qibjcv8b0rk5mwdzww183kpjqzl3x22rbfryjvrp0n07w"))))
    (properties `((upstream-name . "csv-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")
       #:cabal-revision
       ("1" "18dad4w8i2jma39flmzrjpxjvnkzcb8fnhxm67rl9iv3b6ip86ng")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-mmorph)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-ordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/ozataman/csv-conduit")
    (synopsis
     "A flexible, fast, conduit-based CSV parser library for Haskell.")
    (description
     "CSV files are the de-facto standard in many situations involving data transfer,
particularly when dealing with enterprise application or disparate database
systems.

While there are a number of CSV libraries in Haskell, at the time of this
project's start in 2010, there wasn't one that provided all of the following:

* Full flexibility in quote characters, separators, input/output

* Constant space operation

* Robust parsing, correctness and error resiliency

* Convenient interface that supports a variety of use cases

* Fast operation

This library is an attempt to close these gaps. Please note that
this library started its life based on the enumerator package and
has recently been ported to work with conduits instead. In the
process, it has been greatly simplified thanks to the modular nature
of the conduits library.

Following the port to conduits, the library has also gained the
ability to parameterize on the stream type and work both with
ByteString and Text.

For more documentation and examples, check out the README at:

<http://github.com/ozataman/csv-conduit>
")
    (license license:bsd-3)))

haskell-9.4-csv-conduit

(define-public haskell-9.4-cursor-brick
  (package
    (name "haskell-9.4-cursor-brick")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cursor-brick/cursor-brick-"
                    version ".tar.gz"))
              (sha256
               (base32
                "108pmv6f8y3szrh3n96dyl7hsfr6qim8axikf82dgs1fd2nx61vw"))))
    (properties `((upstream-name . "cursor-brick") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-brick)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-cursor)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/cursor-brick#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/NorfairKing/cursor-brick#readme>")
    (license license:expat)))

haskell-9.4-cursor-brick

(define-public haskell-9.4-deque
  (package
    (name "haskell-9.4-deque")
    (version "0.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/deque/deque-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1x0rjdqgf4kwgpyisx618waz6r9gki3ivav9m4biysyc04hdhinn"))))
    (properties `((upstream-name . "deque") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-rerebase)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-strict-list)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/deque")
    (synopsis "Double-ended queues")
    (description
     "Strict and lazy implementations of Double-Ended Queue (aka Dequeue or Deque)
based on head-tail linked list.")
    (license license:expat)))

haskell-9.4-deque

(define-public haskell-9.4-diagrams
  (package
    (name "haskell-9.4-diagrams")
    (version "1.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams/diagrams-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1y3yij2k2bpvmfxykr2s0hadbcprl1yi6z3pz4yjzqkib5s7y1mq"))))
    (properties `((upstream-name . "diagrams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags
       (list "-f-cairo" "-f-gtk" "-fsvg" "-f-ps" "-f-postscript" "-f-rasterific" "-f-canvas")))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-diagrams-contrib)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-diagrams-core)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-diagrams-lib)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-diagrams-svg)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://diagrams.github.io")
    (synopsis
     "Embedded domain-specific language for declarative vector graphics")
    (description
     "Diagrams is a full-featured framework and embedded domain-specific langauge for creating
declarative vector graphics and animations.

This package is just a convenient wrapper
around the @@diagrams-core@@, @@diagrams-lib@@ and
@@diagrams-contrib@@ packages, so they can be
installed with a single @@cabal install diagrams@@
command.

The package also comes with flags to enable six
different backends.
A Haskell-native SVG
backend (the @@diagrams-svg@@ package)
can be selected with @@-fsvg@@. This
flag is enabled by default, so if you do /not/
want the SVG backend, you must explicitly
disable it with @@-f-svg@@.  The SVG backend does not
yet quite support all the features of the cairo
backend: text alignment and embedded images are
the two main missing features at this point, and
of course it can only produce SVG images. It is,
however, much easier to install, so it is the
out-of-the-box default.

There is also a cairo backend (the
@@diagrams-cairo@@ package) which can be selected
with the @@-fcairo@@ flag. It is fully-featured and
can produce PNG, PS, PDF, SVG, or animated
GIF output; however,
due to its dependencies it can be difficult to
install on some platforms (notably OS X).

In addition, there is a GTK backend based on the
cairo backend, for rendering diagrams directly to
GTK windows. You can enable it with the @@-fgtk@@ flag.

The Haskell-native postscript
backend (the @@diagrams-postscript@@ package)
can be selected with the @@-fpostscript@@ flag.  The only
feature it does not support is transparency.

There is a Rasterific backend which is
also Haskell-native (the @@diagrams-rasterific@@
package) which can be selected with the @@-frasterific@@
flag. This is a fully featured backend with the ability
to produce PNG, JPG, TIFF, BMP and animated GIF output.

Finally there is a Canvas backend, also haskell native,
which can be selected with the @@-fcanvas@@ flag. This
backend allows users to write interactive images onto
their web browsers.

For more information, including a gallery of
examples, tutorial, and user manual, see the
diagrams website:
<http://diagrams.github.io>.  For
help, join the @@#diagrams@@ IRC channel on
Freenode or the mailing list:
<http://groups.google.com/group/diagrams-discuss>.")
    (license license:bsd-3)))

haskell-9.4-diagrams

(define-public haskell-9.4-discrimination
  (package
    (name "haskell-9.4-discrimination")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/discrimination/discrimination-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qq7fs1dsfqgf4969gksqcp3swcx0wbzdh66a89fv78k6y94g0pc"))))
    (properties `((upstream-name . "discrimination") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0mlask4a08z0bkns89857vj96cqdqvdxqf5q7qsa0kpdaqkwrjz9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-contravariant)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-criterion)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-promises)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-splitmix)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-vector-algorithms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/discrimination/")
    (synopsis
     "Fast generic linear-time sorting, joins and container construction.")
    (description
     "This package provides fast, generic, linear-time discrimination and sorting.

The techniques applied are based on <http://www.diku.dk/hjemmesider/ansatte/henglein/papers/henglein2011a.pdf multiple> <http://www.diku.dk/hjemmesider/ansatte/henglein/papers/henglein2011c.pdf papers> and <https://www.youtube.com/watch?v=sz9ZlZIRDAg talks> by <http://www.diku.dk/hjemmesider/ansatte/henglein/ Fritz Henglein>.")
    (license license:bsd-3)))

haskell-9.4-discrimination

(define-public haskell-9.4-domain-core
  (package
    (name "haskell-9.4-domain-core")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/domain-core/domain-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wpi5qks29ij8m1s6x3kc66dw706xn28l6vlwfrccqw77603g85a"))))
    (properties `((upstream-name . "domain-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-template-haskell-compat-v0208)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-th-lego)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-th-lift-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/domain-core")
    (synopsis "Low-level API of \"domain\"")
    (description "Use this package for defining extensions to \\\"domain\\\".
Primarily derivers.")
    (license license:expat)))

haskell-9.4-domain-core

(define-public haskell-9.4-editor-open
  (package
    (name "haskell-9.4-editor-open")
    (version "0.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/editor-open/editor-open-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0raj0s8v72kz63hqpqhf58sx0a8mcwi4ania40spjirdrsdx3i9g"))))
    (properties `((upstream-name . "editor-open") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/pharpend/editor-open")
    (synopsis "Open the user's $VISUAL or $EDITOR for text input.")
    (description
     "You know when you run @@git commit@@, and an editor pops open so you can enter a
commit message? This is a Haskell library that does that.

This library isn't very portable. It relies on the @@$EDITOR@@ environment
variable. The concept only exists on *nix systems.

CHANGES

[0.6.0.0] Support less common @@$VISUAL@@. @@vi@@ is the fallback editor now
instead of @@nano@@.

[0.5.0.0] Now use conduits on the backend. Support @@base\\<4.8@@")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.4-editor-open

(define-public haskell-9.4-genvalidity-criterion
  (package
    (name "haskell-9.4-genvalidity-criterion")
    (version "1.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-criterion/genvalidity-criterion-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mjfvnrzfqxv3xkj840sgbx99z5mi2y7cv2vn2z6ra4bs752jhx9"))))
    (properties `((upstream-name . "genvalidity-criterion") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-criterion)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Criterion benchmarks for generators")
    (description "")
    (license license:expat)))

haskell-9.4-genvalidity-criterion

(define-public haskell-9.4-hal
  (package
    (name "haskell-9.4-hal")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hal/hal-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1gdd0nbwm6hma57nw1y1gd0cc6z9zhhmim6l5miql2j6dk909mdv"))))
    (properties `((upstream-name . "hal") (hidden? . #f)))
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
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/Nike-inc/hal#readme")
    (synopsis
     "A runtime environment for Haskell applications running on AWS Lambda.")
    (description
     "This library uniquely supports different types of AWS Lambda Handlers for your
needs/comfort with advanced Haskell. Instead of exposing a single function
that constructs a Lambda, this library exposes many.")
    (license license:bsd-3)))

haskell-9.4-hal

(define-public haskell-9.4-hledger-ui
  (package
    (name "haskell-9.4-hledger-ui")
    (version "1.28")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-ui/hledger-ui-" version
                    ".tar.gz"))
              (sha256
               (base32
                "04jq73ra4gv5q5lj0ivhrabkxkvp278c0sqyv6sa9sks0iwlgm3p"))))
    (properties `((upstream-name . "hledger-ui") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fthreaded")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-brick)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cmdargs)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-doclayout)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-fsnotify)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-hledger)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-hledger-lib)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-microlens-platform)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-text-zipper)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-vty)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://hledger.org")
    (synopsis
     "Curses-style terminal interface for the hledger accounting system")
    (description
     "A simple curses-style terminal user interface for the hledger accounting system.
It can be a more convenient way to browse your accounts than the CLI.
This package currently does not support Microsoft Windows, except in WSL.

hledger is a robust, cross-platform set of tools for tracking money,
time, or any other commodity, using double-entry accounting and a
simple, editable file format, with command-line, terminal and web
interfaces. It is a Haskell rewrite of Ledger, and one of the leading
implementations of Plain Text Accounting. Read more at:
<https://hledger.org>")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-hledger-ui

(define-public haskell-9.4-hw-bits
  (package
    (name "haskell-9.4-hw-bits")
    (version "0.7.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hw-bits/hw-bits-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1swzr6lz2394p454mqvvgx2fyc1gdm4p9qvv54zyjd67mnhylkq8"))))
    (properties `((upstream-name . "hw-bits") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsse42")
       #:cabal-revision
       ("2" "1qv1pcy3sfcvpq3wfvimiv2wyy729yk97hswsrh40hlmrws18k2m")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-bitvec)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-doctest-discover)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-hw-int)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-hw-prim)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-hw-string-parse)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-bits#readme")
    (synopsis "Bit manipulation")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.4-hw-bits

(define-public haskell-9.4-hw-conduit-merges
  (package
    (name "haskell-9.4-hw-conduit-merges")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-conduit-merges/hw-conduit-merges-"
                    version ".tar.gz"))
              (sha256
               (base32
                "042i1cs7qpjs8q8birr6xjzyxp28y7l6isv2fwkisv4agx8kfgm0"))))
    (properties `((upstream-name . "hw-conduit-merges") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0r9vq3ibdbkwxg26ds9dllhkgpbhlrv0i02babjpmd3g1nznp0ms")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-works/hw-conduit-merges#readme")
    (synopsis "Additional merges and joins for Conduit")
    (description
     "Additional merges and joins for Conduit. Please see README.md")
    (license license:bsd-3)))

haskell-9.4-hw-conduit-merges

(define-public haskell-9.4-hw-fingertree
  (package
    (name "haskell-9.4-hw-fingertree")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-fingertree/hw-fingertree-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0aljn5c2gblvrbn1f7iwvcm2fa2dsnl497wb0g8y7rz6jzk7g06f"))))
    (properties `((upstream-name . "hw-fingertree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "00h2vzzncfwyaa0krgsffcmy2gdb0637i9zjdlsz88mdlhynqhp3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-doctest-discover)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-hw-prim)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.4-hw-fingertree

(define-public haskell-9.4-hw-json-simd
  (package
    (name "haskell-9.4-hw-json-simd")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-json-simd/hw-json-simd-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03g2gwmkp6v7b0vf4x8bh4qk91ghr0av5x3c9paj3rp3igycccd6"))))
    (properties `((upstream-name . "hw-json-simd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-avx2" "-f-bmi2" "-fsse42")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage004) haskell-9.4-c2hs)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-doctest-discover)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-hw-prim)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-works/hw-json-simd#readme")
    (synopsis "SIMD-based JSON semi-indexer")
    (description
     "Please see the README on GitHub at <https://github.com/haskell-works/hw-json-simd#readme>")
    (license license:bsd-3)))

haskell-9.4-hw-json-simd

(define-public haskell-9.4-hw-parser
  (package
    (name "haskell-9.4-hw-parser")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-doctest-discover)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-hw-prim)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-parser#readme")
    (synopsis "Simple parser support")
    (description "Simple parser support. Please see README.md")
    (license license:bsd-3)))

haskell-9.4-hw-parser

(define-public haskell-9.4-imagesize-conduit
  (package
    (name "haskell-9.4-imagesize-conduit")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/imagesize-conduit/imagesize-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06dc0453l7n3g05pg118y4smlzkl6p56zazpi4dr41dkg12pii9i"))))
    (properties `((upstream-name . "imagesize-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0p4zmizr01pg3d7gb0q88j1alvvlzbdvzyf1wbgajng68a4g0li9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/silkapp/imagesize-conduit")
    (synopsis "Determine the size of some common image formats.")
    (description
     "Currently supports PNG, GIF, and JPEG. This package provides a Sink that will consume the minimum number of bytes necessary to determine the image dimensions.")
    (license license:bsd-3)))

haskell-9.4-imagesize-conduit

(define-public haskell-9.4-jl
  (package
    (name "haskell-9.4-jl")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/jl/jl-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "15vvn3swjpc5qmdng1fcd8m9nif4qnjmpmxc9hdw5cswzl055lkj"))))
    (properties `((upstream-name . "jl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-optparse-simple)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/chrisdone/jl#readme")
    (synopsis "Functional sed for JSON")
    (description
     "jl (\"JSON lambda\") is a tiny functional language for querying and manipulating JSON.")
    (license license:bsd-3)))

haskell-9.4-jl

(define-public haskell-9.4-jsonifier
  (package
    (name "haskell-9.4-jsonifier")
    (version "0.2.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/jsonifier/jsonifier-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0swv5xmns2qqkmb8wc0f9gsbrs81ghfp8jvq0lr7fgam3cbzaibr"))))
    (properties `((upstream-name . "jsonifier") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-numeric-limits)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-ptr-poker)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-rerebase)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/jsonifier")
    (synopsis "Fast and simple JSON encoding toolkit")
    (description
     "Minimalistic library for encoding JSON directly to strict bytestring,
which is up to 3x faster than \\\"aeson\\\".
.
For introduction, benchmark results and demo please skip to Readme.")
    (license license:expat)))

haskell-9.4-jsonifier

(define-public haskell-9.4-logstash
  (package
    (name "haskell-9.4-logstash")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/logstash/logstash-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17s7529mcvpm7pqjz5d980ra70z41zk0k52l6ps1p1zfi5p4niys"))))
    (properties `((upstream-name . "logstash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-resource-pool)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-retry)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-stm-chans)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-tls)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unbounded-delays)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mbg/logstash#readme")
    (synopsis "Logstash client library for Haskell")
    (description
     "Please see the README on GitHub at <https://github.com/mbg/logstash#readme>")
    (license license:expat)))

haskell-9.4-logstash

(define-public haskell-9.4-lz4-frame-conduit
  (package
    (name "haskell-9.4-lz4-frame-conduit")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lz4-frame-conduit/lz4-frame-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0n07cgdwq2miskgqj354hnjghmp555d7n8b39b00sjigdjzkbala"))))
    (properties `((upstream-name . "lz4-frame-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hsc2hs)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-inline-c)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/nh2/lz4-frame-conduit#readme")
    (synopsis "Conduit implementing the official LZ4 frame streaming format")
    (description
     "Conduit implementing the official LZ4 frame streaming format.
Compatible with the lz4 command line utility.")
    (license license:expat)))

haskell-9.4-lz4-frame-conduit

(define-public haskell-9.4-massiv-io
  (package
    (name "haskell-9.4-massiv-io")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/massiv-io/massiv-io-" version
                    ".tar.gz"))
              (sha256
               (base32
                "121i65nihxrl71mp38fvc8p445v1l35s4jsb5s8l0nh61d4gax2p"))))
    (properties `((upstream-name . "massiv-io") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-Color)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-massiv)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-netpbm)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/lehins/massiv-io")
    (synopsis "Import/export of Image files into massiv Arrays")
    (description
     "This package contains functionality for import/export of arrays
into the real world. For now it only has the ability to read/write
image files in various formats.")
    (license license:bsd-3)))

haskell-9.4-massiv-io

(define-public haskell-9.4-mcmc
  (package
    (name "haskell-9.4-mcmc")
    (version "0.8.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mcmc/mcmc-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "15sdqfq9sfjwkbzwi3qsjg8d59nj44qx3sh3sd9zk3hmc11k8wp4"))))
    (properties `((upstream-name . "mcmc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-ad)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-circular)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-covariance)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-dirichlet)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-hmatrix)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-log-domain)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-math-functions)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-mwc-random)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-parallel)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-splitmix)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-statistics)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-zlib)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/dschrempf/mcmc#readme")
    (synopsis "Sample from a posterior using Markov chain Monte Carlo")
    (description
     "Please see the README on GitHub at <https://github.com/dschrempf/mcmc#readme>")
    (license license:gpl3+)))

haskell-9.4-mcmc

(define-public haskell-9.4-midi-music-box
  (package
    (name "haskell-9.4-midi-music-box")
    (version "0.0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/midi-music-box/midi-music-box-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rnjwis6y0lnyfjxnxqk3zsh78ylccq5v21avb97vybmj0pld1l9"))))
    (properties `((upstream-name . "midi-music-box") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1w595kidg493vnv871ga2xsh94g2f80yxn4k5mlrm0jip45xxi7m")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-diagrams-lib)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-diagrams-postscript)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-event-list)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-midi)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-utility-ht)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hub.darcs.net/thielema/midi-music-box")
    (synopsis "Convert MIDI file to music box punch tape")
    (description
     "Convert MIDI file to music box punch tape for this kind of music box:
<http://www.amazon.de/Spieluhr-Lochstreifen/dp/B001WNZOVO/>

Run it like so:

> midi-music-box --output=song.ps song.mid

@@song.mid@@ is the input file that must be a MIDI file.
@@song.ps@@ is the output file, a PostScript file.
You can print it with a printer or to a PDF document
or convert it to many other formats.
Currently, the output file must always have the @@.ps@@ filename extension.
Other formats could be supported by adding more of the @@diagrams-*@@ packages.
However, this means you have to alter the program.

The program will print the following symbols to the stripe:

* blue dot - correct note that should be punched

* # - this is a semitone and cannot be played accurately
(at least on the type of music box I refered to, above)

* ! - the note is outside the range

In case of notes outside the stripe you have to adapt the offset.
You may write

> midi-music-box --zerokey=72 --output=song.ps song.mid

in order to make the MIDI note with number 72
the left-most note on the stripe.
Default is @@--zerokey=60@@.
The number of notes in an octave is 12.
If you use a zerokey that is a multiple of 12
then white (piano) keys remain white, and black keys remain black,
so to speak.
If zerokey is not a multiple of 12
then white keys may become black an vice versa.
Since the music box type considered here only supports white keys,
I recommend the following:
If the song is in key X major then lookup the MIDI note number for X
and choose X plus or minus a multiple of 12 as zerokey.
If the song has key Y minor, then X=Y+3.

You find executables for MS Windows in two ZIP archives there:

* <http://code.henning-thielemann.de/midi-music-box/midi-music-box.zip>

* <http://code.henning-thielemann.de/midi-music-box/midi-music-box-dll.zip>")
    (license license:bsd-3)))

haskell-9.4-midi-music-box

(define-public haskell-9.4-moss
  (package
    (name "haskell-9.4-moss")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/moss/moss-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1az701j6gx6ra9j6yz4qib7g5irmd5pjcaj9xqmsc4pwljx8yrzs"))))
    (properties `((upstream-name . "moss") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-simple)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-unix-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mbg/moss#readme")
    (synopsis "Haskell client for Moss")
    (description
     "Please see the README on Github at <https://github.com/mbg/moss#readme>")
    (license license:expat)))

haskell-9.4-moss

(define-public haskell-9.4-network-conduit-tls
  (package
    (name "haskell-9.4-network-conduit-tls")
    (version "1.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-conduit-tls/network-conduit-tls-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zxdsf7isv3l2g58vsvi8iwlrgf85v7ksa8636kr6ffycbhn1zgc"))))
    (properties `((upstream-name . "network-conduit-tls") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-connection)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-streaming-commons)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-tls)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/conduit")
    (synopsis "Create TLS-aware network code with conduits")
    (description "Uses the tls package for a pure-Haskell implementation.")
    (license license:expat)))

haskell-9.4-network-conduit-tls

(define-public haskell-9.4-network-wait
  (package
    (name "haskell-9.4-network-wait")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-wait/network-wait-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g3fvpf91q31gbmla9r3zwm8n3r3v4n1dmznjhwc7wssfmk2jdh0"))))
    (properties `((upstream-name . "network-wait") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-postgres" "-f-redis")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-simple)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-retry)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mbg/network-wait#readme")
    (synopsis
     "Lightweight library for waiting on networked services to become available.")
    (description
     "Please see the README on GitHub at <https://github.com/mbg/network-wait#readme>")
    (license license:expat)))

haskell-9.4-network-wait

(define-public haskell-9.4-nvim-hs
  (package
    (name "haskell-9.4-nvim-hs")
    (version "2.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/nvim-hs/nvim-hs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1vgdvcvjyl7dxmvmcljb130gwp806769hks00fj1sqfi953lm9bf"))))
    (properties `((upstream-name . "nvim-hs") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-cereal-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-foreign-store)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-hslogger)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-messagepack)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-path-io)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-streaming-commons)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-template-haskell-compat-v0208)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-time-locale-compat)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-typed-process)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/neovimhaskell/nvim-hs")
    (synopsis "Haskell plugin backend for neovim")
    (description
     "This package provides a plugin provider for neovim. It allows you to write
plugins for one of the great editors of our time in the best programming
language of our time! ;-)

You should find all the documentation you need inside the \"Neovim\" module.
Most other modules are considered internal, so don't be annoyed if using
things from there may break your code!

The following modules may also be of interest and they should not change
their API: \"Neovim.Quickfix\"

If you want to write unit tests that interact with neovim, \"Neovim.Test\"
provides some useful functions for that.

If you are keen to debug /nvim-hs/ or a module you are writing, take a look
at the \"Neovim.Debug\" module.

If you spot any errors or if you have great ideas, feel free to open an issue
on github.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.4-nvim-hs

(define-public haskell-9.4-pager
  (package
    (name "haskell-9.4-pager")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pager/pager-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1wzfsindjxx61nca36hhldy0y33pgagg506ls9ldvrkvl4n4y7iy"))))
    (properties `((upstream-name . "pager") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/pharpend/pager")
    (synopsis "Open up a pager, like 'less' or 'more'")
    (description
     "This opens up the user's $PAGER. On Linux, this is usually called @@less@@. On
the various BSDs, this is usually @@more@@.

CHANGES

[0.1.1.0] Add @@printOrPage@@ function and @@sendToPagerStrict@@ function.")
    (license license:bsd-2)))

haskell-9.4-pager

(define-public haskell-9.4-postgres-options
  (package
    (name "haskell-9.4-postgres-options")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgres-options/postgres-options-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dfr15bg77117y27rr1kvbxcsyh36ha30c8rgiqd15y7pjd4apy4"))))
    (properties `((upstream-name . "postgres-options") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-generic-monoid)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-uri-bytestring)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jfischoff/postgres-options#readme")
    (synopsis "An Options type representing options for postgres connections")
    (description
     "This package exports an Options type representing options for postgres connections")
    (license license:bsd-3)))

haskell-9.4-postgres-options

(define-public haskell-9.4-primitive-extras
  (package
    (name "haskell-9.4-primitive-extras")
    (version "0.10.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/primitive-extras/primitive-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xmigva8lss9h18q0a63mc9sridny40nyzkizr2vmgm5d9qniqjs"))))
    (properties `((upstream-name . "primitive-extras") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-deferred-folds)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-focus)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-foldl)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-list-t)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-primitive-unlifted)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-rerebase)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/metrix-ai/primitive-extras")
    (synopsis "Extras for the \"primitive\" library")
    (description "")
    (license license:expat)))

haskell-9.4-primitive-extras

(define-public haskell-9.4-project-template
  (package
    (name "haskell-9.4-project-template")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/project-template/project-template-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ac43x36i6b595jhflif1qqhri1rrqw90ama5n7rsh0ffnzyb69d"))))
    (properties `((upstream-name . "project-template") (hidden? . #f)))
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
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/fpco/haskell-ide")
    (synopsis "Specify Haskell project templates and generate files")
    (description
     "See initial blog post for explanation: <http://www.yesodweb.com/blog/2012/09/project-templates>")
    (license license:bsd-3)))

haskell-9.4-project-template

(define-public haskell-9.4-prometheus-client
  (package
    (name "haskell-9.4-prometheus-client")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prometheus-client/prometheus-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1f9csz40asdkmmh6kp8sc8gkbxvkrvv8v2byxn4jp67lg7s3g9bx"))))
    (properties `((upstream-name . "prometheus-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-atomic-primops)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-clock)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-data-sketches)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fimad/prometheus-haskell")
    (synopsis "Haskell client library for http://prometheus.io.")
    (description "Haskell client library for http://prometheus.io.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.4-prometheus-client

(define-public haskell-9.4-ptr
  (package
    (name "haskell-9.4-ptr")
    (version "0.16.8.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ptr/ptr-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "047f4j89mhy18p4ga0322nln61xx5bvlfiqg6aiywrm2k95gsblh"))))
    (properties `((upstream-name . "ptr") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-contravariant)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-rerebase)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-strict-list)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/ptr")
    (synopsis "Experimental abstractions for operations on pointers")
    (description
     "Collection of experimental abstractions over pointer operations.")
    (license license:expat)))

haskell-9.4-ptr

(define-public haskell-9.4-req
  (package
    (name "haskell-9.4-req")
    (version "3.13.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/req/req-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1igs75bj57vs1fwpxj1765l6zkqd4r3p2gbwp6cv2l37drfxjck4"))))
    (properties `((upstream-name . "req") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "0izg1pj2jbpdlg9i9g30i5h4rcshkawh5zdhlkq1n9xfgc6jqv2v")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-authenticate-oauth)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-connection)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-api-data)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-modern-uri)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-retry)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mrkkrp/req")
    (synopsis "HTTP client library")
    (description "HTTP client library.")
    (license license:bsd-3)))

haskell-9.4-req

(define-public haskell-9.4-rhbzquery
  (package
    (name "haskell-9.4-rhbzquery")
    (version "0.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rhbzquery/rhbzquery-" version
                    ".tar.gz"))
              (sha256
               (base32
                "00175smanmcr6k8b83kj7mif47jggxn0pvy64yjc4ikpbw822c2q"))))
    (properties `((upstream-name . "rhbzquery") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-config-ini)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-email-validate)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-rhbzquery-notests)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-simple-cmd)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-simple-cmd-args)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/juhp/rhbzquery")
    (synopsis "Bugzilla query tool")
    (description
     "A CLI tool for creating bugzilla queries for bugzilla.redhat.com.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-rhbzquery

(define-public haskell-9.4-shell-conduit
  (package
    (name "haskell-9.4-shell-conduit")
    (version "5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shell-conduit/shell-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02zilgrb64x0rk4b4bihprwq9fr5gydzj003y3fq8ryf7r60g41w"))))
    (properties `((upstream-name . "shell-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-monads-tf)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/psibi/shell-conduit")
    (synopsis "Write shell scripts with Conduit")
    (description
     "Write shell scripts with Conduit. See \"Data.Conduit.Shell\" for documentation.")
    (license license:bsd-3)))

haskell-9.4-shell-conduit

(define-public haskell-9.4-simple-sendfile
  (package
    (name "haskell-9.4-simple-sendfile")
    (version "0.2.30")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simple-sendfile/simple-sendfile-"
                    version ".tar.gz"))
              (sha256
               (base32
                "112j0qfsjazf9wg1zywf7hjybgsiywk9wkm27yi8xzv27hmlv1mn"))))
    (properties `((upstream-name . "simple-sendfile") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fallow-bsd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/simple-sendfile")
    (synopsis "Cross platform library for the sendfile system call")
    (description "Cross platform library for the sendfile system call.
This library tries to call minimum system calls which
are the bottleneck of web servers.")
    (license license:bsd-3)))

haskell-9.4-simple-sendfile

(define-public haskell-9.4-slynx
  (package
    (name "haskell-9.4-slynx")
    (version "0.7.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/slynx/slynx-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1g69ybqfhsl74n516dzby2dswp5z4qr9xhc1fcxh9j6ynan1vcmz"))))
    (properties `((upstream-name . "slynx") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-elynx-markov)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-elynx-seq)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-elynx-tools)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-elynx-tree)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-hmatrix)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-matrices)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-statistics)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/dschrempf/elynx#readme")
    (synopsis "Handle molecular sequences")
    (description
     "Examine, modify, and simulate molecular sequences in a reproducible way. Please see the README on GitHub at <https://github.com/dschrempf/elynx>.")
    (license license:gpl3+)))

haskell-9.4-slynx

(define-public haskell-9.4-stm-conduit
  (package
    (name "haskell-9.4-stm-conduit")
    (version "4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stm-conduit/stm-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hhlxvpp7mah8dcvkknh6skx44jfk3092zz2w52zlr255bkmn3p8"))))
    (properties `((upstream-name . "stm-conduit") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-cereal-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-monad-loops)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-stm-chans)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/cgaebel/stm-conduit")
    (synopsis
     "Introduces conduits to channels, and promotes using conduits concurrently.")
    (description
     "Provides two simple conduit wrappers around STM channels - a source and a sink.")
    (license license:bsd-3)))

haskell-9.4-stm-conduit

(define-public haskell-9.4-subcategories
  (package
    (name "haskell-9.4-subcategories")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/subcategories/subcategories-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qxiccv9xpl6ms8j9lfvl8jps9gr979ya441fghy1jvfza0fxd1x"))))
    (properties `((upstream-name . "subcategories") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-foldl)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-mono-traversable)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-pointed)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-reflection)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-semialign)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-these)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-vector-algorithms)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-vector-builder)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/konn/subcategories#readme")
    (synopsis "Subcategories induced by class constraints")
    (description
     "Please see the README on GitHub at <https://github.com/konn/subcategories#readme>")
    (license license:bsd-3)))

haskell-9.4-subcategories

(define-public haskell-9.4-text-builder-dev
  (package
    (name "haskell-9.4-text-builder-dev")
    (version "0.3.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-builder-dev/text-builder-dev-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bsm4yl22mpzggcnh908ccw9mvg3prckydwxxqa4rfj4k8hy4x7m"))))
    (properties `((upstream-name . "text-builder-dev") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-deferred-folds)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-isomorphism-class)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-rerebase)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/text-builder-dev")
    (synopsis "Edge of developments for \"text-builder\"")
    (description "This is a development version of \\\"text-builder\\\".
All experimentation and feature development happens here.
The API can change drastically.
For a more stable API use \\\"text-builder\\\",
which is now just a wrapper over this package.")
    (license license:expat)))

haskell-9.4-text-builder-dev

(define-public haskell-9.4-tlynx
  (package
    (name "haskell-9.4-tlynx")
    (version "0.7.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tlynx/tlynx-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1hf4zfm6gapqd2yi0pylrmrjsgx98c21diixiv7bc7z6xs7g4pbl"))))
    (properties `((upstream-name . "tlynx") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-elynx-tools)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-elynx-tree)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-parallel)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-statistics)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/dschrempf/elynx#readme")
    (synopsis "Handle phylogenetic trees")
    (description
     "Examine, compare, and simulate phylogenetic trees in a reproducible way. Please see the README on GitHub at <https://github.com/dschrempf/elynx>.")
    (license license:gpl3+)))

haskell-9.4-tlynx

(define-public haskell-9.4-uri-bytestring-aeson
  (package
    (name "haskell-9.4-uri-bytestring-aeson")
    (version "0.1.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uri-bytestring-aeson/uri-bytestring-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02bm5r0i1anwy3wv2xdfhnsmmgllv5vs7npy01fpmp91x7dcqak1"))))
    (properties `((upstream-name . "uri-bytestring-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-uri-bytestring)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/reactormonk/uri-bytestring-aeson")
    (synopsis "Aeson instances for URI Bytestring")
    (description "")
    (license license:bsd-3)))

haskell-9.4-uri-bytestring-aeson

(define-public haskell-9.4-vector-extras
  (package
    (name "haskell-9.4-vector-extras")
    (version "0.2.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-extras/vector-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xnz733p9p66693hb31fmq2cfsy2rwyw1b0915p7y5my1d8dxyzi"))))
    (properties `((upstream-name . "vector-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-deferred-folds)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-foldl)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/metrix-ai/vector-extras")
    (synopsis "Utilities for the \"vector\" library")
    (description "This library is in an experimental state.
Users should be prepared for frequent updates.")
    (license license:expat)))

haskell-9.4-vector-extras

(define-public haskell-9.4-xml-conduit
  (package
    (name "haskell-9.4-xml-conduit")
    (version "1.9.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-conduit/xml-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zzh7xnmbm68dab1vqsjkr6ghxqgnla5nik4amrwlmhbdih1gcdx"))))
    (properties `((upstream-name . "xml-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0m6sknp9xxz8a3dhvyfpyjvxp8ph511w19j4vj1qsd6hl2pazjy6")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-blaze-markup)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/snoyberg/xml")
    (synopsis
     "Pure-Haskell utilities for dealing with XML with the conduit package.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/xml-conduit>.")
    (license license:expat)))

haskell-9.4-xml-conduit

(define-public haskell-9.4-xmlbf-xeno
  (package
    (name "haskell-9.4-xmlbf-xeno")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xmlbf-xeno/xmlbf-xeno-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ls45fqyvss387mcz5gppnal9pf4kmnqd8dzr6caaxzdd5ckxi3h"))))
    (properties `((upstream-name . "xmlbf-xeno") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-html-entities)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage017) haskell-9.4-xeno)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-xmlbf)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://gitlab.com/k0001/xmlbf")
    (synopsis "xeno backend support for the xmlbf library.")
    (description "")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.4-xmlbf-xeno

(define-public haskell-9.4-yaml
  (package
    (name "haskell-9.4-yaml")
    (version "0.11.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/yaml/yaml-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1s0arllihjjqp65jbc8c1w5106i2infppsirvbsifpmpkf14w6pn"))))
    (properties `((upstream-name . "yaml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fno-examples" "-fno-exe")
       #:cabal-revision
       ("2" "1dix5jm3d380vjr9l6wqz54zk883kilk8rijlvjp6b13mjxwcj1l")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-libyaml)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-mockery)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snoyberg/yaml#readme")
    (synopsis "Support for parsing and rendering YAML documents.")
    (description
     "README and API documentation are available at <https://www.stackage.org/package/yaml>")
    (license license:bsd-3)))

haskell-9.4-yaml

(define-public haskell-9.4-zim-parser
  (package
    (name "haskell-9.4-zim-parser")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zim-parser/zim-parser-" version
                    ".tar.gz"))
              (sha256
               (base32
                "12apl53kj1lzfkw566z3j5fir8iab25s2pkajb3dmq2lbhwnlzxj"))))
    (properties `((upstream-name . "zim-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-binary-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-lzma)))
    (propagated-inputs (list (@ (gnu packages compression) lzip)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/robbinch/zim-parser#readme")
    (synopsis "Read and parse ZIM files")
    (description
     "zim-parser is a library to read and parse ZIM (http://openzim.org) files.
ZiM files contain offline web content (eg. Wikipedia) which can be browsed
locally without an Internet connection.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-zim-parser

(define-public haskell-9.4-zip-stream
  (package
    (name "haskell-9.4-zip-stream")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zip-stream/zip-stream-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1z9q6j5zh4crvgk4v2p9s6qww74ifmcj7ngxxkpnkv8h81xjcdjk"))))
    (properties `((upstream-name . "zip-stream") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-binary-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-digest)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/zip-stream")
    (synopsis "ZIP archive streaming using conduits")
    (description
     "Process (extract and create) zip files as streams (e.g., over the network), accessing contained files without having to write the zip file to disk (unlike zip-conduit).")
    (license license:bsd-3)))

haskell-9.4-zip-stream

