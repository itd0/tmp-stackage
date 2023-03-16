;;; generated file
(define-module (gnu packages stackage ghc-9.4 stage011)
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
(define-public haskell-9.4-MemoTrie
  (package
    (name "haskell-9.4-MemoTrie")
    (version "0.6.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/MemoTrie/MemoTrie-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0lxsarhyhhkp58wpbp7b08scmjxq7s46jfl9vhp2yfq973hz0kaq"))))
    (properties `((upstream-name . "MemoTrie") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-newtype-generics)))
    (home-page "https://github.com/conal/MemoTrie")
    (synopsis "Trie-based memo functions")
    (description
     "MemoTrie provides a basis for memoized functions over some domains,
using tries.  It's based on ideas from Ralf Hinze and code from
Spencer Janssen. Generic support thanks to Sam Boosalis.

Project wiki page: <http://haskell.org/haskellwiki/MemoTrie>

&#199; 2008-2019 by Conal Elliott; BSD3 license.")
    (license license:bsd-3)))

haskell-9.4-MemoTrie

(define-public haskell-9.4-adjunctions
  (package
    (name "haskell-9.4-adjunctions")
    (version "4.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/adjunctions/adjunctions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06354xzgf78jl4g1xw11rp74gi7zh94rgvsji7ma1g0hp26myyql"))))
    (properties `((upstream-name . "adjunctions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0ii8818fr1h3wpyaqwa44gn1kv7lafbw9b4qdj7r86w5k5q00ypp")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-contravariant)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-distributive)
                  (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-free)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-generic-deriving)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-void)))
    (home-page "http://github.com/ekmett/adjunctions/")
    (synopsis "Adjunctions and representable functors")
    (description "Adjunctions and representable functors.")
    (license license:bsd-3)))

haskell-9.4-adjunctions

(define-public haskell-9.4-aeson
  (package
    (name "haskell-9.4-aeson")
    (version "2.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/aeson/aeson-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1bdn4j2jglpxhy3kl3y5pf8dr032qjjfbl8ivjk591fdcy6rgbm3"))))
    (properties `((upstream-name . "aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-cffi" "-fordered-keymap")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-OneTuple)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-base-compat-batteries)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-data-fix)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-generically)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-semialign)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-strict)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-text-short)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-th-abstraction)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-these)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-time-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-uuid-types)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-witherable)))
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

haskell-9.4-aeson

(define-public haskell-9.4-annotated-exception
  (package
    (name "haskell-9.4-annotated-exception")
    (version "0.2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/annotated-exception/annotated-exception-"
                    version ".tar.gz"))
              (sha256
               (base32
                "090mv2a0k4mrhspa7wj62krl5m9y3c33nnr5m39qqdhgys37qrmb"))))
    (properties `((upstream-name . "annotated-exception") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)))
    (home-page "https://github.com/parsonsmatt/annotated-exception#readme")
    (synopsis "Exceptions, with checkpoints and context.")
    (description
     "Please see the README on Github at <https://github.com/parsonsmatt/annotated-exception#readme>")
    (license license:bsd-3)))

haskell-9.4-annotated-exception

(define-public haskell-9.4-ansi-terminal-game
  (package
    (name "haskell-9.4-ansi-terminal-game")
    (version "1.8.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ansi-terminal-game/ansi-terminal-game-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wyx6g9fydbnz9xwjniymwfgn3fgn6vql9spmzl3c1hlpbv5ikfq"))))
    (properties `((upstream-name . "ansi-terminal-game") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-clock)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-colour)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-linebreak)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-mintty)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-terminal-size)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-timers-tick)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-unidecode)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page
     "http://www.ariis.it/static/articles/ansi-terminal-game/page.html")
    (synopsis "sdl-like functions for terminal applications, based on
ansi-terminal")
    (description
     "Library which aims to replicate standard 2d game
functions (blit, ticks, timers, etc.) in a terminal
setting; features double buffering to optimise
performance.
Aims to be cross compatible (based on \"ansi-terminal\",
no unix-only dependencies), practical.
See @@examples@@ folder for some minimal programs.  A
full game: <http://www.ariis.it/static/articles/venzone/page.html venzone>.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-ansi-terminal-game

(define-public haskell-9.4-ascii-case
  (package
    (name "haskell-9.4-ascii-case")
    (version "1.0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-case/ascii-case-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17gqpc65ffy4ipf0bhrs5nyqcmn6fxpx859m03wzm5m2y7ki67nd"))))
    (properties `((upstream-name . "ascii-case") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-ascii-char)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/typeclasses/ascii-case")
    (synopsis "ASCII letter case")
    (description "This package defines a @@Case@@ type that describes the
two varieties of ASCII letter: capital and small.")
    (license license:asl2.0)))

haskell-9.4-ascii-case

(define-public haskell-9.4-atomic-write
  (package
    (name "haskell-9.4-atomic-write")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-unix-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.4-atomic-write

(define-public haskell-9.4-attoparsec-base64
  (package
    (name "haskell-9.4-attoparsec-base64")
    (version "0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec-base64/attoparsec-base64-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rvkc7kaya42a8djkyj642r5dq952gwkhinif9r22ijaic656cq8"))))
    (properties `((upstream-name . "attoparsec-base64") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-word8)))
    (home-page "https://github.com/athanclark/attoparsec-base64#readme")
    (synopsis
     "Fetch only base64 characters, erroring in the attoparsec monad on failure")
    (description "")
    (license license:bsd-3)))

haskell-9.4-attoparsec-base64

(define-public haskell-9.4-attoparsec-iso8601
  (package
    (name "haskell-9.4-attoparsec-iso8601")
    (version "1.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec-iso8601/attoparsec-iso8601-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ji6rcz49caqpj85dg8gs90cnc15500qyyh4b3n598a8qhbsh28i"))))
    (properties `((upstream-name . "attoparsec-iso8601") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-base-compat-batteries)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-time-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell/aeson")
    (synopsis "Parsing of ISO 8601 dates, originally from aeson")
    (description "Parsing of ISO 8601 dates, originally from aeson.")
    (license license:bsd-3)))

haskell-9.4-attoparsec-iso8601

(define-public haskell-9.4-base58-bytestring
  (package
    (name "haskell-9.4-base58-bytestring")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base58-bytestring/base58-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ls05nzswjr6aw0wwk3q7cpv1hf0lw7vk16a5khm6l21yfcgbny2"))))
    (properties `((upstream-name . "base58-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-quickcheck-assertions)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://bitbucket.org/s9gf4ult/base58-bytestring")
    (synopsis "Implementation of BASE58 transcoding for ByteStrings")
    (description "Implementation of BASE58 transcoding copy-pasted from
haskoin package")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.4-base58-bytestring

(define-public haskell-9.4-bound
  (package
    (name "haskell-9.4-bound")
    (version "2.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bound/bound-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1cnw0q97bys7jcpjds2fb6zkq9pyqxcb8v0b5dvkckqmlp8agn4v"))))
    (properties `((upstream-name . "bound") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftemplate-haskell")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-bifunctors)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-bytes)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-deriving-compat)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-mmorph)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-th-abstraction)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-void)))
    (home-page "http://github.com/ekmett/bound/")
    (synopsis "Making de Bruijn Succ Less")
    (description
     "We represent the target language itself as an ideal monad supplied by the
user, and provide a 'Scope' monad transformer for introducing bound variables
in user supplied terms. Users supply a 'Monad' and 'Traversable' instance,
and we traverse to find free variables, and use the Monad to perform
substitution that avoids bound variables.

Slides describing and motivating this approach to name binding are available
online at:

<http://www.slideshare.net/ekmett/bound-making-de-bruijn-succ-less>

The goal of this package is to make it as easy as possible to deal with name
binding without forcing an awkward monadic style on the user.

With generalized de Bruijn term you can 'lift' whole trees instead of just
applying 'succ' to individual variables, weakening the all variables bound
by a scope and greatly speeding up instantiation. By giving binders more
structure we permit easy simultaneous substitution and further speed up
instantiation.")
    (license license:bsd-3)))

haskell-9.4-bound

(define-public haskell-9.4-cassava-megaparsec
  (package
    (name "haskell-9.4-cassava-megaparsec")
    (version "2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cassava-megaparsec/cassava-megaparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pg9z38jmrylbj683b6pf7psipp7lrdq6mn1hbj8v2gj5lh8yf8n"))))
    (properties `((upstream-name . "cassava-megaparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "1nknyqs8bb3qiysq5a2n1f7lzgkr8b0pvshg5jx5z5wgfmpjmyjf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cassava)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/stackbuilders/cassava-megaparsec")
    (synopsis "Megaparsec parser of CSV files that plays nicely with Cassava")
    (description
     "Megaparsec parser of CSV files that plays nicely with Cassava.")
    (license license:expat)))

haskell-9.4-cassava-megaparsec

(define-public haskell-9.4-configurator
  (package
    (name "haskell-9.4-configurator")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/configurator/configurator-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1d1iq1knwiq6ia5g64rw5hqm6dakz912qj13r89737rfcxmrkfbf"))))
    (properties `((upstream-name . "configurator") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-developer")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-unix-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/bos/configurator")
    (synopsis "Configuration management")
    (description
     "A configuration management library for programs and daemons.

Features include:

* Automatic, dynamic reloading in response to modifications to
configuration files.

* A simple, but flexible, configuration language, supporting several
of the most commonly needed types of data, along with
interpolation of strings from the configuration or the system
environment (e.g. @@$(HOME)@@).

* Subscription-based notification of changes to configuration
properties.

* An @@import@@ directive allows the configuration of a complex
application to be split across several smaller files, or common
configuration data to be shared across several applications.

For details of the configuration file format, see
<http://hackage.haskell.org/packages/archive/configurator/latest/doc/html/Data-Configurator.html>.")
    (license license:bsd-3)))

haskell-9.4-configurator

(define-public haskell-9.4-context-resource
  (package
    (name "haskell-9.4-context-resource")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/context-resource/context-resource-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hcmzd82nxbxask6qckb9ivpxlrxhph9pwk379vkx235jgqy79gj"))))
    (properties `((upstream-name . "context-resource") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-context)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/jship/context#readme")
    (synopsis "Thread-safe, pool-compatible resource provider")
    (description
     "A thread-safe, pool-compatible resource provider abstraction that supports
resource-sharing within nested actions.")
    (license license:expat)))

haskell-9.4-context-resource

(define-public haskell-9.4-cue-sheet
  (package
    (name "haskell-9.4-cue-sheet")
    (version "2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cue-sheet/cue-sheet-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0n8a5m5qlz8dz03sphj9pybfjfkc0gngpmh56h6idj88frn1z947"))))
    (properties `((upstream-name . "cue-sheet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "14w4r8y871fkvvak9lklncchlnq3cb6gy4qy1124g9hsnf75mgg4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)))
    (home-page "https://github.com/mrkkrp/cue-sheet")
    (synopsis "Support for construction, rendering, and parsing of CUE sheets")
    (description
     "Support for construction, rendering, and parsing of CUE sheets.")
    (license license:bsd-3)))

haskell-9.4-cue-sheet

(define-public haskell-9.4-data-compat
  (package
    (name "haskell-9.4-data-compat")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-compat/data-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cgm17zzfmmglnprgv91aqpm7n847qlajfz8gp7qqwjlg9xfmpy9"))))
    (properties `((upstream-name . "data-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-constraints)))
    (home-page "https://github.com/TravisWhitaker/data-compat")
    (synopsis "Define Backwards Compatibility Schemes for Arbitrary Data")
    (description "Define Backwards Compatibility Schemes for Arbitrary Data")
    (license license:expat)))

haskell-9.4-data-compat

(define-public haskell-9.4-di-core
  (package
    (name "haskell-9.4-di-core")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/di-core/di-core-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0wrj2ndzk9r7izjvwkjjmqb3gg1zy93ch7j7fdalzadzzsd4sqsm"))))
    (properties `((upstream-name . "di-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0001/di")
    (synopsis "Typeful hierarchical structured logging without monad towers.")
    (description
     "Typeful hierarchical structured logging without monad towers.")
    (license license:bsd-3)))

haskell-9.4-di-core

(define-public haskell-9.4-dotenv
  (package
    (name "haskell-9.4-dotenv")
    (version "0.10.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dotenv/dotenv-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04brkjk9a17xv2qv2xbsdxbil6ncrrzxcfji9q0civmxhj4vbcfq"))))
    (properties `((upstream-name . "dotenv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-static" "-f-dev")))
    (outputs (list "out" "doc"))
    (native-inputs (list (@ (gnu packages base) coreutils)))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-shellwords)))
    (home-page "https://github.com/stackbuilders/dotenv-hs")
    (synopsis "Loads environment variables from dotenv files")
    (description
     "
In most applications,
<http://12factor.net/config configuration should be separated from code>.
While it usually works well to keep configuration in the
environment, there are cases where you may want to store
configuration in a file outside of version control.

\"Dotenv\" files have become popular for storing configuration,
especially in development and test environments. In
<https://github.com/bkeepers/dotenv Ruby>,
<https://github.com/theskumar/python-dotenv Python> and
<https://www.npmjs.com/package/dotenv Javascript> there are libraries
to facilitate loading of configuration options from configuration
files. This library loads configuration to environment variables for
programs written in Haskell.

To use, call `loadFile` from your application:

> import Control.Monad (void)
> import Configuration.Dotenv
> void $ loadFile defaultConfig

This package also includes an executable that can be used
to inspect the results of applying one or more Dotenv files
to the environment, or for invoking your executables with
an environment after one or more Dotenv files is applied.

See the <https://github.com/stackbuilders/dotenv-hs Github>
page for more information on this package.")
    (license license:expat)))

haskell-9.4-dotenv

(define-public haskell-9.4-elm-export
  (package
    (name "haskell-9.4-elm-export")
    (version "0.6.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/elm-export/elm-export-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1mgrcd1hrg6rjb5x18zh9vcxqsc9hnfwvvr1nia2piqqb40n565z"))))
    (properties `((upstream-name . "elm-export") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Diff)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-formatting)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-hspec-core)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-wl-pprint-text)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/krisajenkins/elm-export")
    (synopsis "A library to generate Elm types from Haskell source.")
    (description
     "Generate Elm source code automatically from Haskell types. Using GHC.Generics, we can automatically derive Elm type declarations, and Aeson-compatible JSON decoders & encoders.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.4-elm-export

(define-public haskell-9.4-filemanip
  (package
    (name "haskell-9.4-filemanip")
    (version "0.3.6.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/filemanip/filemanip-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ilqr8jv41zxcj5qyicg29m8s30b9v70x6f9h2h2rw5ap8bxldl8"))))
    (properties `((upstream-name . "filemanip") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1l53qqlh9w7572n5dxk8rq0p8vsvg6m1afbak6xzdx0kgg8j6y8a")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-unix-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/bos/filemanip")
    (synopsis "Expressive file and directory manipulation for Haskell.")
    (description "A Haskell library for working with files and directories.
Includes code for pattern matching, finding files,
modifying file contents, and more.")
    (license license:bsd-3)))

haskell-9.4-filemanip

(define-public haskell-9.4-flac
  (package
    (name "haskell-9.4-flac")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage010) haskell-9.4-wave)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xiph) flac)))
    (home-page "https://github.com/mrkkrp/flac")
    (synopsis "Complete high-level binding to libFLAC")
    (description "Complete high-level binding to libFLAC.")
    (license license:bsd-3)))

haskell-9.4-flac

(define-public haskell-9.4-flay
  (package
    (name "haskell-9.4-flay")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/flay/flay-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1vqkjjf2bzmi489wsx23ryyplbg26q9qrzb98dz80j5b5rj3xzq1"))))
    (properties `((upstream-name . "flay") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-constraints)))
    (home-page "https://github.com/k0001/flay")
    (synopsis
     "Work generically on your datatype without knowing its shape nor its contents.")
    (description
     "Work generically on your datatype without knowing its shape nor its contents using
a principlied approach.")
    (license license:bsd-3)))

haskell-9.4-flay

(define-public haskell-9.4-fmt
  (package
    (name "haskell-9.4-fmt")
    (version "0.6.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fmt/fmt-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "01mh0k69dv5x30hlmxi36dp1ylk0a6affr4jb3pvy8vjm4ypzvml"))))
    (properties `((upstream-name . "fmt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-call-stack)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-formatting)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-time-locale-compat)))
    (home-page "http://github.com/cdornan/fmt")
    (synopsis "A new formatting library")
    (description
     "A new formatting library that tries to be simple to understand while still
being powerful and providing more convenience features than other libraries
(like functions for pretty-printing maps and lists, or a function for
printing arbitrary datatypes using generics).

A comparison with other libraries:

* @@printf@@ (from @@Text.Printf@@) takes a formatting string and uses some
type tricks to accept the rest of the arguments polyvariadically. It's
very concise, but there are some drawbacks – it can't produce @@Text@@
(you'd have to @@T.pack@@ it every time) and it doesn't warn you at
compile-time if you pass wrong arguments or not enough of them.

* <https://hackage.haskell.org/package/text-format text-format> takes a
formatting string with curly braces denoting places where arguments
would be substituted (the arguments themselves are provided via a
tuple). If you want to apply formatting to some of the arguments, you
have to use one of the provided formatters. Like @@printf@@, it can fail at
runtime, but at least the formatters are first-class (and you can add new
ones).

* <https://hackage.haskell.org/package/formatting formatting> takes a
formatting template consisting of pieces of strings interleaved with
formatters; this ensures that arguments always match their placeholders.
@@formatting@@ provides lots of formatters and generally seems to be the
most popular formatting library here. Unfortunately, at least in my
experience writing new formatters can be awkward and people sometimes
have troubles understanding how @@formatting@@ works.

* <https://hackage.haskell.org/package/fmt fmt> (i.e. this library)
provides formatters that are ordinary functions, and a bunch of operators
for concatenating formatted strings; those operators also do automatic
conversion. There are some convenience formatters which aren't present in
@@formatting@@ (like ones for formatting maps, lists, converting to base64,
etc). Some find the operator syntax annoying, while others like it.")
    (license license:bsd-3)))

haskell-9.4-fmt

(define-public haskell-9.4-fsnotify
  (package
    (name "haskell-9.4-fsnotify")
    (version "0.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fsnotify/fsnotify-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vzpx91n2qml0628zq1c0bwnz7d4bal4vwl52hyil60shx5gnc6i"))))
    (properties `((upstream-name . "fsnotify") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-hinotify)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-unix-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-fswatch/hfsnotify")
    (synopsis "Cross platform library for file change notification.")
    (description
     "Cross platform library for file creation, modification, and deletion notification. This library builds upon existing libraries for platform-specific Windows, Mac, and Linux filesystem event notification.")
    (license license:bsd-3)))

haskell-9.4-fsnotify

(define-public haskell-9.4-genvalidity
  (package
    (name "haskell-9.4-genvalidity")
    (version "1.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity/genvalidity-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08xvbgzhi9f2s3g81zzd8yhrn66mr84m0dvp478nrbck19jdg5sq"))))
    (properties `((upstream-name . "genvalidity") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Testing utilities for the validity library")
    (description
     "Note: There are companion instance packages for this library:

* <https://hackage.haskell.org/package/genvalidity-aeson genvalidity-aeson>

* <https://hackage.haskell.org/package/genvalidity-bytestring genvalidity-bytestring>

* <https://hackage.haskell.org/package/genvalidity-containers genvalidity-containers>

* <https://hackage.haskell.org/package/genvalidity-path genvalidity-path>

* <https://hackage.haskell.org/package/genvalidity-scientific genvalidity-scientific>

* <https://hackage.haskell.org/package/genvalidity-text genvalidity-text>

* <https://hackage.haskell.org/package/genvalidity-time genvalidity-time>

* <https://hackage.haskell.org/package/genvalidity-unordered-containers genvalidity-unordered-containers>

* <https://hackage.haskell.org/package/genvalidity-uuid genvalidity-uuid>

* <https://hackage.haskell.org/package/genvalidity-vector genvalidity-vector>")
    (license license:expat)))

haskell-9.4-genvalidity

(define-public haskell-9.4-ghc-check
  (package
    (name "haskell-9.4-ghc-check")
    (version "0.5.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-check/ghc-check-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1m3w1l8gkc7g9p7d07h3f71687rgs9lb5ildgfr1ihxp7wssh98h"))))
    (properties `((upstream-name . "ghc-check") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fghc-check-use-package-abis")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-ghc-paths)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-th-compat)))
    (home-page "https://hackage.haskell.org/package/ghc-check")
    (synopsis
     "detect mismatches between compile-time and run-time versions of the ghc api")
    (description
     "detect mismatches between compile-time and run-time versions of the ghc api")
    (license license:bsd-3)))

haskell-9.4-ghc-check

(define-public haskell-9.4-githash
  (package
    (name "haskell-9.4-githash")
    (version "0.1.6.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/githash/githash-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "06zg1rif1rcxni1vacmr2bh1nbm6i62rjbikfr4xsyzq1sv7kfpw"))))
    (properties `((upstream-name . "githash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-th-compat)))
    (home-page "https://github.com/snoyberg/githash#readme")
    (synopsis "Compile git revision info into Haskell projects")
    (description
     "Please see the README and documentation at <https://www.stackage.org/package/githash>")
    (license license:bsd-3)))

haskell-9.4-githash

(define-public haskell-9.4-hkgr
  (package
    (name "haskell-9.4-hkgr")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hkgr/hkgr-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ssh8wylalmgicpcixilvx3p46jf8miqx2q0gz9yjhxa54c721ab"))))
    (properties `((upstream-name . "hkgr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-simple-cabal)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-simple-cmd-args)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-typed-process)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-xdg-basedir)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/juhp/hkgr")
    (synopsis "Simple Hackage release workflow for package maintainers")
    (description
     "Hkgr (Hackager) is a tool to help make new releases of
Haskell packages, with commands for git tagging, pristine sdist,
and uploading to Hackage.
There is also a command for creating a new local project.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-hkgr

(define-public haskell-9.4-hsass
  (package
    (name "haskell-9.4-hsass")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hsass/hsass-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1bnjvj6dpmcbpkbi4g5m5hvr0w5rmd7y5zkiwbqc8n9y4l2dkd5g"))))
    (properties `((upstream-name . "hsass") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "11xmb3mssql6ksdra03h9cqv0pdxgyj3askapbgpx6rmziw7a136")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-hlibsass)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-monad-loops)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages web) libsass)))
    (home-page "https://github.com/jakubfijalkowski/hsass")
    (synopsis "Integrating Sass into Haskell applications.")
    (description
     "This package provides quite simple (but not too simple) API for
compilation of <http://sass-lang.com/ Sass> code. It uses
<https://sass-lang.com/libsass libsass> (hlibsass) underneath, so the code it
parses/generates should be compatible with original Sass implementation (or at
least <https://sass-lang.com/libsass#sassc sassc>).
This package tries to minimize C API usage, so the only place where it is used
is in the 'compileFile' / 'compileString' methods. This allows us to stay pure
as long as we can and not waste performance for going back and forth.
If you feel that compilation options constrain you too much, you may use rest
of modules without it. With them, you can use Haskell types and mechanisms to
manage libsass's data(eg. importers, options, values) and modify compilation
process as you like.")
    (license license:expat)))

haskell-9.4-hsass

(define-public haskell-9.4-hslua-marshalling
  (package
    (name "haskell-9.4-hslua-marshalling")
    (version "2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-marshalling/hslua-marshalling-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xmix1frfcyv4p51rnshrg02gba7di7nrrc6chsq71d3mbwhyask"))))
    (properties `((upstream-name . "hslua-marshalling") (hidden? . #f)))
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
                     haskell-9.4-hslua-core)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-lua-arbitrary)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-tasty-hslua)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hslua.org/")
    (synopsis "Marshalling of values between Haskell and Lua.")
    (description "Provides functions to marshal values from Haskell
to Lua, and /vice versa/.

This package is part of HsLua, a Haskell framework
built around the embeddable scripting language
<https://lua.org Lua>.")
    (license license:expat)))

haskell-9.4-hslua-marshalling

(define-public haskell-9.4-infer-license
  (package
    (name "haskell-9.4-infer-license")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/infer-license/infer-license-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wlfm6bf55kfvm74xar9lmjg5v1103rs9m3grw1rq5bmcmhzxrhj"))))
    (properties `((upstream-name . "infer-license") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-text-metrics)))
    (home-page "https://hackage.haskell.org/package/infer-license")
    (synopsis "Infer software license from a given license file")
    (description "")
    (license license:expat)))

haskell-9.4-infer-license

(define-public haskell-9.4-inline-c-cpp
  (package
    (name "haskell-9.4-inline-c-cpp")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/inline-c-cpp/inline-c-cpp-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0m14nb9brpnh2cgq8gg6182mdcmn45hf734la68dnhq23sn63lpx"))))
    (properties `((upstream-name . "inline-c-cpp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-std-vector-example")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-inline-c)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/inline-c-cpp")
    (synopsis "Lets you embed C++ code into Haskell.")
    (description
     "Utilities to inline C++ code into Haskell using inline-c.  See
tests for example on how to build.")
    (license license:expat)))

haskell-9.4-inline-c-cpp

(define-public haskell-9.4-invert
  (package
    (name "haskell-9.4-invert")
    (version "1.0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/invert/invert-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "08bkn9pv02bklmrn5cf17qkw949ryvs51dc8pzxkixgbjk9fpny4"))))
    (properties `((upstream-name . "invert") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-generic-deriving)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://github.com/typeclasses/invert")
    (synopsis "Automatically generate a function’s inverse")
    (description "This library deals with computing a function’s inverse.
The function’s domain must be enumerable, and preferably
rather small. The function’s codomain must belong to the
@@Eq@@ class (even better, @@Ord@@ or @@Hashable@@).")
    (license license:asl2.0)))

haskell-9.4-invert

(define-public haskell-9.4-io-streams
  (package
    (name "haskell-9.4-io-streams")
    (version "1.5.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/io-streams/io-streams-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1zn4iyd18g9jc1qdgixp6hi56nj7czy4jdz2xca59hcn2q2xarfk"))))
    (properties `((upstream-name . "io-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-nointeractivetests" "-fzlib" "-fnetwork")
       #:cabal-revision
       ("1" "1fkjzk7s99sb7h1lvandw9p8r05ly4206y3aiah0jg39zjvbi5az")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-zlib)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-zlib-bindings)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/io-streams")
    (synopsis "Simple, composable, and easy-to-use stream I/O")
    (description
     "/Overview/

The io-streams library contains simple and easy-to-use primitives for I/O
using streams. Most users will want to import the top-level convenience
module \"System.IO.Streams\", which re-exports most of the library:

@@
import           System.IO.Streams (InputStream, OutputStream)
import qualified System.IO.Streams as Streams
@@

For first-time users, @@io-streams@@ comes with an included tutorial, which can
be found in the \"System.IO.Streams.Tutorial\" module.

/Features/

The @@io-streams@@ user API has two basic types: @@InputStream a@@ and
@@OutputStream a@@, and three fundamental I/O primitives:

@@
\\-\\- read an item from an input stream
Streams.read :: InputStream a -> IO (Maybe a)

\\-\\- push an item back to an input stream
Streams.unRead :: a -> InputStream a -> IO ()

\\-\\- write to an output stream
Streams.write :: Maybe a -> OutputStream a -> IO ()
@@

Streams can be transformed by composition and hooked together with provided combinators:

@@
ghci> Streams.fromList [1,2,3::Int] >>= Streams.map (*10) >>= Streams.toList
[10,20,30]
@@

Stream composition leaves the original stream accessible:

@@
ghci> input \\<- Streams.fromByteString \\\"long string\\\"
ghci> wrapped \\<- Streams.takeBytes 4 input
ghci> Streams.read wrapped
Just \\\"long\\\"
ghci> Streams.read wrapped
Nothing
ghci> Streams.read input
Just \\\" string\\\"
@@

Simple types and operations in the IO monad mean straightforward and simple
exception handling and resource cleanup using Haskell standard library
facilities like 'Control.Exception.bracket'.

@@io-streams@@ comes with:

* functions to use files, handles, concurrent channels, sockets, lists,
vectors, and more as streams.

* a variety of combinators for wrapping and transforming streams, including
compression and decompression using zlib, controlling precisely how many
bytes are read from or written to a stream, buffering output using
bytestring builders, folds, maps, filters, zips, etc.

* support for parsing from streams using @@attoparsec@@.

* support for spawning processes and communicating with them using streams.")
    (license license:bsd-3)))

haskell-9.4-io-streams

(define-public haskell-9.4-lame
  (package
    (name "haskell-9.4-lame")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lame/lame-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1xz98v2kqs69jijza0vyz57lpbs3h2f7fcablihlzprh1sylc3vq"))))
    (properties `((upstream-name . "lame") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-htaglib)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage010) haskell-9.4-wave)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages mp3) lame)
                             (@ (gnu packages mp3) taglib)))
    (home-page "https://github.com/mrkkrp/lame")
    (synopsis "A high-level binding to the LAME encoder")
    (description "A high-level binding to the LAME encoder.")
    (license license:bsd-3)))

haskell-9.4-lame

(define-public haskell-9.4-language-docker
  (package
    (name "haskell-9.4-language-docker")
    (version "12.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-docker/language-docker-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1slrq343rcg9shmqxxy8kzk911071x31q61q75dnldnm3x27j6by"))))
    (properties `((upstream-name . "language-docker") (hidden? . #f)))
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
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)))
    (home-page "https://github.com/hadolint/language-docker#readme")
    (synopsis "Dockerfile parser, pretty-printer and embedded DSL")
    (description
     "All functions for parsing and pretty-printing Dockerfiles are exported through @@Language.Docker@@. For more fine-grained operations look for specific modules that implement a certain functionality.
See the <https://github.com/hadolint/language-docker GitHub project> for the source-code and examples.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-language-docker

(define-public haskell-9.4-leveldb-haskell
  (package
    (name "haskell-9.4-leveldb-haskell")
    (version "0.6.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/leveldb-haskell/leveldb-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a3csz8zmjjp90ji1yqrc3h7rb1b612i6v4kfwxagswd0s4b05x4"))))
    (properties `((upstream-name . "leveldb-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages databases) leveldb)))
    (home-page "http://github.com/kim/leveldb-haskell")
    (synopsis "Haskell bindings to LevelDB")
    (description
     "From <http://code.google.com/p/snappy>:

LevelDB is a fast key-value storage library written at Google that provides
an ordered mapping from string keys to string values.


This library provides a Haskell language binding to LeveldDB. It is in very
early stage and has seen very limited testing.

Note: as of v1.3, LevelDB can be built as a shared library. Thus, as of
v0.1.0 of this library, LevelDB is no longer bundled and must be installed
on the target system (version 1.7 or greater is required).")
    (license license:bsd-3)))

haskell-9.4-leveldb-haskell

(define-public haskell-9.4-lexer-applicative
  (package
    (name "haskell-9.4-lexer-applicative")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-regex-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-srcloc)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)))
    (home-page "https://github.com/feuerbach/lexer-applicative")
    (synopsis "Simple lexer based on applicative regular expressions")
    (description "Simple lexer based on applicative regular expressions")
    (license license:expat)))

haskell-9.4-lexer-applicative

(define-public haskell-9.4-liboath-hs
  (package
    (name "haskell-9.4-liboath-hs")
    (version "0.0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/liboath-hs/liboath-hs-" version
                    ".tar.gz"))
              (sha256
               (base32
                "08wnzsk82ahyb3fy2sd1ci6aw0h3wiiad2j4kxs1j90wbrwkd3ri"))))
    (properties `((upstream-name . "liboath-hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-inline-c)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages authentication) oath-toolkit)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)
                             (@ (gnu packages authentication) oath-toolkit)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/parsonsmatt/liboath-hs#readme")
    (synopsis "Bindings to liboath")
    (description "See README for details.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-liboath-hs

(define-public haskell-9.4-lift-generics
  (package
    (name "haskell-9.4-lift-generics")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lift-generics/lift-generics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qkzq8hcb6j15cslv577bmhjcxmljzsrryysdgd7r99kr3q445b4"))))
    (properties `((upstream-name . "lift-generics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "07nf6d1fb0vc3fyldrgysmbc67hd94npp5f2hclrr3rhklfm7k91")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-generic-deriving)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-th-compat)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-th-lift-instances)))
    (home-page "https://github.com/RyanGlScott/lift-generics")
    (synopsis
     "GHC.Generics-based Language.Haskell.TH.Syntax.lift implementation")
    (description
     "This package provides a \"GHC.Generics\"-based @@genericLift@@
function (only available on GHC 7.4 and later), as well as
a @@genericLiftWithPkgFallback@@ function (for code that
must support GHC 7.2 and earlier) and a
@@genericLiftWithPkg@@ function (for use when neither of the
above will work), all of which can be used for providing a
@@Language.Haskell.TH.Syntax.lift@@ implementation. See the
documentation in the \"Language.Haskell.TH.Lift.Generics\"
module to get started.

Credit goes to Matthew Pickering for
<https://ghc.haskell.org/trac/ghc/ticket/1830#comment:12 suggesting this idea>.

Note that due to API limitations, \"GHC.Generics\" wasn't
powerful enough to come up with the entirety of a `lift`
implementation prior to GHC 8.0. For GHC 7.4 and later, we
can pluck this information out of `Typeable`. For earlier
versions, and where `Typeable` isn't available,
@@genericLiftWithPkg@@ requires you to produce the package
name yourself, which proves to be no small feat (see the
documentation for more info).

Luckily, you don't have to jump through as many hoops on GHC 7.4 and
later: simply use the @@genericLift@@ function, and life is good.")
    (license license:bsd-3)))

haskell-9.4-lift-generics

(define-public haskell-9.4-logging-facade-syslog
  (package
    (name "haskell-9.4-logging-facade-syslog")
    (version "1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/logging-facade-syslog/logging-facade-syslog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1acfkmr3cgprij9sfa0hfqyni6s8py22s3n0xa8qhy3syz1j72zb"))))
    (properties `((upstream-name . "logging-facade-syslog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-hsyslog)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-logging-facade)))
    (home-page "https://github.com/peti/logging-facade-syslog#readme")
    (synopsis "A logging back-end to syslog(3) for the logging-facade library")
    (description
     "A simple \"System.Logging.Facade\" back-end for @@syslog(3)@@ as specified in <http://pubs.opengroup.org/onlinepubs/9699919799/functions/syslog.html POSIX.1-2008>.")
    (license license:bsd-3)))

haskell-9.4-logging-facade-syslog

(define-public haskell-9.4-lucid-cdn
  (package
    (name "haskell-9.4-lucid-cdn")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lucid-cdn/lucid-cdn-" version
                    ".tar.gz"))
              (sha256
               (base32
                "119d92xc047r98pw0phxplm57nc2jdjz6smkas9hr95mck0d16db"))))
    (properties `((upstream-name . "lucid-cdn") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-lucid)))
    (home-page "https://hackage.haskell.org/package/lucid-cdn")
    (synopsis "Curated list of CDN imports for lucid.")
    (description
     "Repository of common CDN imports for lucid. Please open a pull request to add new libraries.")
    (license license:expat)))

haskell-9.4-lucid-cdn

(define-public haskell-9.4-markdown-unlit
  (package
    (name "haskell-9.4-markdown-unlit")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-silently)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-stringbuilder)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)))
    (home-page "https://github.com/sol/markdown-unlit#readme")
    (synopsis "Literate Haskell support for Markdown")
    (description
     "Documentation is here: <https://github.com/sol/markdown-unlit#readme>")
    (license license:expat)))

haskell-9.4-markdown-unlit

(define-public haskell-9.4-matrix
  (package
    (name "haskell-9.4-matrix")
    (version "0.3.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/matrix/matrix-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0b1v17rc9q7ni44gkzp124kmc5d6xmlpiqvskgjrq54qpjinr5zs"))))
    (properties `((upstream-name . "matrix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0iy0gdgg68ldhgm4lzvzl5pmzflx0r4brdbdkq75rkarm7cigawn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage010) haskell-9.4-loop)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/matrix")
    (synopsis "A native implementation of matrix operations.")
    (description
     "Matrix library. Basic operations and some algorithms.

To get the library update your cabal package list (if needed) with @@cabal update@@ and
then use @@cabal install matrix@@, assuming that you already have Cabal installed.
Usage examples are included in the API reference generated by Haddock.

If you want to use GSL, BLAS and LAPACK, @@hmatrix@@ (<http://hackage.haskell.org/package/hmatrix>)
is the way to go.")
    (license license:bsd-3)))

haskell-9.4-matrix

(define-public haskell-9.4-megaparsec-tests
  (package
    (name "haskell-9.4-megaparsec-tests")
    (version "9.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/megaparsec-tests/megaparsec-tests-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ra1y1gdcxav0xi2djril3l3kb7kvzcjnmxxspmn2nj2921sb0yi"))))
    (properties `((upstream-name . "megaparsec-tests") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)))
    (home-page "https://github.com/mrkkrp/megaparsec")
    (synopsis "Test utilities and the test suite of Megaparsec")
    (description "Test utilities and the test suite of Megaparsec.")
    (license license:bsd-2)))

haskell-9.4-megaparsec-tests

(define-public haskell-9.4-membership
  (package
    (name "haskell-9.4-membership")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/membership/membership-" version
                    ".tar.gz"))
              (sha256
               (base32
                "07b40i1fvkix9x60nqp6nmlchjkcj3jhp7xpq583fpssqm79x14m"))))
    (properties `((upstream-name . "membership") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-constraints)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-th-lift)))
    (home-page "https://github.com/fumieval/membership")
    (synopsis "Indices for type level lists")
    (description "See README")
    (license license:bsd-3)))

haskell-9.4-membership

(define-public haskell-9.4-mixed-types-num
  (package
    (name "haskell-9.4-mixed-types-num")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-collect-errors)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-hspec-smallcheck)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-smallcheck)))
    (home-page "https://github.com/michalkonecny/mixed-types-num#readme")
    (synopsis
     "Alternative Prelude with numeric and logic expressions typed bottom-up")
    (description
     "Please see the README on GitHub at <https://github.com/michalkonecny/mixed-types-num#readme>")
    (license license:bsd-3)))

haskell-9.4-mixed-types-num

(define-public haskell-9.4-mock-time
  (package
    (name "haskell-9.4-mock-time")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mock-time/mock-time-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0fwnlkg3kbi7qh43ycymxxywsh8cw5f5km0ni4plf63k931y40jg"))))
    (properties `((upstream-name . "mock-time") (hidden? . #f)))
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
                     haskell-9.4-error-or)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-error-or-utils)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-inbox)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/luntain/error-or-bundle/blob/master/mock-time#readme")
    (synopsis "Mock time in tests")
    (description
     "Allows to mock out Data.Time.getCurrentTime and Control.Concrurent.threadDelay")
    (license license:bsd-3)))

haskell-9.4-mock-time

(define-public haskell-9.4-mockery
  (package
    (name "haskell-9.4-mockery")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mockery/mockery-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "09ypgm3z69gq8mj6y66ss58kbjnk15r8frwcwbqcfbfksfnfv8dp"))))
    (properties `((upstream-name . "mockery") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-logging-facade)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)))
    (home-page "https://hackage.haskell.org/package/mockery")
    (synopsis "Support functions for automated testing")
    (description "Support functions for automated testing")
    (license license:expat)))

haskell-9.4-mockery

(define-public haskell-9.4-modern-uri
  (package
    (name "haskell-9.4-modern-uri")
    (version "0.3.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/modern-uri/modern-uri-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1lj3il9wg7v88l1hj08k07g3f76xas0gz20l2wy8z6xbpcn5ng6g"))))
    (properties `((upstream-name . "modern-uri") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-contravariant)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-reflection)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)))
    (home-page "https://github.com/mrkkrp/modern-uri")
    (synopsis "Modern library for working with URIs")
    (description "Modern library for working with URIs.")
    (license license:bsd-3)))

haskell-9.4-modern-uri

(define-public haskell-9.4-n2o-nitro
  (package
    (name "haskell-9.4-n2o-nitro")
    (version "0.11.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/n2o-nitro/n2o-nitro-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vh0r03h0k60z4q722pw4h5q0l7l56fmyp57im0nankci8vj0s38"))))
    (properties `((upstream-name . "n2o-nitro") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage010) haskell-9.4-n2o)))
    (home-page "https://github.com/xafizoff/n2o#readme")
    (synopsis "Nitro Elements, Events and Actions")
    (description "Nitro DSL")
    (license license:bsd-3)))

haskell-9.4-n2o-nitro

(define-public haskell-9.4-network-ip
  (package
    (name "haskell-9.4-network-ip")
    (version "0.3.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-ip/network-ip-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0p4mn7vz74kxmsc8xvg7gx5rs38knnv518bc0qv0b07ki51wq7g0"))))
    (properties `((upstream-name . "network-ip") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-data-dword)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-endian)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-data-serializer)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-data-textual)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-parsers)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-text-printer)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-type-hint)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mvv/network-ip")
    (synopsis "Internet Protocol data structures")
    (description "This package provides Internet Protocol data structures")
    (license license:bsd-3)))

haskell-9.4-network-ip

(define-public haskell-9.4-network-simple
  (package
    (name "haskell-9.4-network-simple")
    (version "0.4.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-simple/network-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17hpgcwrsx2h8lrb2wwzy0anp33mn80dnwcgnqmb8prajwjvz807"))))
    (properties `((upstream-name . "network-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-network-bsd)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-socks)))
    (home-page "https://github.com/k0001/network-simple")
    (synopsis "Simple network sockets usage patterns.")
    (description
     "This module exports functions that abstract simple network socket
usage patterns.

See the @@changelog.md@@ file in the source distribution to learn about any
important changes between versions.")
    (license license:bsd-3)))

haskell-9.4-network-simple

(define-public haskell-9.4-network-uri
  (package
    (name "haskell-9.4-network-uri")
    (version "2.6.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-uri/network-uri-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a3jg6aykwm1yw32nh137hi6r86w2640xwl1p18352bf29rqj64w"))))
    (properties `((upstream-name . "network-uri") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-th-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell/network-uri")
    (synopsis "URI manipulation")
    (description
     "This package provides facilities for parsing and unparsing URIs, and creating
and resolving relative URI references, closely following the URI spec,
<http://www.ietf.org/rfc/rfc3986.txt IETF RFC 3986>.

== Backward-compatibility

In @@network-2.6@@ the \"Network.URI\" module was split off from the
@@network@@ package into this package. If you're using the \"Network.URI\"
module you can be backward compatible and automatically get it from
the right package by using the
</package/network-uri-flag network-uri-flag pseudo-package>
in your @@.cabal@@ file's build-depends (along with dependencies for
both @@network-uri@@ and @@network@@):

>  build-depends:
>     network-uri-flag == 0.1.*

Or you can do the same manually by adding this boilerplate to your
@@.cabal@@ file:

> flag network-uri
>   description: Get Network.URI from the network-uri package
>   default: True
>
> library
>   -- ...
>   if flag(network-uri)
>     build-depends: network-uri >= 2.6, network >= 2.6
>   else
>     build-depends: network-uri < 2.6, network < 2.6

That is, get the module from either @@network < 2.6@@ or from
@@network-uri >= 2.6@@.")
    (license license:bsd-3)))

haskell-9.4-network-uri

(define-public haskell-9.4-pcre-heavy
  (package
    (name "haskell-9.4-pcre-heavy")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-pcre-light)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-string-conversions)))
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

haskell-9.4-pcre-heavy

(define-public haskell-9.4-phatsort
  (package
    (name "haskell-9.4-phatsort")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/phatsort/phatsort-" version
                    ".tar.gz"))
              (sha256
               (base32
                "14czx4s3ywfcxbw8lr60i3cdk62rcfr7m1v98mx3qm1gjinll5js"))))
    (properties `((upstream-name . "phatsort") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-write-hie")
       #:cabal-revision
       ("2" "087vq0cfrvqgqrph5kkpyrvyfc72n9jh7bip68s30w5y4v55a821")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-MonadRandom)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-random-shuffle)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-unix-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ExtremaIS/phatsort-haskell#readme")
    (synopsis "FAT filesystem sort utility")
    (description
     "This package provides a utility for sorting files and directories on a FAT
filesystem.  Please see the README on GitHub at
<https://github.com/ExtremaIS/phatsort-haskell#readme>.")
    (license license:expat)))

haskell-9.4-phatsort

(define-public haskell-9.4-pipes-csv
  (package
    (name "haskell-9.4-pipes-csv")
    (version "1.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-csv/pipes-csv-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1cv8vb5jm95h3jqm4xhndgijcivmcxdjppvcs88bpjbfspfzb1cl"))))
    (properties `((upstream-name . "pipes-csv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftest-hunit")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-MissingH)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cassava)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-pipes)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-pipes-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/pipes-csv")
    (synopsis "Fast, streaming csv parser")
    (description
     "`pipes-csv` is a streaming csv parser built on top of `cassava` and `pipes`")
    (license license:expat)))

haskell-9.4-pipes-csv

(define-public haskell-9.4-pipes-fastx
  (package
    (name "haskell-9.4-pipes-fastx")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-fastx/pipes-fastx-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xds11gfacj7m5lz6cssaj4v5z73ycrdmn57f0qxzqdsc2kln9ii"))))
    (properties `((upstream-name . "pipes-fastx") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-pipes)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-pipes-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-pipes-bytestring)))
    (home-page "https://hackage.haskell.org/package/pipes-fastx")
    (synopsis "Streaming parsers for Fasta and Fastq")
    (description "Streaming parsers for Fasta and Fastq")
    (license license:bsd-3)))

haskell-9.4-pipes-fastx

(define-public haskell-9.4-poly-arity
  (package
    (name "haskell-9.4-poly-arity")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/poly-arity/poly-arity-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0afxrwq5is4l954kmlqm76g0zpy4jw6vvx2275q8xph4zr2ac46b"))))
    (properties `((upstream-name . "poly-arity") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-constraints)))
    (home-page "https://hackage.haskell.org/package/poly-arity")
    (synopsis "Tools for working with functions of undetermined arity")
    (description "")
    (license license:bsd-3)))

haskell-9.4-poly-arity

(define-public haskell-9.4-polysemy-extra
  (package
    (name "haskell-9.4-polysemy-extra")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/polysemy-extra/polysemy-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h2y9i4rcnhj09wcgl092x3zprak26fa6bq7iqir5r7vg8k9yfsj"))))
    (properties `((upstream-name . "polysemy-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-polysemy)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-polysemy-kvstore)))
    (home-page "https://hackage.haskell.org/package/polysemy-extra")
    (synopsis "Extra Input and Output functions for polysemy.")
    (description "")
    (license license:expat)))

haskell-9.4-polysemy-extra

(define-public haskell-9.4-polysemy-methodology
  (package
    (name "haskell-9.4-polysemy-methodology")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/polysemy-methodology/polysemy-methodology-"
                    version ".tar.gz"))
              (sha256
               (base32
                "028hb83q643avimgjhhhi9k1yln7drimxhcfzdjv540m1gbdzpja"))))
    (properties `((upstream-name . "polysemy-methodology") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-polysemy)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-polysemy-kvstore)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-polysemy-several)))
    (home-page "https://hackage.haskell.org/package/polysemy-methodology")
    (synopsis "Domain modelling algebra for polysemy")
    (description "")
    (license license:expat)))

haskell-9.4-polysemy-methodology

(define-public haskell-9.4-process-extras
  (package
    (name "haskell-9.4-process-extras")
    (version "0.7.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/process-extras/process-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0klqgr37f1z2z6i0a9b0giapmq0p35l5k9kz1p7f0k1597w7agi9"))))
    (properties `((upstream-name . "process-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-ListLike)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-generic-deriving)))
    (home-page "https://github.com/seereason/process-extras")
    (synopsis "Process extras")
    (description "Extends <http://hackage.haskell.org/package/process>.
Read process input and output as ByteStrings or
Text, or write your own ProcessOutput instance.
Lazy process input and output.  ProcessMaker class
for more flexibility in the process creation API.")
    (license license:expat)))

haskell-9.4-process-extras

(define-public haskell-9.4-pthread
  (package
    (name "haskell-9.4-pthread")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pthread/pthread-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "03whwpcf9ycdy6bhnw6k0xcwrlf5q92lcfzvh45j3wkksccf8vm6"))))
    (properties `((upstream-name . "pthread") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-generic-deriving)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/tweag/pthread")
    (synopsis "Bindings for the pthread library.")
    (description "")
    (license license:bsd-3)))

haskell-9.4-pthread

(define-public haskell-9.4-regex-applicative-text
  (package
    (name "haskell-9.4-regex-applicative-text")
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
       ("7" "0v4k5hvqcabgiiycn4xayg9kahwifqg4nc0m1wkm3ixcywwg8i88")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-regex-applicative)))
    (home-page "https://github.com/phadej/regex-applicative-text#readme")
    (synopsis "regex-applicative on text")
    (description "Wrapped regex-applicative primitives to work with Text")
    (license license:bsd-3)))

haskell-9.4-regex-applicative-text

(define-public haskell-9.4-reinterpret-cast
  (package
    (name "haskell-9.4-reinterpret-cast")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/reinterpret-cast/reinterpret-cast-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1r2k2fyfm5lknfdfs282l274bgaxf4j4dikk4hpwchjbj0n64m2n"))))
    (properties `((upstream-name . "reinterpret-cast") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage010) haskell-9.4-loop)))
    (home-page "https://github.com/nh2/reinterpret-cast")
    (synopsis
     "Memory reinterpretation casts for Float/Double and Word32/Word64")
    (description
     "Memory reinterpretation casts for Float\\/Double and Word32\\/Word64.

The implementations in the @@.Internal@@ package are different ways to tackle
the problem; the @@array@@ method (current default) is about 5 times faster
than the @@FFI@@ method.")
    (license license:expat)))

haskell-9.4-reinterpret-cast

(define-public haskell-9.4-rocksdb-haskell
  (package
    (name "haskell-9.4-rocksdb-haskell")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rocksdb-haskell/rocksdb-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zsdxnmi2nyg54ic7xszdw7pz4c8ja18nmcaawhjwg2h7y9pqh5q"))))
    (properties `((upstream-name . "rocksdb-haskell") (hidden? . #f)))
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
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages databases) rocksdb)))
    (home-page "http://github.com/serokell/rocksdb-haskell")
    (synopsis "Haskell bindings to RocksDB")
    (description
     "From <http://rocksdb.org>:

RocksDB is an embeddable persistent key-value store for fast storage. RocksDB can also be the foundation for a client-server database but our current focus is on embedded workloads.

RocksDB builds on LevelDB to be scalable to run on servers with many CPU cores, to efficiently use fast storage, to support IO-bound, in-memory and write-once workloads, and to be flexible to allow for innovation.")
    (license license:bsd-3)))

haskell-9.4-rocksdb-haskell

(define-public haskell-9.4-rpmbuild-order
  (package
    (name "haskell-9.4-rpmbuild-order")
    (version "0.4.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rpmbuild-order/rpmbuild-order-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dgl7zh8r5i8k21bgykgi30d9jbgcf9k4nnx3nyc1a594xpijab0"))))
    (properties `((upstream-name . "rpmbuild-order") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-fgl)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-graphviz)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-simple-cmd)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-simple-cmd-args)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/juhp/rpmbuild-order")
    (synopsis "Sort RPM packages in dependency order")
    (description
     "The rpmbuild-order tool sorts source RPM packages by build dependencies,
so that they can be built in a correct order. It does this by reading RPM
package spec files and then topologically sorts them according to their
build dependencies. The code evolved from cabal-sort by Henning Thielemann.
It can also order the dependencies or reverse depends of one or more packages
among the packages checked out in neighboring directories (which can be
useful to see what packages are affected when a low-level package changes,
or which packages are dependents of one of more packages).
It also has support for setting RPM options for bcond etc,
which can affect dependencies. It can also output dependency graphs.
Since version 0.4, a library API is provided.")
    (license license:bsd-3)))

haskell-9.4-rpmbuild-order

(define-public haskell-9.4-s3-signer
  (package
    (name "haskell-9.4-s3-signer")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-byteable)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-cryptohash)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)))
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

haskell-9.4-s3-signer

(define-public haskell-9.4-safe-exceptions-checked
  (package
    (name "haskell-9.4-safe-exceptions-checked")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safe-exceptions-checked/safe-exceptions-checked-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gyaq2pf87dqn0l6n3mi0qamf99y3zj5xxh513c0iqwdh8mma1yq"))))
    (properties `((upstream-name . "safe-exceptions-checked") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "004id0k46j545zvkldfcv5qjgxzl35brm9h6fq72y43b9hl2y55f")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)))
    (home-page
     "https://github.com/mitchellwrosen/safe-exceptions-checked#readme")
    (synopsis "Safe, checked exceptions")
    (description
     "Machinery for throwing and catching both pure and impure synchronous exceptions. Based on <https://www.well-typed.com/blog/2015/07/checked-exceptions/ Lightweight Checked Exceptions> by Edsko de Vries and Adam Gundry.")
    (license license:bsd-3)))

haskell-9.4-safe-exceptions-checked

(define-public haskell-9.4-secp256k1-haskell
  (package
    (name "haskell-9.4-secp256k1-haskell")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-base16)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-entropy)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-string-conversions)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)
                  (@ (gnu packages crypto) libsecp256k1)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskoin/secp256k1-haskell#readme")
    (synopsis "Bindings for secp256k1")
    (description "Sign and verify signatures using the secp256k1 library.")
    (license license:expat)))

haskell-9.4-secp256k1-haskell

(define-public haskell-9.4-semirings
  (package
    (name "haskell-9.4-semirings")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/semirings/semirings-" version
                    ".tar.gz"))
              (sha256
               (base32
                "16q535bvjl7395sqkx6zlw48y4fzr7irp44pcp7w9irpn4cncdcr"))))
    (properties `((upstream-name . "semirings") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fcontainers" "-funordered-containers")
       #:cabal-revision
       ("1" "1c06yhfa053sv3rfz0d72a33l5qb0xmj1b3hy2z7pzxrcay6g1yc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-base-compat-batteries)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "http://github.com/chessai/semirings")
    (synopsis "two monoids as one, in holy haskimony")
    (description
     "Haskellers are usually familiar with monoids and semigroups. A monoid has an appending operation `<>` (or `mappend`),
and an identity element, `mempty`. A semigroup has an appending `<>` operation, but does not require a `mempty` element.

A Semiring has two appending operations, `plus` and `times`, and two respective identity elements, `zero` and `one`.

More formally, a Semiring R is a set equipped with two binary relations `+` and `*`, such that:

(R,+) is a commutative monoid with identity element 0,

(R,*) is a monoid with identity element 1,

(*) left and right distributes over addition, and

multiplication by '0' annihilates R.")
    (license license:bsd-3)))

haskell-9.4-semirings

(define-public haskell-9.4-shake
  (package
    (name "haskell-9.4-shake")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-filepattern)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-heaps)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-js-dgtable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-js-flot)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-js-jquery)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)))
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

haskell-9.4-shake

(define-public haskell-9.4-some-dict-of
  (package
    (name "haskell-9.4-some-dict-of")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/some-dict-of/some-dict-of-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yimraj4r8h1vqsy4pvmfdl9asf2flc1mcfj1jgyh4am4pz0d8p7"))))
    (properties `((upstream-name . "some-dict-of") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-constraints)))
    (home-page "https://github.com/parsonsmatt/some-dict-of#readme")
    (synopsis "Carry evidence of constraints around")
    (description
     "Please see the README on GitHub at <https://github.com/parsonsmatt/some-dict-of#readme>")
    (license license:bsd-3)))

haskell-9.4-some-dict-of

(define-public haskell-9.4-step-function
  (package
    (name "haskell-9.4-step-function")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/step-function/step-function-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mg7zqqs32zdh1x1738kk0yydyksbhx3y3x8n31f7byk5fvzqq6j"))))
    (properties `((upstream-name . "step-function") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("8" "0gailvq05bd7ycmhrqr99p653s5nhfhp4ppj0zg7qsvygwcqg2jf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-base-compat-batteries)))
    (home-page "https://github.com/jonpetterbergman/step-function")
    (synopsis "Staircase functions or piecewise constant functions")
    (description
     "Step functions, staircase functions or piecewise constant functions.
Implemented as a default value and a series of transitions.
Supports merging two step functions using a supplied merging function.
")
    (license license:bsd-3)))

haskell-9.4-step-function

(define-public haskell-9.4-streamly
  (package
    (name "haskell-9.4-streamly")
    (version "0.8.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/streamly/streamly-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0xjvrkyh8i6hkfr3vsi3n56z85qd56nyjiwi1abzhhdshvxw92xg"))))
    (properties `((upstream-name . "streamly") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-fusion-plugin" "-f-inspection" "-f-debug" "-f-dev" "-f-has-llvm" "-f-no-fusion" "-f-streamk" "-f-use-c-malloc" "-fopt" "-f-limit-build-mem" "-f-streamly-core" "-f-use-unliftio")
       #:cabal-revision
       ("1" "1m8lhaabscgk0mj8hp0s8b7zb72padgqr39ky01cj0lxm7byxwf8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-atomic-primops)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-fusion-plugin-types)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-heaps)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-lockfree-queue)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-unicode-data)))
    (home-page "https://streamly.composewell.com")
    (synopsis "Dataflow programming and declarative concurrency")
    (description
     "Browse the documentation at https://streamly.composewell.com.

Streamly is a streaming framework to build reliable and scalable
software systems from modular building blocks using dataflow
programming and declarative concurrency.  Stream fusion optimizations
in streamly result in high-performance, modular combinatorial
programming.

Performance with simplicity:

* Performance on par with C (<https://github.com/composewell/streaming-benchmarks Benchmarks>)
* API close to standard Haskell lists (<https://github.com/composewell/streamly-examples Examples>)
* Declarative concurrency with automatic scaling
* Filesystem, fsnotify, network, and Unicode support included
* More functionality provided via many ecosystem packages

Unified and powerful abstractions:

* Unifies unfolds, arrays, folds, and parsers with streaming
* Unifies @@Data.List@@, @@list-t@@, and @@logict@@ with streaming
* Unifies concurrency with standard streaming abstractions
* Provides time-domain combinators for reactive programming
* Interworks with bytestring and streaming libraries")
    (license license:bsd-3)))

haskell-9.4-streamly

(define-public haskell-9.4-tasty-ant-xml
  (package
    (name "haskell-9.4-tasty-ant-xml")
    (version "1.1.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-ant-xml/tasty-ant-xml-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0h9mllhw9cd0rn34xhj8grwmbny7z7hpd8qmp9lfcdj0s4qx9vx8"))))
    (properties `((upstream-name . "tasty-ant-xml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-generic-deriving)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-xml)))
    (home-page "http://github.com/ocharles/tasty-ant-xml")
    (synopsis "Render tasty output to XML for Jenkins")
    (description
     "A tasty ingredient to output test results in XML, using the Ant schema. This XML can be consumed by the Jenkins continuous integration framework.")
    (license license:bsd-3)))

haskell-9.4-tasty-ant-xml

(define-public haskell-9.4-tasty-golden
  (package
    (name "haskell-9.4-tasty-golden")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-typed-process)))
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

haskell-9.4-tasty-golden

(define-public haskell-9.4-tasty-html
  (package
    (name "haskell-9.4-tasty-html")
    (version "0.4.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-html/tasty-html-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1zf14am7rl0rdh3mschkbsg8h02cv7y8yglxpc9cs2wj14ymhyvv"))))
    (properties `((upstream-name . "tasty-html") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-generic-deriving)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/feuerbach/tasty-html")
    (synopsis "Render tasty output to HTML")
    (description "A tasty ingredient to output test results in HTML5.")
    (license license:expat)))

haskell-9.4-tasty-html

(define-public haskell-9.4-temporary-resourcet
  (package
    (name "haskell-9.4-temporary-resourcet")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/temporary-resourcet/temporary-resourcet-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wgfra7lkb5abnhk295l3vfcna79b8m309wp1cxgl3v96il6yh70"))))
    (properties `((upstream-name . "temporary-resourcet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)))
    (home-page "http://www.github.com/ttuegel/temporary-resourcet")
    (synopsis
     "Portable temporary files and directories with automatic deletion")
    (description
     "The functions for creating temporary files and directories in the base
library are quite limited. The @@unixutils@@ package contains some good ones,
but they aren't portable to Windows.

This library repackages the Cabal implementations of its own temporary file
and folder functions so that you can use them without linking against Cabal
or depending on it being installed.

This library provides the same functionality as the @@temporary@@ package, but
uses @@resourcet@@ to provide automatic deletion without nesting @@withTempFile@@.")
    (license license:bsd-3)))

haskell-9.4-temporary-resourcet

(define-public haskell-9.4-text-show
  (package
    (name "haskell-9.4-text-show")
    (version "3.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-show/text-show-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1iq24lpy59c8wc62ss4bwsaks6wlcr73c8vdyd2xha2p4fswmfyf"))))
    (properties `((upstream-name . "text-show") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbase-4-9" "-ftemplate-haskell-2-11" "-fnew-functor-classes" "-finteger-gmp")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-base-compat-batteries)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-bifunctors)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-bytestring-builder)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-deriving-compat)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-generic-deriving)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-th-abstraction)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-th-lift)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/RyanGlScott/text-show")
    (synopsis "Efficient conversion of values into Text")
    (description
     "@@text-show@@ offers a replacement for the @@Show@@ typeclass intended
for use with @@Text@@ instead of @@String@@s. This package was created
in the spirit of
@@<http://hackage.haskell.org/package/bytestring-show bytestring-show>@@.

At the moment, @@text-show@@ provides instances for most data
types in the @@<http://hackage.haskell.org/package/array array>@@,
@@<http://hackage.haskell.org/package/base base>@@,
@@<http://hackage.haskell.org/package/bytestring bytestring>@@, and
@@<http://hackage.haskell.org/package/text text>@@ packages.
Therefore, much of the source code for @@text-show@@ consists of
borrowed code from those packages in order to ensure that the
behaviors of @@Show@@ and @@TextShow@@ coincide.

For most uses, simply importing \"TextShow\"
will suffice:

@@
module Main where

import TextShow

main :: IO ()
main = printT (Just \\\"Hello, World!\\\")
@@

See also the
<https://github.com/RyanGlScott/text-show/wiki/Naming-conventions naming conventions>
page.

Support for automatically deriving @@TextShow@@ instances can be found
in the \"TextShow.TH\" and \"TextShow.Generic\" modules.")
    (license license:bsd-3)))

haskell-9.4-text-show

(define-public haskell-9.4-th-orphans
  (package
    (name "haskell-9.4-th-orphans")
    (version "0.13.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-orphans/th-orphans-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0z07qcbbsj2b3j9p1qr4jvlpa7qgjfjvymkjd6vbizka1wd2mnwx"))))
    (properties `((upstream-name . "th-orphans") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1lb3gi32gzy6ml8jxzyj6jp9gglgg2737aqc128gqz4g7wvbnasy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-th-compat)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-th-lift)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-th-reify-many)))
    (home-page "https://hackage.haskell.org/package/th-orphans")
    (synopsis "Orphan instances for TH datatypes")
    (description "Orphan instances for TH datatypes.  In particular, instances
for Ord and Lift, as well as a few missing Show / Eq.  These
instances used to live in haskell-src-meta, and that's where
the version number started.")
    (license license:bsd-3)))

haskell-9.4-th-orphans

(define-public haskell-9.4-torrent
  (package
    (name "haskell-9.4-torrent")
    (version "10000.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/torrent/torrent-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0m7s0q7f8c7glxzqhf2j86ch5xhk6jnzwwsa4mkywag22119c290"))))
    (properties `((upstream-name . "torrent") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-bencode)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)))
    (home-page "https://hackage.haskell.org/package/torrent")
    (synopsis "BitTorrent file parser and generater")
    (description "")
    (license license:bsd-3)))

haskell-9.4-torrent

(define-public haskell-9.4-turtle
  (package
    (name "haskell-9.4-turtle")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/turtle/turtle-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "171viripwn8hg3afkkswr243bv7q0r0bz3mn0bflddm4jdf49597"))))
    (properties `((upstream-name . "turtle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "00jxvvpffllwcaw2sg0rymj66963ihifpjn4m94mgscqwl25cfqs")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-clock)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-foldl)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hostname)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-managed)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-optional-args)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-streaming-commons)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-unix-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/turtle")
    (synopsis "Shell programming, Haskell-style")
    (description
     "@@turtle@@ is a reimplementation of the Unix command line environment
in Haskell so that you can use Haskell as both a shell and a scripting
language.

Features include:

* Batteries included: Command an extended suite of predefined utilities

* Interoperability: You can still run external shell commands

* Portability: Works on Windows, OS X, and Linux

* Exception safety: Safely acquire and release resources

* Streaming: Transform or fold command output in constant space

* Patterns: Use typed regular expressions that can parse structured values

* Formatting: Type-safe @@printf@@-style text formatting

* Modern: Supports @@text@@

Read \"Turtle.Tutorial\" for a detailed tutorial or \"Turtle.Prelude\" for a
quick-start guide

@@turtle@@ is designed to be beginner-friendly, but as a result lacks certain
features, like tracing commands.  If you feel comfortable using @@turtle@@
then you should also check out the @@Shelly@@ library which provides similar
functionality.")
    (license license:bsd-3)))

haskell-9.4-turtle

(define-public haskell-9.4-type-of-html-static
  (package
    (name "haskell-9.4-type-of-html-static")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-of-html-static/type-of-html-static-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00329zkxlbsjlwnw2pz2w6ahiam5c1k9j9fv2608wjfmxr8xkcr9"))))
    (properties `((upstream-name . "type-of-html-static") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-type-of-html)))
    (home-page "https://github.com/knupfer/type-of-html-static")
    (synopsis "Optimize static parts of type-of-html.")
    (description
     "This library provides the TH-function 'static' to annote which parts of your page are static to dramatically increase performance.
It converts and escapes it's argument at compiletime and lifts it to a Proxy Symbol to avoid even appending of Builder.")
    (license license:bsd-3)))

haskell-9.4-type-of-html-static

(define-public haskell-9.4-type-rig
  (package
    (name "haskell-9.4-type-rig")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-rig/type-rig-" version
                    ".tar.gz"))
              (sha256
               (base32
                "105p9mvcig9damgihywjjikxcgdqgzb08w721rc908kxnz6f5m38"))))
    (properties `((upstream-name . "type-rig") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-invariant)))
    (home-page "https://github.com/AshleyYakeley/type-rig#readme")
    (synopsis "Classes for the rig (sums and products) of types")
    (description "")
    (license license:bsd-2)))

haskell-9.4-type-rig

(define-public haskell-9.4-unicode-transforms
  (package
    (name "haskell-9.4-unicode-transforms")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unicode-transforms/unicode-transforms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1z29jvli2rqkynfxni1gibl81458j7h8lrb8fg6lpnj8svhy2y1j"))))
    (properties `((upstream-name . "unicode-transforms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-dev" "-f-bench-show" "-f-has-icu" "-f-has-llvm" "-f-use-gauge")
       #:cabal-revision
       ("2" "1imm3svpz2shilj2kmmmcyy5yd4c1mpmz5v1gvjrr98hrab2i9x7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-unicode-data)))
    (home-page "http://github.com/composewell/unicode-transforms")
    (synopsis "Unicode normalization")
    (description
     "Fast Unicode 14.0.0 normalization in Haskell (NFC, NFKC, NFD, NFKD).")
    (license license:bsd-3)))

haskell-9.4-unicode-transforms

(define-public haskell-9.4-unit-constraint
  (package
    (name "haskell-9.4-unit-constraint")
    (version "0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unit-constraint/unit-constraint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nayhjyprph6bg2hhrvd91nmrzz1bixlfib4cxsxpj8n014fhva4"))))
    (properties `((upstream-name . "unit-constraint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-constraints)))
    (home-page "https://hackage.haskell.org/package/unit-constraint")
    (synopsis "Extremely simple typeclass")
    (description "")
    (license license:bsd-3)))

haskell-9.4-unit-constraint

(define-public haskell-9.4-unliftio
  (package
    (name "haskell-9.4-unliftio")
    (version "0.2.23.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unliftio/unliftio-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1zg4ddi4z85550abw9ijycbbjg8ddig7r0vcma8ik03dxzga71id"))))
    (properties `((upstream-name . "unliftio") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)))
    (home-page "https://github.com/fpco/unliftio/tree/master/unliftio#readme")
    (synopsis
     "The MonadUnliftIO typeclass for unlifting monads to IO (batteries included)")
    (description
     "Please see the documentation and README at <https://www.stackage.org/package/unliftio>")
    (license license:expat)))

haskell-9.4-unliftio

(define-public haskell-9.4-validity-bytestring
  (package
    (name "haskell-9.4-validity-bytestring")
    (version "0.4.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-bytestring/validity-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ck7pn8c8srwdwpcx6x4ihixff07kigq8q9sjkc3zzyf54n93f3x"))))
    (properties `((upstream-name . "validity-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for bytestring")
    (description "Please see README.md")
    (license license:expat)))

haskell-9.4-validity-bytestring

(define-public haskell-9.4-validity-containers
  (package
    (name "haskell-9.4-validity-containers")
    (version "0.5.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-containers/validity-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qw5p60dr54d2wh49y6x33hbks4d74m8pr5zygblzk0y70warqld"))))
    (properties `((upstream-name . "validity-containers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for containers")
    (description "")
    (license license:expat)))

haskell-9.4-validity-containers

(define-public haskell-9.4-validity-primitive
  (package
    (name "haskell-9.4-validity-primitive")
    (version "0.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-primitive/validity-primitive-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0r9wy91qr2c8lf6llv9qyirb1vjkq4nb41zqph5ip9gjjj7fzk9y"))))
    (properties `((upstream-name . "validity-primitive") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for primitive")
    (description "")
    (license license:expat)))

haskell-9.4-validity-primitive

(define-public haskell-9.4-validity-scientific
  (package
    (name "haskell-9.4-validity-scientific")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-scientific/validity-scientific-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vqqwlhamykz1vb5gc6krkcq3ixdmkld17c5vsxd0drnjcsllfkp"))))
    (properties `((upstream-name . "validity-scientific") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for scientific")
    (description "")
    (license license:expat)))

haskell-9.4-validity-scientific

(define-public haskell-9.4-validity-text
  (package
    (name "haskell-9.4-validity-text")
    (version "0.3.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-text/validity-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0igxjd53aqlhhnjilbyjsxs4hjc8b21mpi504kc8c60q0ysq7vks"))))
    (properties `((upstream-name . "validity-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for text")
    (description "")
    (license license:expat)))

haskell-9.4-validity-text

(define-public haskell-9.4-validity-time
  (package
    (name "haskell-9.4-validity-time")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-time/validity-time-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ik3syh9hd7jcfydp7fj8rghxl6zjs6lcm1f0xadm0czw6gb82k1"))))
    (properties `((upstream-name . "validity-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for time")
    (description "")
    (license license:expat)))

haskell-9.4-validity-time

(define-public haskell-9.4-validity-unordered-containers
  (package
    (name "haskell-9.4-validity-unordered-containers")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-unordered-containers/validity-unordered-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11ra6d7a711bcl6fndj3xwk3g34nq3bpqdcb8zrpjlv9p4h6n3gj"))))
    (properties `((upstream-name . "validity-unordered-containers")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for unordered-containers")
    (description "")
    (license license:expat)))

haskell-9.4-validity-unordered-containers

(define-public haskell-9.4-validity-uuid
  (package
    (name "haskell-9.4-validity-uuid")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-uuid/validity-uuid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1m4z9q8m07ssrg6a4lj7501kjnbp9hazg3gyfwrbdbrw7p7jjd9l"))))
    (properties `((upstream-name . "validity-uuid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-uuid)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for uuid")
    (description "")
    (license license:expat)))

haskell-9.4-validity-uuid

(define-public haskell-9.4-validity-vector
  (package
    (name "haskell-9.4-validity-vector")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-vector/validity-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jbfd3h9k0b4ifaaqqar54r86hm1jiixyxrgs2ln7ni00b0ncv1y"))))
    (properties `((upstream-name . "validity-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for vector")
    (description "")
    (license license:expat)))

haskell-9.4-validity-vector

(define-public haskell-9.4-vty
  (package
    (name "haskell-9.4-vty")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-microlens-mtl)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-microlens-th)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-parallel)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-quickcheck-assertions)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-smallcheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-string-qq)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-test-framework-smallcheck)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
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

haskell-9.4-vty

(define-public haskell-9.4-wai
  (package
    (name "haskell-9.4-wai")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-vault)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/yesodweb/wai")
    (synopsis "Web Application Interface.")
    (description
     "Provides a common protocol for communication between web applications and web servers.

API docs and the README are available at <http://www.stackage.org/package/wai>.")
    (license license:expat)))

haskell-9.4-wai

(define-public haskell-9.4-web-routes
  (package
    (name "haskell-9.4-web-routes")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "http://www.happstack.com/docs/crashcourse/index.html#web-routes")
    (synopsis "portable, type-safe URL routing")
    (description
     "A collection of types and functions that ensure that URLs generated by an application are valid. Need more properties here.")
    (license license:bsd-3)))

haskell-9.4-web-routes

(define-public haskell-9.4-webpage
  (package
    (name "haskell-9.4-webpage")
    (version "0.0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/webpage/webpage-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1nbnpqbknfgw9pyj0phgc9g5srwdzzga3vy58yin25xvkzj2grfr"))))
    (properties `((upstream-name . "webpage") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-lucid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/athanclark/webpage#readme")
    (synopsis "Organized and simple web page scaffold for blaze and lucid")
    (description
     "Please see the README on Github at <https://github.com/athanclark/webpage#readme>")
    (license license:bsd-3)))

haskell-9.4-webpage

(define-public haskell-9.4-websockets
  (package
    (name "haskell-9.4-websockets")
    (version "0.12.7.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/websockets/websockets-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0g3z0n4irf3gvbdf9p97jq05ybdg0gwjy5bj4nfc7ivsvyhaic6k"))))
    (properties `((upstream-name . "websockets") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-example")
       #:cabal-revision
       ("2" "045dsjhhwv73wrs6f91az9hvxygznmx14g6f3fv69yhz9s6lbkry")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-SHA)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-bytestring-builder)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-clock)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-entropy)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-streaming-commons)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://jaspervdj.be/websockets")
    (synopsis
     "A sensible and clean way to write WebSocket-capable servers in Haskell.")
    (description
     "This library allows you to write WebSocket-capable servers.

An example server:
<https://github.com/jaspervdj/websockets/blob/master/example/server.lhs>

An example client:
<https://github.com/jaspervdj/websockets/blob/master/example/client.hs>

See also:

* The specification of the WebSocket protocol:
<http://www.whatwg.org/specs/web-socket-protocol/>

* The JavaScript API for dealing with WebSockets:
<http://www.w3.org/TR/websockets/>")
    (license license:bsd-3)))

haskell-9.4-websockets

(define-public haskell-9.4-x509-system
  (package
    (name "haskell-9.4-x509-system")
    (version "1.6.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/x509-system/x509-system-"
                    version ".tar.gz"))
              (sha256
               (base32
                "049bdaxrih49nkhkyl2342qnbx2f0q99z8rld648bz1kkgyizz38"))))
    (properties `((upstream-name . "x509-system") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-pem)
                  (@ (gnu packages stackage ghc-9.4 stage009) haskell-9.4-x509)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-x509-store)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/vincenthz/hs-certificate")
    (synopsis "Handle per-operating-system X.509 accessors and storage")
    (description
     "System X.509 handling for accessing operating system dependents store and other storage methods")
    (license license:bsd-3)))

haskell-9.4-x509-system

(define-public haskell-9.4-x509-validation
  (package
    (name "haskell-9.4-x509-validation")
    (version "1.6.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/x509-validation/x509-validation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j7is28ljz4yxwxz5ax3x7ykgwkr38dx46bw7vgj4arkk7hl93hd"))))
    (properties `((upstream-name . "x509-validation") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hourglass)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-pem)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage009) haskell-9.4-x509)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-x509-store)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/vincenthz/hs-certificate")
    (synopsis "X.509 Certificate and CRL validation")
    (description "X.509 Certificate and CRL validation. please see README")
    (license license:bsd-3)))

haskell-9.4-x509-validation

(define-public haskell-9.4-xdg-desktop-entry
  (package
    (name "haskell-9.4-xdg-desktop-entry")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xdg-desktop-entry/xdg-desktop-entry-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xlniirgj01v02dp6wx8iw038p4mx2pa3rmwfv3g7k5raa7gzapb"))))
    (properties `((upstream-name . "xdg-desktop-entry") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-ConfigFile)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-either)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-multimap)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)))
    (home-page "https://hackage.haskell.org/package/xdg-desktop-entry")
    (synopsis "Parse files conforming to the xdg desktop entry spec")
    (description "")
    (license license:bsd-3)))

haskell-9.4-xdg-desktop-entry

(define-public haskell-9.4-xmlbf-xmlhtml
  (package
    (name "haskell-9.4-xmlbf-xmlhtml")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xmlbf-xmlhtml/xmlbf-xmlhtml-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0d93ywr70qmjd2yd33b5k8b5n1l01cj1clbm93hq6sfjjnw4cyi0"))))
    (properties `((upstream-name . "xmlbf-xmlhtml") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-xmlbf)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-xmlhtml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://gitlab.com/k0001/xmlbf")
    (synopsis "xmlhtml backend support for the xmlbf library.")
    (description "")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.4-xmlbf-xmlhtml

(define-public haskell-9.4-zenacy-html
  (package
    (name "haskell-9.4-zenacy-html")
    (version "2.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zenacy-html/zenacy-html-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1468haqjgmnh6drf5cfk42v0x80pr3a9asap8l6m1l4pwy531wkh"))))
    (properties `((upstream-name . "zenacy-html") (hidden? . #f)))
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
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-pretty-show)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-word8)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mlcfp/zenacy-html")
    (synopsis "A standard compliant HTML parsing library")
    (description
     "Zenacy HTML is an HTML parsing and processing library that implements the
WHATWG HTML parsing standard.  The standard is described as a state machine
that this library implements exactly as spelled out including all the error
handling, recovery, and conformance checks that makes it robust in handling
any HTML pulled from the web.  In addition to parsing, the library provides
many processing features to help extract information from web pages or
rewrite them and render the modified results.")
    (license license:expat)))

haskell-9.4-zenacy-html

(define-public haskell-9.4-zenacy-unicode
  (package
    (name "haskell-9.4-zenacy-unicode")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zenacy-unicode/zenacy-unicode-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0v9zsiqm07gmyqa3c3caak2lfi8z499xmj0xa3lyx8s2nd6aficn"))))
    (properties `((upstream-name . "zenacy-unicode") (hidden? . #f)))
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
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-word8)))
    (home-page "https://github.com/mlcfp/zenacy-unicode")
    (synopsis "Unicode utilities for Haskell")
    (description
     "Zenacy Unicode includes tools for checking byte order marks (BOM) and
cleaning data to remove invalid bytes.  These tools can help ensure that
data pulled from the web can be parsed and converted to text.")
    (license license:expat)))

haskell-9.4-zenacy-unicode

