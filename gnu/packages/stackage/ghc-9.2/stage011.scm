;;; generated file
(define-module (gnu packages stackage ghc-9.2 stage011)
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
(define-public haskell-9.2-HaskellNet
  (package
    (name "haskell-9.2-HaskellNet")
    (version "0.6.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HaskellNet/HaskellNet-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0lqdqch6qwfrf89hfmvvcna2wgvhzx02v0cwsm7bbhq258alfapj"))))
    (properties `((upstream-name . "HaskellNet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-bsd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-base64)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cryptohash-md5)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-mime-mail)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-network-bsd)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-old-time)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/qnikst/HaskellNet")
    (synopsis "Client support for POP3, SMTP, and IMAP")
    (description
     "This package provides client support for the POP3,
SMTP, and IMAP protocols.

Full examples can be found in the <https://github.com/qnikst/HaskellNet/tree/master/example repository>.
Additional documentation on the major updates can be found in the
<https://github.com/qnikst/HaskellNet/blob/master/Updating.md Updating.md> file")
    (license license:bsd-3)))

haskell-9.2-HaskellNet

(define-public haskell-9.2-MemoTrie
  (package
    (name "haskell-9.2-MemoTrie")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-newtype-generics)))
    (home-page "https://github.com/conal/MemoTrie")
    (synopsis "Trie-based memo functions")
    (description
     "MemoTrie provides a basis for memoized functions over some domains,
using tries.  It's based on ideas from Ralf Hinze and code from
Spencer Janssen. Generic support thanks to Sam Boosalis.

Project wiki page: <http://haskell.org/haskellwiki/MemoTrie>

&#199; 2008-2019 by Conal Elliott; BSD3 license.")
    (license license:bsd-3)))

haskell-9.2-MemoTrie

(define-public haskell-9.2-Spintax
  (package
    (name "haskell-9.2-Spintax")
    (version "0.3.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Spintax/Spintax-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "000yprzvq72ia6wfk3hjarb8anx3wfm54rzpv8x7d2zf09pzxk6k"))))
    (properties `((upstream-name . "Spintax") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-mwc-random)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/MichelBoucey/spintax")
    (synopsis "Random text generation based on spintax")
    (description
     "Random text generation based on spintax with nested alternatives and empty options.")
    (license license:bsd-3)))

haskell-9.2-Spintax

(define-public haskell-9.2-ace
  (package
    (name "haskell-9.2-ace")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bifunctors)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-blaze-markup)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
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

haskell-9.2-ace

(define-public haskell-9.2-annotated-exception
  (package
    (name "haskell-9.2-annotated-exception")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)))
    (home-page "https://github.com/parsonsmatt/annotated-exception#readme")
    (synopsis "Exceptions, with checkpoints and context.")
    (description
     "Please see the README on Github at <https://github.com/parsonsmatt/annotated-exception#readme>")
    (license license:bsd-3)))

haskell-9.2-annotated-exception

(define-public haskell-9.2-aos-signature
  (package
    (name "haskell-9.2-aos-signature")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aos-signature/aos-signature-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sm925sr3ifi44wp7ndgjwwk3d3xy75ai6kgll573ngdicy3b2n3"))))
    (properties `((upstream-name . "aos-signature") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-optimized" "-f-static")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-protolude)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/adjoint-io/aos-signature#readme")
    (synopsis "An implementation of the AOS signatures")
    (description
     "An implementation of 1-out-of-n signatures from a variety of keys")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-aos-signature

(define-public haskell-9.2-ascii-case
  (package
    (name "haskell-9.2-ascii-case")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-ascii-char)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/typeclasses/ascii-case")
    (synopsis "ASCII letter case")
    (description "This package defines a @@Case@@ type that describes the
two varieties of ASCII letter: capital and small.")
    (license license:asl2.0)))

haskell-9.2-ascii-case

(define-public haskell-9.2-ascii-progress
  (package
    (name "haskell-9.2-ascii-progress")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-concurrent-output)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/yamadapc/haskell-ascii-progress")
    (synopsis "A simple progress bar for the console.")
    (description
     "A simple Haskell progress bar for the console. Heavily borrows from TJ
Holowaychuk's Node.JS project
<https://github.com/tj/node-progress progress>

<https://github.com/yamadapc/haskell-ascii-progress github>")
    (license license:expat)))

haskell-9.2-ascii-progress

(define-public haskell-9.2-attoparsec-base64
  (package
    (name "haskell-9.2-attoparsec-base64")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-word8)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/athanclark/attoparsec-base64#readme")
    (synopsis
     "Fetch only base64 characters, erroring in the attoparsec monad on failure")
    (description "")
    (license license:bsd-3)))

haskell-9.2-attoparsec-base64

(define-public haskell-9.2-attoparsec-binary
  (package
    (name "haskell-9.2-attoparsec-binary")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec-binary/attoparsec-binary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02vswxsgayw50xli7mbacsjmk1diifzkfgnyfn9ck5mk41dl9rh5"))))
    (properties `((upstream-name . "attoparsec-binary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/attoparsec-binary")
    (synopsis "Binary processing extensions to Attoparsec.")
    (description
     "This package adds a collection of helper functions to make
the task dealing with binary data of varying endianness from within an
Attoparsec parser easier.")
    (license license:bsd-3)))

haskell-9.2-attoparsec-binary

(define-public haskell-9.2-attoparsec-expr
  (package
    (name "haskell-9.2-attoparsec-expr")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec-expr/attoparsec-expr-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0z25pc3rq98ysk92jclr90n35982a566sxri51yh1s9c24vd8k4d"))))
    (properties `((upstream-name . "attoparsec-expr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1cpgzd24fvrpsly113ck8rhrc33pfw8qhfpk4wn85qj95763faqb")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/attoparsec-expr")
    (synopsis "Port of parsec's expression parser to attoparsec.")
    (description "Port of parsec's expression parser to attoparsec.")
    (license license:bsd-3)))

haskell-9.2-attoparsec-expr

(define-public haskell-9.2-attoparsec-iso8601
  (package
    (name "haskell-9.2-attoparsec-iso8601")
    (version "1.0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec-iso8601/attoparsec-iso8601-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zmj6v63xjj20ja50ffbi222yg513cnnqyxl76ybb4x98z9jld0k"))))
    (properties `((upstream-name . "attoparsec-iso8601") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-developer" "-f-fast")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-base-compat-batteries)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-time-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell/aeson")
    (synopsis "Parsing of ISO 8601 dates, originally from aeson")
    (description "Parsing of ISO 8601 dates, originally from aeson.")
    (license license:bsd-3)))

haskell-9.2-attoparsec-iso8601

(define-public haskell-9.2-attoparsec-time
  (package
    (name "haskell-9.2-attoparsec-time")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec-time/attoparsec-time-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zjr27ajqigl9nlmfrh7ypry36simcbxw61is73157pg0wjb7qyr"))))
    (properties `((upstream-name . "attoparsec-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/attoparsec-time")
    (synopsis "Attoparsec parsers of time")
    (description
     "A collection of Attoparsec parsers for the \\\"time\\\" library")
    (license license:expat)))

haskell-9.2-attoparsec-time

(define-public haskell-9.2-battleship-combinatorics
  (package
    (name "haskell-9.2-battleship-combinatorics")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/battleship-combinatorics/battleship-combinatorics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pr1vcq69ndkln5jd6kxd0gn8jvc8n7aiqanxsrqnjpx4kkixph4"))))
    (properties `((upstream-name . "battleship-combinatorics") (hidden? . #f)))
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
                     haskell-9.2-combinatorial)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-non-empty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-pooled-io)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prelude-compat)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-set-cover)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-storable-record)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-storablevector)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-utility-ht)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hub.darcs.net/thielema/battleship-combinatorics/")
    (synopsis "Compute number of possible arrangements in the battleship game")
    (description
     "Compute number of possible arrangements in the battleship game
with different methods.

<https://en.wikipedia.org/wiki/Battleship_(game)>")
    (license license:bsd-3)))

haskell-9.2-battleship-combinatorics

(define-public haskell-9.2-bencoding
  (package
    (name "haskell-9.2-bencoding")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/sergv/bencoding")
    (synopsis "A library for encoding and decoding of BEncode data.")
    (description
     "A library for fast and easy encoding and decoding of BEncode data.")
    (license license:bsd-3)))

haskell-9.2-bencoding

(define-public haskell-9.2-bits
  (package
    (name "haskell-9.2-bits")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-bytes)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/bits")
    (synopsis "Various bit twiddling and bitwise serialization primitives")
    (description "Various bit twiddling and bitwise serialization primitives.")
    (license license:bsd-3)))

haskell-9.2-bits

(define-public haskell-9.2-bound
  (package
    (name "haskell-9.2-bound")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bifunctors)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-bytes)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-deriving-compat)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-mmorph)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-th-abstraction)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.2-bound

(define-public haskell-9.2-bytestring-conversion
  (package
    (name "haskell-9.2-bytestring-conversion")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bytestring-conversion/bytestring-conversion-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ls1jqf4r2hk0mcxmlviw6vgs0cn1db99w2fggsg6x39pi31rk8c"))))
    (properties `((upstream-name . "bytestring-conversion") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-double-conversion)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://gitlab.com/twittner/bytestring-conversion")
    (synopsis "Type-classes to convert values to and from ByteString.")
    (description
     "Defines the type-classes 'ToByteString' and 'FromByteString'
to convert values to and from textual 'ByteString' encodings.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-9.2-bytestring-conversion

(define-public haskell-9.2-cairo
  (package
    (name "haskell-9.2-cairo")
    (version "0.13.8.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cairo/cairo-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1sq2imy359vnbny610n7655a4z5a8fgdxanys4f5nw84246hc2yl"))))
    (properties `((upstream-name . "cairo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fcairo_pdf" "-fcairo_ps" "-fcairo_svg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) cairo)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-gtk2hs-buildtools)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://projects.haskell.org/gtk2hs/")
    (synopsis "Binding to the Cairo library.")
    (description
     "Cairo is a library to render high quality vector graphics. There
exist various backends that allows rendering to Gtk windows, PDF,
PS, PNG and SVG documents, amongst others.")
    (license license:bsd-3)))

haskell-9.2-cairo

(define-public haskell-9.2-cases
  (package
    (name "haskell-9.2-cases")
    (version "0.1.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cases/cases-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0sla22xr1b8b1655l2rzhy31lxirahypgri0bphd9l6jy874mr40"))))
    (properties `((upstream-name . "cases") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/cases ")
    (synopsis "A converter for spinal, snake and camel cases")
    (description
     "A parser-based converter library for spinal, snake and camel cases.")
    (license license:expat)))

haskell-9.2-cases

(define-public haskell-9.2-cassava
  (package
    (name "haskell-9.2-cassava")
    (version "0.5.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cassava/cassava-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1gp954w05bj83z4i6isq2qxi1flqwppsgxxrp1f75mrs8cglbj5l"))))
    (properties `((upstream-name . "cassava") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bytestring--lt-0_10_4")
       #:cabal-revision
       ("1" "1lavd2c7w2p2x4i7h35r8kgcgrrlhcql70zk5vgqv5ll04pp0niy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-Only)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-text-short)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-hvr/cassava")
    (synopsis "A CSV parsing and encoding library")
    (description
     "@@cassava@@ is a library for parsing and encoding [RFC 4180](https://tools.ietf.org/html/rfc4180)
compliant [comma-separated values (CSV)](https://en.wikipedia.org/wiki/Comma-separated_values) data,
which is a textual line-oriented format commonly used for exchanging tabular data.

@@cassava@@'s API includes support for

- Index-based record-conversion
- Name-based record-conversion
- Typeclass directed conversion of fields and records
- Built-in field-conversion instances for standard types
- Customizable record-conversion instance derivation via GHC generics
- Low-level [bytestring](https://hackage.haskell.org/package/bytestring) builders (see \"Data.Csv.Builder\")
- Incremental decoding and encoding API (see \"Data.Csv.Incremental\")
- Streaming API for constant-space decoding (see \"Data.Csv.Streaming\")

Moreover, this library is designed to be easy to use; for instance, here's a
very simple example of encoding CSV data:

>>> Data.Csv.encode [(\"John\",27),(\"Jane\",28)]
\"John,27\\r\\nJane,28\\r\\n\"

Please refer to the documentation in \"Data.Csv\" and the included [README](#readme) for more usage examples.")
    (license license:bsd-3)))

haskell-9.2-cassava

(define-public haskell-9.2-character-cases
  (package
    (name "haskell-9.2-character-cases")
    (version "0.1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/character-cases/character-cases-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nq461ij8h529skb55yn7afvx846r0va97kzbd1c16z1n4h94nhy"))))
    (properties `((upstream-name . "character-cases") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/aiya000/hs-character-cases#readme")
    (synopsis "Exposes subspecies types of Char. And naming cases.")
    (description
     "e.g. meaning of [a-z], [A-Z], [0-9], PascalCase, camelCase, and snake_case. Please see https://github.com/aiya000/hs-character-cases#README.md")
    (license license:expat)))

haskell-9.2-character-cases

(define-public haskell-9.2-checkers
  (package
    (name "haskell-9.2-checkers")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)))
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

haskell-9.2-checkers

(define-public haskell-9.2-cmark-lucid
  (package
    (name "haskell-9.2-cmark-lucid")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cmark-lucid/cmark-lucid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00rwiax7dd01259vrdkv574zi58agr17p7jkzixgwchfxngpp4nj"))))
    (properties `((upstream-name . "cmark-lucid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1mizbv18bl8qrgz27wlz7sb6cfhblmp7p7gh7dqq8g0r4djrvqg5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-cmark)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-lucid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/aelve/cmark-lucid")
    (synopsis "Use cmark with Lucid")
    (description
     "A package for rendering Markdown (parsed via cmark) to Lucid's HTML.")
    (license license:bsd-3)))

haskell-9.2-cmark-lucid

(define-public haskell-9.2-comonad-extras
  (package
    (name "haskell-9.2-comonad-extras")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-distributive)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/comonad-extras/")
    (synopsis "Exotic comonad transformers")
    (description "Exotic comonad transformers")
    (license license:bsd-3)))

haskell-9.2-comonad-extras

(define-public haskell-9.2-configurator
  (package
    (name "haskell-9.2-configurator")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unix-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
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

haskell-9.2-configurator

(define-public haskell-9.2-configurator-pg
  (package
    (name "haskell-9.2-configurator-pg")
    (version "0.2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/configurator-pg/configurator-pg-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17ik5vl6zriqgp7fxkv60l6jcfnh842rw5254ly3wy2c13nk9h4f"))))
    (properties `((upstream-name . "configurator-pg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-protolude)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/robx/configurator-pg")
    (synopsis "Reduced parser for configurator-ng config files")
    (description
     "This module provides a simplified and updated interface to the
configuration file format of
<https://hackage.haskell.org/package/configurator configurator> and
<https://hackage.haskell.org/package/configurator-ng configurator-ng>.
Its aim is primarily to allow updating programs that depend on
configurator-ng to new versions of GHC without changing the
configuration file format.")
    (license license:bsd-3)))

haskell-9.2-configurator-pg

(define-public haskell-9.2-connection-pool
  (package
    (name "haskell-9.2-connection-pool")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/connection-pool/connection-pool-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lvkcsd042s936fj5c9y5gg4iiq09n42adkv8q2rnwcbd6vl7kzj"))))
    (properties `((upstream-name . "connection-pool") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pedantic")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-between)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-resource-pool)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-streaming-commons)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/trskop/connection-pool")
    (synopsis
     "Connection pool built on top of resource-pool and streaming-commons.")
    (description
     "Connection poll is a family of specialised resource pools. Currently package
provides two variants:

1. pool for TCP client connections,

2. and pool for UNIX Sockets client connections.

In addition it can be used to build your own connection pool using provided
primitives.

This package is built on top of
<http://hackage.haskell.org/package/resource-pool resource-pool> and
<http://hackage.haskell.org/package/streaming-commons streaming-commons>.
The later allows us to use
<http://hackage.haskell.org/package/conduit-extra conduit-extra> package
for implementation of TCP or UNIX Sockets clients.

For examples and other details see documentation in \"Data.ConnectionPool\"
module.")
    (license license:bsd-3)))

haskell-9.2-connection-pool

(define-public haskell-9.2-context-resource
  (package
    (name "haskell-9.2-context-resource")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-context)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jship/context#readme")
    (synopsis "Thread-safe, pool-compatible resource provider")
    (description
     "A thread-safe, pool-compatible resource provider abstraction that supports
resource-sharing within nested actions.")
    (license license:expat)))

haskell-9.2-context-resource

(define-public haskell-9.2-cpuinfo
  (package
    (name "haskell-9.2-cpuinfo")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cpuinfo/cpuinfo-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0973bkgcfha0xyimizgq55w4a32gjgklcikfhcwkak4m9czwyynr"))))
    (properties `((upstream-name . "cpuinfo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/TravisWhitaker/cpuinfo")
    (synopsis "Haskell Library for Checking CPU Information")
    (description "Haskell Library for Checking CPU Information")
    (license license:expat)))

haskell-9.2-cpuinfo

(define-public haskell-9.2-cql
  (package
    (name "haskell-9.2-cql")
    (version "4.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cql/cql-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "04s947r9wsqamqx3sq0h41l0mwxcw7pqc11jlrj8r94wgiikpkh2"))))
    (properties `((upstream-name . "cql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-incompatible-varint")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-Decimal)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-iproute)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-uuid)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://gitlab.com/twittner/cql/")
    (synopsis "Cassandra CQL binary protocol.")
    (description
     "Implementation of Cassandra's CQL Binary Protocol
<https://github.com/apache/cassandra/blob/trunk/doc/native_protocol_v3.spec Version 3>
and
<https://github.com/apache/cassandra/blob/trunk/doc/native_protocol_v4.spec Version 4>.

It provides encoding and decoding functionality as well as representations
of the various protocol related types.

Thus it can serve as a building block for writing Cassandra drivers, such
as <http://hackage.haskell.org/package/cql-io cql-io>.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-cql

(define-public haskell-9.2-crypt-sha512
  (package
    (name "haskell-9.2-crypt-sha512")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("8" "09fj4nghk80l8pqxjiddw0v8frwg46v5izkjsx2jvk1ksh6cif2b")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cryptohash-sha512)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/phadej/crypt-sha512")
    (synopsis "Pure Haskell implelementation for GNU SHA512 crypt algorithm")
    (description
     "crypt() is the password encryption function.  It is based on the Data
Encryption Standard algorithm with variations intended (among other things) to
discourage use of hardware implementations of a key search.

This package provides a pure Haskell implementation of SHA512 crypt scheme.")
    (license license:bsd-3)))

haskell-9.2-crypt-sha512

(define-public haskell-9.2-css-text
  (package
    (name "haskell-9.2-css-text")
    (version "0.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/css-text/css-text-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ynd9f4hn2sfwqzbsa0y7phmxq8za7jiblpjwx0ry8b372zhgxaz"))))
    (properties `((upstream-name . "css-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/yesodweb/css-text.git#readme")
    (synopsis "CSS parser and renderer.")
    (description
     "Please see the README and generated docs at <https://www.stackage.org/package/css-text>")
    (license license:expat)))

haskell-9.2-css-text

(define-public haskell-9.2-df1
  (package
    (name "haskell-9.2-df1")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/df1/df1-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0adsmfjfcxsg55y4pahw408b82bi7phyzq48vrf80p84nyxmmpsi"))))
    (properties `((upstream-name . "df1") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0001/di")
    (synopsis
     "Type, render and parse the df1 hierarchical structured log format")
    (description
     "Type, render and parse logs in /df1/ format, a hierarchical structured
log format that is easy for humans and fast for computers.")
    (license license:bsd-3)))

haskell-9.2-df1

(define-public haskell-9.2-di-core
  (package
    (name "haskell-9.2-di-core")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0001/di")
    (synopsis "Typeful hierarchical structured logging without monad towers.")
    (description
     "Typeful hierarchical structured logging without monad towers.")
    (license license:bsd-3)))

haskell-9.2-di-core

(define-public haskell-9.2-either
  (package
    (name "haskell-9.2-either")
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
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1w2rxrj0gc3a7p74pybji8yy2zsjnhxyi4zhlmx4qsyz6w616ggv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bifunctors)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/either/")
    (synopsis "Combinators for working with sums")
    (description "Combinators for working with sums.")
    (license license:bsd-3)))

haskell-9.2-either

(define-public haskell-9.2-elynx-nexus
  (package
    (name "haskell-9.2-elynx-nexus")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/dschrempf/elynx#readme")
    (synopsis "Import and export Nexus files")
    (description
     "Examine, modify, and simulate molecular sequences in a reproducible way. Please see the README on GitHub at <https://github.com/dschrempf/elynx>.")
    (license license:gpl3+)))

haskell-9.2-elynx-nexus

(define-public haskell-9.2-email-validate
  (package
    (name "haskell-9.2-email-validate")
    (version "2.3.2.18")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/email-validate/email-validate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11bi5y5qmri62nl34nl5pv4zs59bjpjknw560yw5ds62gsi2sjcp"))))
    (properties `((upstream-name . "email-validate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Porges/email-validate-hs")
    (synopsis "Email address validation")
    (description "Validating an email address string against RFC 5322")
    (license license:bsd-3)))

haskell-9.2-email-validate

(define-public haskell-9.2-eq
  (package
    (name "haskell-9.2-eq")
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
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1b2k97n787730p3k4fsp16f2i9ddqf5k90cq4r7s2lddmdq0cshr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/eq/")
    (synopsis "Leibnizian equality")
    (description "Leibnizian equality.")
    (license license:bsd-3)))

haskell-9.2-eq

(define-public haskell-9.2-errata
  (package
    (name "haskell-9.2-errata")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/errata/errata-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1nrmakr76x53hdnykl1imcm57s07v85fbmb10pkzd4wwabk9kajp"))))
    (properties `((upstream-name . "errata") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-usewcwidth")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-hspec-golden)))
    (home-page "https://github.com/1Computer1/errata")
    (synopsis "Source code error pretty printing")
    (description
     "An extremely customizable error pretty printer that can handle many kinds of error formatting.
It can handle errors that are connected, disconnected, and those spanning multiple lines.

You can get started by importing the \"Errata\" module.")
    (license license:expat)))

haskell-9.2-errata

(define-public haskell-9.2-fakedata-parser
  (package
    (name "haskell-9.2-fakedata-parser")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/psibi/fakedata-parser#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/psibi/fakedata-parser#readme>")
    (license license:bsd-3)))

haskell-9.2-fakedata-parser

(define-public haskell-9.2-flac
  (package
    (name "haskell-9.2-flac")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-wave)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xiph) flac)))
    (home-page "https://github.com/mrkkrp/flac")
    (synopsis "Complete high-level binding to libFLAC")
    (description "Complete high-level binding to libFLAC.")
    (license license:bsd-3)))

haskell-9.2-flac

(define-public haskell-9.2-flat-mcmc
  (package
    (name "haskell-9.2-flat-mcmc")
    (version "1.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/flat-mcmc/flat-mcmc-" version
                    ".tar.gz"))
              (sha256
               (base32
                "13xdmiw96hb0iw87bzyks5bm58rgcv348aj09ax7gy2qjpq969iv"))))
    (properties `((upstream-name . "flat-mcmc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-formatting)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-mcmc-types)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-monad-par)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-monad-par-extras)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-mwc-probability)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-pipes)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jtobin/flat-mcmc")
    (synopsis "Painless general-purpose sampling.")
    (description
     "flat-mcmc is a Haskell library for painless, efficient, general-purpose
sampling from continuous distributions.

flat-mcmc uses an ensemble sampler that is invariant to affine
transformations of space.  It wanders a target probability distribution's
parameter space as if it had been \"flattened\" or \"unstretched\" in some sense,
allowing many particles to explore it locally and in parallel.

In general this sampler is useful when you want decent performance without
dealing with any tuning parameters or local proposal distributions.

flat-mcmc exports an 'mcmc' function that prints a trace to stdout, as well
as a 'flat' transition operator that can be used more generally.

> import Numeric.MCMC.Flat
> import qualified Data.Vector.Unboxed as U (unsafeIndex)
>
> rosenbrock :: Particle -> Double
> rosenbrock xs = negate (5  * (x1 - x0 ^ 2) ^ 2 + 0.05 * (1 - x0) ^ 2) where
>   x0 = U.unsafeIndex xs 0
>   x1 = U.unsafeIndex xs 1
>
> origin :: Ensemble
> origin = ensemble [
>     particle [negate 1.0, negate 1.0]
>   , particle [negate 1.0, 1.0]
>   , particle [1.0, negate 1.0]
>   , particle [1.0, 1.0]
>   ]
>
> main :: IO ()
> main = withSystemRandom . asGenIO $ mcmc 12500 origin rosenbrock")
    (license license:expat)))

haskell-9.2-flat-mcmc

(define-public haskell-9.2-flay
  (package
    (name "haskell-9.2-flay")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-constraints)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0001/flay")
    (synopsis
     "Work generically on your datatype without knowing its shape nor its contents.")
    (description
     "Work generically on your datatype without knowing its shape nor its contents using
a principlied approach.")
    (license license:bsd-3)))

haskell-9.2-flay

(define-public haskell-9.2-fmt
  (package
    (name "haskell-9.2-fmt")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-call-stack)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-formatting)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-time-locale-compat)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
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

haskell-9.2-fmt

(define-public haskell-9.2-foldl
  (package
    (name "haskell-9.2-foldl")
    (version "1.4.14")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/foldl/foldl-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ihfari2d8czfxfxv5svczpq1cvi3qi55mxphjjqlnabxa76y1cc"))))
    (properties `((upstream-name . "foldl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0v055cj7sw5xa7v0lm2gryfhj8nxhnjrs1zm9nnxyzgv2aivb8vc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-contravariant)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/foldl")
    (synopsis "Composable, streaming, and efficient left folds")
    (description
     "This library provides strict left folds that stream in constant
memory, and you can combine folds using @@Applicative@@ style to derive new
folds.  Derived folds still traverse the container just once and are often as
efficient as hand-written folds.")
    (license license:bsd-3)))

haskell-9.2-foldl

(define-public haskell-9.2-free
  (package
    (name "haskell-9.2-free")
    (version "5.1.10")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/free/free-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0whff0r0nvii5l9z9crw7v0rj0wwblwbnfp99515siyxjkzs9phj"))))
    (properties `((upstream-name . "free") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1qpn9sy2bpngkr9zdi0dvy5knnhbsli3d0nw1ljvw12pisv6njaq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-distributive)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-th-abstraction)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)))
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

haskell-9.2-free

(define-public haskell-9.2-fuzzyset
  (package
    (name "haskell-9.2-fuzzyset")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fuzzyset/fuzzyset-" version
                    ".tar.gz"))
              (sha256
               (base32
                "02rc846kfrkd0gd3j37gkmf87z09rzfa9bz2f0i2b83mh8ppk1sl"))))
    (properties `((upstream-name . "fuzzyset") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ieee754)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-text-metrics)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/laserpants/fuzzyset-haskell")
    (synopsis "Fuzzy set for approximate string matching")
    (description
     "This library is based on the Python and JavaScript libraries with similar names.")
    (license license:bsd-3)))

haskell-9.2-fuzzyset

(define-public haskell-9.2-genvalidity
  (package
    (name "haskell-9.2-genvalidity")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hspec-core)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)))
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

haskell-9.2-genvalidity

(define-public haskell-9.2-ghc-check
  (package
    (name "haskell-9.2-ghc-check")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ghc-paths)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-th-compat)))
    (home-page "https://hackage.haskell.org/package/ghc-check")
    (synopsis
     "detect mismatches between compile-time and run-time versions of the ghc api")
    (description
     "detect mismatches between compile-time and run-time versions of the ghc api")
    (license license:bsd-3)))

haskell-9.2-ghc-check

(define-public haskell-9.2-ghc-lib-parser-ex
  (package
    (name "haskell-9.2-ghc-lib-parser-ex")
    (version "9.2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-lib-parser-ex/ghc-lib-parser-ex-"
                    version ".tar.gz"))
              (sha256
               (base32
                "138wkpy7qpdkp07028flab3lwq4b3mns0qcrkfrhclixlz8pi74v"))))
    (properties `((upstream-name . "ghc-lib-parser-ex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fauto" "-f-no-ghc-lib")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-uniplate)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/shayne-fletcher/ghc-lib-parser-ex#readme")
    (synopsis "Algorithms on GHC parse trees")
    (description
     "Please see the README on GitHub at <https://github.com/shayne-fletcher/ghc-lib-parser-ex#readme>")
    (license license:bsd-3)))

haskell-9.2-ghc-lib-parser-ex

(define-public haskell-9.2-ghc-prof
  (package
    (name "haskell-9.2-ghc-prof")
    (version "1.4.1.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-prof/ghc-prof-" version
                    ".tar.gz"))
              (sha256
               (base32
                "15gshlj8jp85m9y05z1wmssq5rkqyix9890hy1rkmy7nmkhij6mj"))))
    (properties `((upstream-name . "ghc-prof") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dump")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/maoe/ghc-prof")
    (synopsis "Library for parsing GHC time and allocation profiling reports")
    (description
     "ghc-prof is a library for parsing GHC time and allocation profiling reports.")
    (license license:bsd-3)))

haskell-9.2-ghc-prof

(define-public haskell-9.2-githash
  (package
    (name "haskell-9.2-githash")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-th-compat)))
    (home-page "https://github.com/snoyberg/githash#readme")
    (synopsis "Compile git revision info into Haskell projects")
    (description
     "Please see the README and documentation at <https://www.stackage.org/package/githash>")
    (license license:bsd-3)))

haskell-9.2-githash

(define-public haskell-9.2-glib
  (package
    (name "haskell-9.2-glib")
    (version "0.13.8.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/glib/glib-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "09qamkxkpx2paazbh8x225wvwgzgpp0g0a3s708n96q76b4bvd46"))))
    (properties `((upstream-name . "glib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fclosure_signals")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages glib) glib-with-documentation)
                  (@ (gnu packages glib) gobject-introspection-next)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-gtk2hs-buildtools)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://projects.haskell.org/gtk2hs/")
    (synopsis "Binding to the GLIB library for Gtk2Hs.")
    (description
     "GLib is a collection of C data structures and utility functions
for the GObject system, main loop implementation, for strings and
common data structures dealing with Unicode. This package only binds
as much functionality as required to support the packages that
wrap libraries that are themselves based on GLib.")
    (license (license "FSDG-compatible" "LGPL_2_1_only" ""))))

haskell-9.2-glib

(define-public haskell-9.2-gloss
  (package
    (name "haskell-9.2-gloss")
    (version "1.13.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gloss/gloss-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "09yabwajjw6zsbs8p4hsmfz4a032i81d3vnia5f7rrzszbi9svdn"))))
    (properties `((upstream-name . "gloss") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fglut" "-f-glfw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009) haskell-9.2-GLUT)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-OpenGL)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-bmp)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-gloss-rendering)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "http://gloss.ouroborus.net")
    (synopsis "Painless 2D vector graphics, animations and simulations.")
    (description
     "Gloss hides the pain of drawing simple vector graphics behind a nice data type and
a few display functions. Gloss uses OpenGL under the hood, but you won't need to
worry about any of that. Get something cool on the screen in under 10 minutes.")
    (license license:expat)))

haskell-9.2-gloss

(define-public haskell-9.2-hasktags
  (package
    (name "haskell-9.2-hasktags")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-json)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-microlens-platform)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/MarcWeber/hasktags")
    (synopsis
     "Produces ctags \"tags\" and etags \"TAGS\" files for Haskell programs")
    (description
     "Produces ctags \"tags\" and etags \"TAGS\" files for Haskell programs.")
    (license license:bsd-3)))

haskell-9.2-hasktags

(define-public haskell-9.2-headed-megaparsec
  (package
    (name "haskell-9.2-headed-megaparsec")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/headed-megaparsec/headed-megaparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17k4zjvd4i47yz1izbrx98k2lxk5hh553wf94bjn1rdl06vlhc18"))))
    (properties `((upstream-name . "headed-megaparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-parser-combinators)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-selective)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/headed-megaparsec")
    (synopsis "More informative parser")
    (description "")
    (license license:expat)))

haskell-9.2-headed-megaparsec

(define-public haskell-9.2-hkgr
  (package
    (name "haskell-9.2-hkgr")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-simple-cabal)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-simple-cmd-args)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-typed-process)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-xdg-basedir)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/juhp/hkgr")
    (synopsis "Simple Hackage release workflow for package maintainers")
    (description
     "Hkgr (Hackager) is a tool to help make new releases of
Haskell packages, with commands for git tagging, pristine sdist,
and uploading to Hackage.
There is also a command for creating a new local project.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-hkgr

(define-public haskell-9.2-hostname-validate
  (package
    (name "haskell-9.2-hostname-validate")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hostname-validate/hostname-validate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0my8g4kqf9mz7ii79ff53rwkx3yv9kkn4jbm60q4b7g1rzhb3bvz"))))
    (properties `((upstream-name . "hostname-validate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/hostname-validate")
    (synopsis "Validate hostnames e.g. localhost or foo.co.uk.")
    (description
     "Validate hostnames e.g. localhost or foo.co.uk. See also RFC 1123, RFC 952, and RFC 1035.")
    (license license:bsd-3)))

haskell-9.2-hostname-validate

(define-public haskell-9.2-hp2pretty
  (package
    (name "haskell-9.2-hp2pretty")
    (version "0.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hp2pretty/hp2pretty-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1irm8mvcib39r8imdx7y7jisp162i0rwk8w3irs2j746c8vhyv12"))))
    (properties `((upstream-name . "hp2pretty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-floatshow)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://mathr.co.uk/blog/hp2pretty.html")
    (synopsis "generate pretty graphs from heap profiles")
    (description
     "hp2pretty is a rewrite of hp2ps, implemented in Haskell, with
the aims of being maintainable, with more flexible output, and
more beautiful output.  Currently hp2pretty outputs Scalable
Vector Graphics (SVG) only, though PostScript (PS) is planned.
Not all of hp2ps' options are implemented yet in hp2pretty.

In hp2pretty-0.10 parsing of very large files is made possible
by reading the file(s) twice as Text.Lazy.

In hp2pretty-0.9 a mode for detached key is added:

> hp2pretty --key=inline *.hp
> hp2pretty --key=key.txt *.hp
> hp2pretty --key=- *.hp

The output file is an simple text file, that mentions additional
SVG files for the legend - how you format it is up to you.

A mode for detached titles is also added:

> hp2pretty --title=inline *.hp
> hp2pretty --title=title.txt *.hp
> hp2pretty --title=- *.hp

The output file is an simple text file, that mentions the image
SVG files.  You could use this for figure captions, etc.

See the examples/ directory in the source distribution for hints.

In hp2pretty-0.8 output filtering and sorting flags are added,
as well as low-ink pattern fills for printing:

> hp2pretty --trace=1     *.hp
> hp2pretty --bands=15    *.hp
> hp2pretty --sort=size   *.hp
> hp2pretty --sort=stddev *.hp
> hp2pretty --sort=name   *.hp
> hp2pretty --reverse     *.hp
> hp2pretty --pattern     *.hp

In hp2pretty-0.7 a parsing bug is fixed.

In hp2pretty-0.6 ByteString is replaced by Text, fixing bugs
with Unicode.

In hp2pretty-0.5 using attoparsec and floatshow internally
should give a healthy speedup.

In hp2pretty-0.4 usage changed since the previous release:

> hp2pretty *.hp
> hp2pretty --uniform-scale=time   *.hp
> hp2pretty --uniform-scale=memory *.hp
> hp2pretty --uniform-scale=both   *.hp

Colours also changed: now they are based on a hash of the
cost label, which should make colours have stable semantics
across program runs.")
    (license license:bsd-3)))

haskell-9.2-hp2pretty

(define-public haskell-9.2-hsass
  (package
    (name "haskell-9.2-hsass")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-hlibsass)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-monad-loops)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)))
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

haskell-9.2-hsass

(define-public haskell-9.2-hsinstall
  (package
    (name "haskell-9.2-hsinstall")
    (version "2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hsinstall/hsinstall-" version
                    ".tar.gz"))
              (sha256
               (base32
                "142gdcdka2i61hv9pxpqfi25h5nzz8k7nxlnymfmn4inpayvdr29"))))
    (properties `((upstream-name . "hsinstall") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-heredoc)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-newtype-generics)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)))
    (home-page "https://github.com/dino-/hsinstall#readme")
    (synopsis "Install Haskell software")
    (description
     "This is a tool for deploying software projects into directory structures suitable for installation on a system. It builds upon the `stack install` command and adds more features. It's also a tool for easier AppImage creation.")
    (license license:isc)))

haskell-9.2-hsinstall

(define-public haskell-9.2-hspec-attoparsec
  (package
    (name "haskell-9.2-hspec-attoparsec")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-hspec-expectations)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/alpmestan/hspec-attoparsec")
    (synopsis
     "Utility functions for testing your attoparsec parsers with hspec")
    (description
     "This package provides some helper functions for testing attoparsec parsers with hspec.

See the documentation in @@Test.Hspec.Attoparsec@@ for examples, or this package's own test suite.")
    (license license:bsd-3)))

haskell-9.2-hspec-attoparsec

(define-public haskell-9.2-hspec-megaparsec
  (package
    (name "haskell-9.2-hspec-megaparsec")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mrkkrp/hspec-megaparsec")
    (synopsis "Utility functions for testing Megaparsec parsers with Hspec")
    (description
     "Utility functions for testing Megaparsec parsers with Hspec.")
    (license license:bsd-3)))

haskell-9.2-hspec-megaparsec

(define-public haskell-9.2-html-email-validate
  (package
    (name "haskell-9.2-html-email-validate")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-pcre-builtin)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/html-email-validate")
    (synopsis "Validating an email address against HTML standard")
    (description
     "The library allows to validate and parse an email address
as it's defined in <https://html.spec.whatwg.org/multipage/forms.html#valid-e-mail-address HTML standard>.
Note that HTML specification of a valid email address is a
'willful violation' of RFC 5322. If you want to validate
an address against RFC 5322 you should use <https://hackage.haskell.org/package/email-validate email-validate>.")
    (license license:bsd-3)))

haskell-9.2-html-email-validate

(define-public haskell-9.2-html-entities
  (package
    (name "haskell-9.2-html-entities")
    (version "1.1.4.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/html-entities/html-entities-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16b1n73qg7sv5is18i0zyg5x1i68zw2h9nh115zlqnavmdj913yv"))))
    (properties `((upstream-name . "html-entities") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/html-entities")
    (synopsis "A codec library for HTML-escaped text and HTML-entities")
    (description
     "This library provides the following APIs for coding and decoding of
HTML-escaped text:

* \\\"attoparsec\\\" parser

* Text decoder

* Encoding text builder")
    (license license:expat)))

haskell-9.2-html-entities

(define-public haskell-9.2-htoml-megaparsec
  (package
    (name "haskell-9.2-htoml-megaparsec")
    (version "2.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/htoml-megaparsec/htoml-megaparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08pka0z97b461bf45nvh9gymbvbwhn2dh70dy7x22xmzrigxnxw1"))))
    (properties `((upstream-name . "htoml-megaparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0sziwadc2wlkfpip65d0v2wl6ldlcbn1fww4bwgw4rvmfhyrwbbc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-composition-prelude)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hub.darcs.net/vmchale/htoml-megaparsec")
    (synopsis "Parser for TOML files")
    (description "TOML is an obvious and minimal format for config files.
This package provides a TOML parser
built with the Megaparsec.")
    (license license:bsd-3)))

haskell-9.2-htoml-megaparsec

(define-public haskell-9.2-http-date
  (package
    (name "haskell-9.2-http-date")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-old-locale)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/http-date")
    (synopsis "HTTP Date parser/formatter")
    (description "Fast parser and formatter for HTTP Date")
    (license license:bsd-3)))

haskell-9.2-http-date

(define-public haskell-9.2-hweblib
  (package
    (name "haskell-9.2-hweblib")
    (version "0.6.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hweblib/hweblib-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "03dmx5irlsyb3b9zg2r6nz947sslizkn0nlk65ldb5n4m8my33hy"))))
    (properties `((upstream-name . "hweblib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/aycanirican/hweblib")
    (synopsis "Haskell Web Library")
    (description
     "The library includes attoparsec based incremental parsers for
rfc2616 (http) and rfc3986 (uri), rfc2045-46 (mime). The package
name will subject to change due to broad range of rfc coverage.")
    (license license:bsd-3)))

haskell-9.2-hweblib

(define-public haskell-9.2-infer-license
  (package
    (name "haskell-9.2-infer-license")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-text-metrics)))
    (home-page "https://hackage.haskell.org/package/infer-license")
    (synopsis "Infer software license from a given license file")
    (description "")
    (license license:expat)))

haskell-9.2-infer-license

(define-public haskell-9.2-ini
  (package
    (name "haskell-9.2-ini")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/andreasabel/ini")
    (synopsis "Configuration files in the INI format.")
    (description "Quick and easy configuration files in the INI format.")
    (license license:bsd-3)))

haskell-9.2-ini

(define-public haskell-9.2-invert
  (package
    (name "haskell-9.2-invert")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/invert/invert-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "13zl9i6g7ygkm3pgm7b72815cfp66mykxzp5vwy5kqakr8c3w1fp"))))
    (properties `((upstream-name . "invert") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1jrpqnd03j5h1g879n63ygj561db7kvk43xjvhhv4f4h1rmpzpri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-generic-deriving)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/typeclasses/invert")
    (synopsis "Automatically generate a function’s inverse")
    (description
     "This library deals with computing a function’s inverse.
This is, of course, not possible in general, so the
applicability of this library comes with some caveats:

  * The function’s domain must be enumerable, and
    preferably rather small. We provide a few suggestions
    and utilities for how to enumerate the domain.
  * The function’s codomain must belong to the @@Eq@@ class.
    An @@Ord@@ or @@Hashable@@ instance is also nice, to
    accommodate a data structure for efficient lookups.
  * The functions for inverting injections, surjections,
    and bijections require some care to use correctly,
    because the library does not verify these properties.

The main purpose of this library is to provide documentation
and convenience. It does not contain a great quantity of code,
so a user hesitant to incur a dependency on the package might
well choose only to read and borrow its techniques.")
    (license license:asl2.0)))

haskell-9.2-invert

(define-public haskell-9.2-io-streams
  (package
    (name "haskell-9.2-io-streams")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-zlib)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-zlib-bindings)))
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

haskell-9.2-io-streams

(define-public haskell-9.2-irc
  (package
    (name "haskell-9.2-irc")
    (version "0.6.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/irc/irc-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1q9p2qwfy9rsfyaja4x3gjr8ql2ka2ja5qv56b062bdkvzafl5iq"))))
    (properties `((upstream-name . "irc") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/irc")
    (synopsis "A small library for parsing IRC messages.")
    (description "A set of combinators and types for parsing IRC messages.")
    (license license:bsd-3)))

haskell-9.2-irc

(define-public haskell-9.2-lame
  (package
    (name "haskell-9.2-lame")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-htaglib)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-wave)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages mp3) lame)
                             (@ (gnu packages mp3) taglib)))
    (home-page "https://github.com/mrkkrp/lame")
    (synopsis "Fairly complete high-level binding to LAME encoder")
    (description "Fairly complete high-level binding to LAME encoder.")
    (license license:bsd-3)))

haskell-9.2-lame

(define-public haskell-9.2-language-protobuf
  (package
    (name "haskell-9.2-language-protobuf")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-protobuf/language-protobuf-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wxihyf320xsqi114dbl2cwylkc261d5wgd7migb1lh23gxnhhz2"))))
    (properties `((upstream-name . "language-protobuf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/language-protobuf")
    (synopsis "Language definition and parser for Protocol Buffers.")
    (description
     "Language definition and parser for Protocol Buffers files, according to <https://developers.google.com/protocol-buffers/docs/reference/proto3-spec>.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-language-protobuf

(define-public haskell-9.2-language-thrift
  (package
    (name "haskell-9.2-language-thrift")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/abhinav/language-thrift#readme")
    (synopsis "Parser and pretty printer for the Thrift IDL format.")
    (description "This package provides a parser and pretty printer for the
<http://thrift.apache.org/docs/idl Thrift IDL format>.")
    (license license:bsd-3)))

haskell-9.2-language-thrift

(define-public haskell-9.2-lattices
  (package
    (name "haskell-9.2-lattices")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-integer-logarithms)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-universe-base)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-universe-reverse-instances)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
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

haskell-9.2-lattices

(define-public haskell-9.2-lentil
  (package
    (name "haskell-9.2-lentil")
    (version "1.5.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lentil/lentil-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "198ajay44aapyn8zw3416lhv7wdkb8p6y3a77w2m3p9ly9sj5hgc"))))
    (properties `((upstream-name . "lentil") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-developer")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-csv)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-filemanip)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-natural-sort)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-terminal-progress-bar)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://www.ariis.it/static/articles/lentil/page.html")
    (synopsis "frugal issue tracker")
    (description "minumum effort, cohesive issue tracker based on
ubiquitous @@TODO@@s and @@FIXME@@s conventions.
Check homepage for manual, tutorial, binaries,
examples.")
    (license license:gpl3)))

haskell-9.2-lentil

(define-public haskell-9.2-leveldb-haskell
  (package
    (name "haskell-9.2-leveldb-haskell")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages databases) leveldb)
                             (@ (gnu packages pcre) pcre)))
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

haskell-9.2-leveldb-haskell

(define-public haskell-9.2-libmpd
  (package
    (name "haskell-9.2-libmpd")
    (version "0.10.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/libmpd/libmpd-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "088vlir0n3wps2p5ydgyx51p41nfjcm2v02sszpyjj3c8z7f4qkh"))))
    (properties `((upstream-name . "libmpd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/vimus/libmpd-haskell#readme")
    (synopsis "An MPD client library.")
    (description "A client library for MPD, the Music Player Daemon.")
    (license license:expat)))

haskell-9.2-libmpd

(define-public haskell-9.2-lift-generics
  (package
    (name "haskell-9.2-lift-generics")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-generic-deriving)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-th-compat)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-th-lift-instances)))
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

haskell-9.2-lift-generics

(define-public haskell-9.2-linebreak
  (package
    (name "haskell-9.2-linebreak")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-hyphenation)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://ariis.it/static/articles/linebreak/page.html")
    (synopsis "breaks strings to fit width")
    (description "Simple functions to break a String to fit a maximum text
width, using Knuth-Liang hyphenation algorhitm.")
    (license license:bsd-3)))

haskell-9.2-linebreak

(define-public haskell-9.2-log-domain
  (package
    (name "haskell-9.2-log-domain")
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
       ("2" "1hddf1q0gvpx7ic0qynjl9nk9g37kjh352yfk5axi36k49zfpw8d")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-bytes)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-distributive)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/log-domain/")
    (synopsis "Log-domain arithmetic")
    (description
     "This package provides log-domain floats, doubles and complex numbers.")
    (license license:bsd-3)))

haskell-9.2-log-domain

(define-public haskell-9.2-logging-facade-syslog
  (package
    (name "haskell-9.2-logging-facade-syslog")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-hsyslog)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-logging-facade)))
    (home-page "https://github.com/peti/logging-facade-syslog#readme")
    (synopsis "A logging back-end to syslog(3) for the logging-facade library")
    (description
     "A simple \"System.Logging.Facade\" back-end for @@syslog(3)@@ as specified in <http://pubs.opengroup.org/onlinepubs/9699919799/functions/syslog.html POSIX.1-2008>.")
    (license license:bsd-3)))

haskell-9.2-logging-facade-syslog

(define-public haskell-9.2-lucid-cdn
  (package
    (name "haskell-9.2-lucid-cdn")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-lucid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/lucid-cdn")
    (synopsis "Curated list of CDN imports for lucid.")
    (description
     "Repository of common CDN imports for lucid. Please open a pull request to add new libraries.")
    (license license:expat)))

haskell-9.2-lucid-cdn

(define-public haskell-9.2-markdown-unlit
  (package
    (name "haskell-9.2-markdown-unlit")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-silently)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-stringbuilder)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)))
    (home-page "https://github.com/sol/markdown-unlit#readme")
    (synopsis "Literate Haskell support for Markdown")
    (description
     "Documentation is here: <https://github.com/sol/markdown-unlit#readme>")
    (license license:expat)))

haskell-9.2-markdown-unlit

(define-public haskell-9.2-matrix
  (package
    (name "haskell-9.2-matrix")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-loop)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
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

haskell-9.2-matrix

(define-public haskell-9.2-matrix-market-attoparsec
  (package
    (name "haskell-9.2-matrix-market-attoparsec")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ocramz/matrix-market-attoparsec")
    (synopsis
     "Parsing and serialization functions for the NIST Matrix Market format")
    (description
     "Parsing and serialization functions for the NIST Matrix Market format.")
    (license license:bsd-2)))

haskell-9.2-matrix-market-attoparsec

(define-public haskell-9.2-membership
  (package
    (name "haskell-9.2-membership")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-constraints)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-th-lift)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fumieval/membership")
    (synopsis "Indices for type level lists")
    (description "See README")
    (license license:bsd-3)))

haskell-9.2-membership

(define-public haskell-9.2-merkle-tree
  (package
    (name "haskell-9.2-merkle-tree")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/merkle-tree/merkle-tree-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1am2bfyzdhr2skvjwrvgkk7ihnili0z0lyigpy5lndrhc93n4ni1"))))
    (properties `((upstream-name . "merkle-tree") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-protolude)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/adjoint-io/merkle-tree#readme")
    (synopsis
     "An implementation of a Merkle tree and merkle tree proofs of inclusion")
    (description
     "An implementation of a Merkle tree and merkle tree proofs of inclusion")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-merkle-tree

(define-public haskell-9.2-mock-time
  (package
    (name "haskell-9.2-mock-time")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-error-or)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-error-or-utils)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-inbox)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/luntain/error-or-bundle/blob/master/mock-time#readme")
    (synopsis "Mock time in tests")
    (description
     "Allows to mock out Data.Time.getCurrentTime and Control.Concrurent.threadDelay")
    (license license:bsd-3)))

haskell-9.2-mock-time

(define-public haskell-9.2-mockery
  (package
    (name "haskell-9.2-mockery")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-logging-facade)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)))
    (home-page "https://hackage.haskell.org/package/mockery")
    (synopsis "Support functions for automated testing")
    (description "Support functions for automated testing")
    (license license:expat)))

haskell-9.2-mockery

(define-public haskell-9.2-monad-chronicle
  (package
    (name "haskell-9.2-monad-chronicle")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-these)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskellari/these")
    (synopsis "These as a transformer, ChronicleT")
    (description
     "This packages provides @@ChronicleT@@, a monad transformer based on
the @@Monad@@ instance for @@These a@@, along with the usual monad
transformer bells and whistles.")
    (license license:bsd-3)))

haskell-9.2-monad-chronicle

(define-public haskell-9.2-monad-metrics
  (package
    (name "haskell-9.2-monad-metrics")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-metrics/monad-metrics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13wsz9c02jsh5sh2kka1v7kna1aij51794n7g52ib27qmxgg9qvq"))))
    (properties `((upstream-name . "monad-metrics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1y5733zs49jyi2qyx8nk2p2ddzkkih1nw33qjrc9ppk05m3030hi")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-clock)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-ekg-core)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/parsonsmatt/monad-metrics#readme")
    (synopsis "A convenient wrapper around EKG metrics")
    (description
     "A convenient wrapper for collecting application metrics. Please see the README.md for more information.")
    (license license:expat)))

haskell-9.2-monad-metrics

(define-public haskell-9.2-monad-products
  (package
    (name "haskell-9.2-monad-products")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/monad-products")
    (synopsis "Monad products")
    (description "Monad products")
    (license license:bsd-3)))

haskell-9.2-monad-products

(define-public haskell-9.2-monoid-extras
  (package
    (name "haskell-9.2-monoid-extras")
    (version "0.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monoid-extras/monoid-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qaxp0cf2cvzvfpk7x9mjz1zmlpjfzxij8v2n45w89s7bq9ckvlw"))))
    (properties `((upstream-name . "monoid-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-groups)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/monoid-extras")
    (synopsis "Various extra monoid-related definitions and utilities")
    (description "Various extra monoid-related definitions and utilities,
such as monoid actions, monoid coproducts, semi-direct
products, \\\"deletable\\\" monoids, \\\"split\\\" monoids,
and \\\"cut\\\" monoids.")
    (license license:bsd-3)))

haskell-9.2-monoid-extras

(define-public haskell-9.2-murmur3
  (package
    (name "haskell-9.2-murmur3")
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/murmur3/murmur3-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ldmhprzldcxdbv5cd7nm7dfaavns4iv4z6mi1prnx1yn41lp6d0"))))
    (properties `((upstream-name . "murmur3") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-base16)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskoin/murmur3#readme")
    (synopsis "Pure Haskell implementation of the MurmurHash3 x86 algorithm")
    (description
     "MurmurHash3 is a non-cryptographic hash function suitable for general hash-based lookup. We provide the x86 version which closely follows  the following implementation: <https://code.google.com/p/smhasher/source/browse/trunk/MurmurHash3.cpp>")
    (license license:expat)))

haskell-9.2-murmur3

(define-public haskell-9.2-mysql-simple
  (package
    (name "haskell-9.2-mysql-simple")
    (version "0.4.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mysql-simple/mysql-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hwv1hlr65m5l2zrrj5zmvrjz9y2814jy05l17l5jb4j4j5xw3z2"))))
    (properties `((upstream-name . "mysql-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-developer")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-mysql)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-old-locale)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-pcre-light)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/paul-rouse/mysql-simple")
    (synopsis "A mid-level MySQL client library.")
    (description
     "A mid-level client library for the MySQL database, intended to be
fast and easy to use.

/Important licensing note/: This library is BSD-licensed under the
terms of the MySQL FOSS License Exception
<http://www.mysql.com/about/legal/licensing/foss-exception/>.

Since this library links against the GPL-licensed @@mysqlclient@@
library, a non-open-source application that uses it /may/ be
subject to the terms of the GPL.")
    (license license:bsd-3)))

haskell-9.2-mysql-simple

(define-public haskell-9.2-n2o-nitro
  (package
    (name "haskell-9.2-n2o-nitro")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-n2o)))
    (home-page "https://github.com/xafizoff/n2o#readme")
    (synopsis "Nitro Elements, Events and Actions")
    (description "Nitro DSL")
    (license license:bsd-3)))

haskell-9.2-n2o-nitro

(define-public haskell-9.2-neat-interpolation
  (package
    (name "haskell-9.2-neat-interpolation")
    (version "0.5.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/neat-interpolation/neat-interpolation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01v5ccv16gw13mjxdxcxnbs6ggzmqh4vwzybzkzqzm40la163aqz"))))
    (properties `((upstream-name . "neat-interpolation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/neat-interpolation")
    (synopsis "A quasiquoter for neat and simple multiline text interpolation")
    (description
     "A quasiquoter for producing Text values with support for
a simple interpolation of input values.
It removes the excessive indentation from the input and
accurately manages the indentation of all lines of the interpolated variables.")
    (license license:expat)))

haskell-9.2-neat-interpolation

(define-public haskell-9.2-network-simple
  (package
    (name "haskell-9.2-network-simple")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-network-bsd)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-socks)))
    (home-page "https://github.com/k0001/network-simple")
    (synopsis "Simple network sockets usage patterns.")
    (description
     "This module exports functions that abstract simple network socket
usage patterns.

See the @@changelog.md@@ file in the source distribution to learn about any
important changes between versions.")
    (license license:bsd-3)))

haskell-9.2-network-simple

(define-public haskell-9.2-network-uri
  (package
    (name "haskell-9.2-network-uri")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-th-compat)))
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

haskell-9.2-network-uri

(define-public haskell-9.2-nix-derivation
  (package
    (name "haskell-9.2-nix-derivation")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/nix-derivation/nix-derivation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0248xbxq4889hc3qp9z0yr21f97j3lxrjjx2isxdf8ah4hpidzy7"))))
    (properties `((upstream-name . "nix-derivation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1bvrnaw0qpiaxdnwvdf7w1ybds4b5c5z8wfizla5pby2lnf8cv0x")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-pretty-show)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/nix-derivation")
    (synopsis "Parse and render *.drv files")
    (description
     "Use this package to parse and render Nix derivation files (i.e. *.drv files)

This package also provides a @@pretty-derivation@@ executable which reads a
derivation on standard input and outputs the pretty-printed Haskell
representation on standard output")
    (license license:bsd-3)))

haskell-9.2-nix-derivation

(define-public haskell-9.2-nonemptymap
  (package
    (name "haskell-9.2-nonemptymap")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ChristopherDavenport/nonemptymap#readme")
    (synopsis "A NonEmptyMap Implementation")
    (description
     "This package intends to allow general use of a NonEmptyMap
which is very beneficial as sometimes you want the functionality
this provides.")
    (license license:bsd-3)))

haskell-9.2-nonemptymap

(define-public haskell-9.2-nsis
  (package
    (name "haskell-9.2-nsis")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-uniplate)))
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

haskell-9.2-nsis

(define-public haskell-9.2-oblivious-transfer
  (package
    (name "haskell-9.2-oblivious-transfer")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/oblivious-transfer/oblivious-transfer-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kq5ppm151q1im14j6zm2w0pn60baj6gzxmfqfx8p0m7a7wwl7sz"))))
    (properties `((upstream-name . "oblivious-transfer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1v9js45kc94zirg530d0f3r9wwsx60xnz7diqzvfxlbvw01649yk")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-protolude)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-discover)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/adjoint-io/oblivious-transfer#readme")
    (synopsis
     "An implementation of the Oblivious Transfer protocol in Haskell")
    (description
     "Please see the README on GitHub at <https://github.com/adjoint-io/oblivious-transfer#readme>")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-oblivious-transfer

(define-public haskell-9.2-openpgp-asciiarmor
  (package
    (name "haskell-9.2-openpgp-asciiarmor")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/openpgp-asciiarmor/openpgp-asciiarmor-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g99llkpqp7r01xlbq9m9nrii33yagiy1ah4fgdcmjnkmqg64hjk"))))
    (properties `((upstream-name . "openpgp-asciiarmor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0nm5c9x4nzqkklk7a8gkh3v0w08anz17y00h3av6ll260m6m8szy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://floss.scru.org/openpgp-asciiarmor")
    (synopsis "OpenPGP (RFC4880) ASCII Armor codec")
    (description "OpenPGP (RFC4880) ASCII Armor codec")
    (license license:expat)))

haskell-9.2-openpgp-asciiarmor

(define-public haskell-9.2-optics-extra
  (package
    (name "haskell-9.2-optics-extra")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-indexed-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-indexed-traversable-instances)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-optics-core)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
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

haskell-9.2-optics-extra

(define-public haskell-9.2-pcre-utils
  (package
    (name "haskell-9.2-pcre-utils")
    (version "0.1.8.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pcre-utils/pcre-utils-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1plawzvgxww9m0vjawmkf59bfxzxf0l93g7hfwyqjq4hcc8pwq2l"))))
    (properties `((upstream-name . "pcre-utils") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/bartavelle/pcre-utils")
    (synopsis "Perl-like substitute and split for PCRE regexps.")
    (description
     "This package introduces split and replace like functions using PCRE regexps.")
    (license license:bsd-3)))

haskell-9.2-pcre-utils

(define-public haskell-9.2-pedersen-commitment
  (package
    (name "haskell-9.2-pedersen-commitment")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pedersen-commitment/pedersen-commitment-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dxh20abilyf29jg6dbl9al300v7wzd1avv36p4hf8x2xwvwr4v7"))))
    (properties `((upstream-name . "pedersen-commitment") (hidden? . #f)))
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
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-protolude)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/adjoint-io/pedersen-commitment#readme")
    (synopsis "An implementation of Pedersen commitment schemes")
    (description
     "An implementation of Pedersen commitment schemes for multiparty protocols.")
    (license license:expat)))

haskell-9.2-pedersen-commitment

(define-public haskell-9.2-pipes-attoparsec
  (package
    (name "haskell-9.2-pipes-attoparsec")
    (version "0.5.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-attoparsec/pipes-attoparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zfaj6jxmld95xi4yxyrj1wl31dqfw464ffyrm54rg4x513b97py"))))
    (properties `((upstream-name . "pipes-attoparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-mmorph)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-pipes)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-pipes-parse)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0001/pipes-attoparsec")
    (synopsis "Attoparsec and Pipes integration.")
    (description
     "Utilities to run Attoparsec parsers on Pipes input streams.

See the @@changelog.md@@ file in the source distribution to learn about any
important changes between version.")
    (license license:bsd-3)))

haskell-9.2-pipes-attoparsec

(define-public haskell-9.2-poly-arity
  (package
    (name "haskell-9.2-poly-arity")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-constraints)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/poly-arity")
    (synopsis "Tools for working with functions of undetermined arity")
    (description "")
    (license license:bsd-3)))

haskell-9.2-poly-arity

(define-public haskell-9.2-polysemy-kvstore
  (package
    (name "haskell-9.2-polysemy-kvstore")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-polysemy)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/polysemy-kvstore")
    (synopsis "KVStore effect for polysemy.")
    (description "KVStore effect for polysemy.")
    (license license:expat)))

haskell-9.2-polysemy-kvstore

(define-public haskell-9.2-polysemy-plugin
  (package
    (name "haskell-9.2-polysemy-plugin")
    (version "0.4.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/polysemy-plugin/polysemy-plugin-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kp7d4m007mlk4pl2p8933b5yzzb8gl30g1vfbbz01vm3pgjcj3d"))))
    (properties `((upstream-name . "polysemy-plugin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-corelint")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ghc-tcplugins-extra)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-polysemy)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/polysemy-research/polysemy#readme")
    (synopsis "Disambiguate obvious uses of effects.")
    (description
     "Please see the README on GitHub at <https://github.com/polysemy-research/polysemy/tree/master/polysemy-plugin#readme>")
    (license license:bsd-3)))

haskell-9.2-polysemy-plugin

(define-public haskell-9.2-polysemy-several
  (package
    (name "haskell-9.2-polysemy-several")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-polysemy)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/polysemy-several")
    (synopsis "Run several effects at once, taken from the polysemy-zoo.")
    (description "Run several effects at once, taken from the polysemy-zoo.")
    (license license:expat)))

haskell-9.2-polysemy-several

(define-public haskell-9.2-process-extras
  (package
    (name "haskell-9.2-process-extras")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-ListLike)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-generic-deriving)))
    (home-page "https://github.com/seereason/process-extras")
    (synopsis "Process extras")
    (description "Extends <http://hackage.haskell.org/package/process>.
Read process input and output as ByteStrings or
Text, or write your own ProcessOutput instance.
Lazy process input and output.  ProcessMaker class
for more flexibility in the process creation API.")
    (license license:expat)))

haskell-9.2-process-extras

(define-public haskell-9.2-proto-lens-protobuf-types
  (package
    (name "haskell-9.2-proto-lens-protobuf-types")
    (version "0.7.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/proto-lens-protobuf-types/proto-lens-protobuf-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fd141fb69wgc2alx4yyhyxdp9s86i3rxl9aah816b31bskbcjaa"))))
    (properties `((upstream-name . "proto-lens-protobuf-types")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-lens-family)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-proto-lens)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-proto-lens-protoc)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-proto-lens-runtime)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-proto-lens-setup)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/google/proto-lens#readme")
    (synopsis "Basic protocol buffer message types.")
    (description
     "This package provides bindings standard protocol message types, for use with the proto-lens library.")
    (license license:bsd-3)))

haskell-9.2-proto-lens-protobuf-types

(define-public haskell-9.2-pthread
  (package
    (name "haskell-9.2-pthread")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-generic-deriving)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/tweag/pthread")
    (synopsis "Bindings for the pthread library.")
    (description "")
    (license license:bsd-3)))

haskell-9.2-pthread

(define-public haskell-9.2-qrcode-juicypixels
  (package
    (name "haskell-9.2-qrcode-juicypixels")
    (version "0.8.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/qrcode-juicypixels/qrcode-juicypixels-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fwjdz08r85j54x3khnby1h5mwxs1568yhd3v8dcilrwj6an9991"))))
    (properties `((upstream-name . "qrcode-juicypixels") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-qrcode-core)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/alexkazik/qrcode#readme")
    (synopsis "Converts a qrcode-core image to JuicyPixels")
    (description
     "Please see the README on GitHub at <https://github.com/alexkazik/qrcode/qrcode-juicypixels#readme>")
    (license license:expat)))

haskell-9.2-qrcode-juicypixels

(define-public haskell-9.2-quickcheck-instances
  (package
    (name "haskell-9.2-quickcheck-instances")
    (version "0.3.28")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-instances/quickcheck-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jycijv7gaj6qrkp219nllrdv9zd0ifp0mb0rch430fm95xin4f4"))))
    (properties `((upstream-name . "quickcheck-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bytestring-builder")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-OneTuple)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-data-fix)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-integer-logarithms)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-old-time)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-splitmix)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-strict)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-text-short)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-these)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-time-compat)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-uuid-types)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskellari/qc-instances")
    (synopsis "Common quickcheck instances")
    (description
     "QuickCheck instances.

The goal is to supply QuickCheck instances for
types provided by the Haskell Platform.

Since all of these instances are provided as
orphans, I recommend that you do not use this library
within another library module, so that you don't
impose these instances on down-stream consumers of
your code.

For information on writing a test-suite with Cabal
see <https://www.haskell.org/cabal/users-guide/developing-packages.html#test-suites>")
    (license license:bsd-3)))

haskell-9.2-quickcheck-instances

(define-public haskell-9.2-quickcheck-special
  (package
    (name "haskell-9.2-quickcheck-special")
    (version "0.1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-special/quickcheck-special-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dhwgy1jwglp4y3nbysr1i182415aibqlcsrvwxn2c5x162qjwwm"))))
    (properties `((upstream-name . "quickcheck-special") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1whwmij115vw0qwkzlkc4z4yhj7iwwqjhf5aaxn5np0gh2gzihb3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-special-values)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/minad/quickcheck-special#readme")
    (synopsis
     "Edge cases and special values for QuickCheck Arbitrary instances")
    (description
     "The standard Arbitrary instances of QuickCheck don't generate special values. This is fixed by this package which provides the newtype Special with an Arbitrary instance. The special values are given by the SpecialValues typeclass.")
    (license license:expat)))

haskell-9.2-quickcheck-special

(define-public haskell-9.2-rattle
  (package
    (name "haskell-9.2-rattle")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rattle/rattle-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1nd3knid238fa85rm2d0kavhyry6d6lilpk2p4ki9njgq2003bbk"))))
    (properties `((upstream-name . "rattle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cmdargs)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-9.2 stage001)
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
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-shake)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-terminal-size)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ndmitchell/rattle#readme")
    (synopsis "Forward build system, with caching and speculation")
    (description
     "A forward build system like Fabrciate but with speculation and remote caching.")
    (license license:bsd-3)))

haskell-9.2-rattle

(define-public haskell-9.2-reactive-banana
  (package
    (name "haskell-9.2-reactive-banana")
    (version "1.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/reactive-banana/reactive-banana-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06cmr70cbvnvm69lnj2hkxfmznqj97rxs7y6baxpjkyhm0lsv1dl"))))
    (properties `((upstream-name . "reactive-banana") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-pqueue)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-psqueues)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-these)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-vault)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://wiki.haskell.org/Reactive-banana")
    (synopsis "Library for functional reactive programming (FRP).")
    (description
     "Reactive-banana is a library for Functional Reactive Programming (FRP).

FRP offers an elegant and concise way to express interactive programs such as graphical user interfaces, animations, computer music or robot controllers. It promises to avoid the spaghetti code that is all too common in traditional approaches to GUI programming.

See the project homepage <http://wiki.haskell.org/Reactive-banana>
for more detailed documentation and examples.

/Stability forecast./
This is a stable library, though minor API changes are still likely.
It features an efficient, push-driven implementation
and has seen some optimization work.

/API guide./
Start with the \"Reactive.Banana\" module.")
    (license license:bsd-3)))

haskell-9.2-reactive-banana

(define-public haskell-9.2-record-dot-preprocessor
  (package
    (name "haskell-9.2-record-dot-preprocessor")
    (version "0.2.15")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/record-dot-preprocessor/record-dot-preprocessor-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0avdisbl1faqpny1r6ljm5gb8xz1yghmls7pgs2nshjkxd94i761"))))
    (properties `((upstream-name . "record-dot-preprocessor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-record-hasfield)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-uniplate)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ndmitchell/record-dot-preprocessor#readme")
    (synopsis "Preprocessor to allow record.field syntax")
    (description
     "In almost every programming language @@a.b@@ will get the @@b@@ field from the @@a@@ data type, and many different data types can have a @@b@@ field.
The reason this feature is ubiquitous is because it's /useful/.
The @@record-dot-preprocessor@@ brings this feature to Haskell - see the README for full details.")
    (license license:bsd-3)))

haskell-9.2-record-dot-preprocessor

(define-public haskell-9.2-reducers
  (package
    (name "haskell-9.2-reducers")
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
       ("3" "00xd4pyg0p4z0alyg1zy193jc3smq50y73dkafiphd73rzszxy9g")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-fingertree)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/reducers/")
    (synopsis
     "Semigroups, specialized containers and a general map/reduce framework")
    (description
     "Semigroups, specialized containers and a general map/reduce framework.")
    (license license:bsd-3)))

haskell-9.2-reducers

(define-public haskell-9.2-regex-with-pcre
  (package
    (name "haskell-9.2-regex-with-pcre")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-regex)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-regex-base)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
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

haskell-9.2-regex-with-pcre

(define-public haskell-9.2-reinterpret-cast
  (package
    (name "haskell-9.2-reinterpret-cast")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-loop)))
    (home-page "https://github.com/nh2/reinterpret-cast")
    (synopsis
     "Memory reinterpretation casts for Float/Double and Word32/Word64")
    (description
     "Memory reinterpretation casts for Float\\/Double and Word32\\/Word64.

The implementations in the @@.Internal@@ package are different ways to tackle
the problem; the @@array@@ method (current default) is about 5 times faster
than the @@FFI@@ method.")
    (license license:expat)))

haskell-9.2-reinterpret-cast

(define-public haskell-9.2-relapse
  (package
    (name "haskell-9.2-relapse")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/relapse/relapse-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1wd5ng4kdwk66cla1s1l5xp7cm9ajmgr3kjh0dfzlim24qrfamfr"))))
    (properties `((upstream-name . "relapse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/iostat/relapse#readme")
    (synopsis "Sensible RLP encoding")
    (description
     "An implementation of RLP as specified in the Ethereum Wiki, using Attoparsec")
    (license license:expat)))

haskell-9.2-relapse

(define-public haskell-9.2-replace-megaparsec
  (package
    (name "haskell-9.2-replace-megaparsec")
    (version "1.4.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/replace-megaparsec/replace-megaparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1n9ik81hd5xgcbzzjrdqxp34q4qg6nklbg36124amdr14id03ylg"))))
    (properties `((upstream-name . "replace-megaparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-parser-combinators)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jamesdbrock/replace-megaparsec")
    (synopsis
     "Find, replace, and split string patterns with Megaparsec parsers (instead of regex)")
    (description
     "Find text patterns, replace the patterns, split on the patterns. Use
Megaparsec monadic parsers instead of regular expressions for pattern matching.")
    (license license:bsd-2)))

haskell-9.2-replace-megaparsec

(define-public haskell-9.2-rocksdb-haskell
  (package
    (name "haskell-9.2-rocksdb-haskell")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages databases) rocksdb)))
    (home-page "http://github.com/serokell/rocksdb-haskell")
    (synopsis "Haskell bindings to RocksDB")
    (description
     "From <http://rocksdb.org>:

RocksDB is an embeddable persistent key-value store for fast storage. RocksDB can also be the foundation for a client-server database but our current focus is on embedded workloads.

RocksDB builds on LevelDB to be scalable to run on servers with many CPU cores, to efficiently use fast storage, to support IO-bound, in-memory and write-once workloads, and to be flexible to allow for innovation.")
    (license license:bsd-3)))

haskell-9.2-rocksdb-haskell

(define-public haskell-9.2-rpmbuild-order
  (package
    (name "haskell-9.2-rpmbuild-order")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-fgl)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-graphviz)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-simple-cmd)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-simple-cmd-args)))
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

haskell-9.2-rpmbuild-order

(define-public haskell-9.2-run-st
  (package
    (name "haskell-9.2-run-st")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/run-st/run-st-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "11if8xwv22ry0mxrglg3pcx3cx8ljnq56f3m9vjkr9jcj2881dvf"))))
    (properties `((upstream-name . "run-st") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "15cm4zv9848sa2a2ipb66lv791pdnkx7j3pwksmjvkhkzr3bkl51")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-primitive-unlifted)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/andrewthad/run-st")
    (synopsis "runST without boxing penalty")
    (description
     "This package provides specializations of `runST` that avoid a needless
data-constructor allocation for the returned value.
If <https://gitlab.haskell.org/ghc/ghc/issues/15127 issue 15127> is
resolved, this package will no longer be necessary.")
    (license license:bsd-3)))

haskell-9.2-run-st

(define-public haskell-9.2-safe-exceptions-checked
  (package
    (name "haskell-9.2-safe-exceptions-checked")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)))
    (home-page
     "https://github.com/mitchellwrosen/safe-exceptions-checked#readme")
    (synopsis "Safe, checked exceptions")
    (description
     "Machinery for throwing and catching both pure and impure synchronous exceptions. Based on <https://www.well-typed.com/blog/2015/07/checked-exceptions/ Lightweight Checked Exceptions> by Edsko de Vries and Adam Gundry.")
    (license license:bsd-3)))

haskell-9.2-safe-exceptions-checked

(define-public haskell-9.2-sbv
  (package
    (name "haskell-9.2-sbv")
    (version "9.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sbv/sbv-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0r84ak8n8vqs1xbvxjzai828yr5msjyf5igf6qmn6f47m0mhf6cz"))))
    (properties `((upstream-name . "sbv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-libBF)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-uniplate)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://leventerkok.github.io/sbv/")
    (synopsis
     "SMT Based Verification: Symbolic Haskell theorem prover using SMT solving.")
    (description
     "Express properties about Haskell programs and automatically prove them using SMT
(Satisfiability Modulo Theories) solvers.

For details, please see: <http://leventerkok.github.io/sbv/>")
    (license license:bsd-3)))

haskell-9.2-sbv

(define-public haskell-9.2-selda-sqlite
  (package
    (name "haskell-9.2-selda-sqlite")
    (version "0.1.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/selda-sqlite/selda-sqlite-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cldk804vv82dp3hyxcddzy3plijgkmjz3ykrjzy7afqni97yc4y"))))
    (properties `((upstream-name . "selda-sqlite") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-haste")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-direct-sqlite)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-selda)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-uuid-types)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/valderman/selda")
    (synopsis "SQLite backend for the Selda database EDSL.")
    (description "Allows the Selda database EDSL to be used with SQLite
databases.")
    (license license:expat)))

haskell-9.2-selda-sqlite

(define-public haskell-9.2-semialign
  (package
    (name "haskell-9.2-semialign")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-indexed-traversable-instances)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-these)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
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

haskell-9.2-semialign

(define-public haskell-9.2-semigroupoid-extras
  (package
    (name "haskell-9.2-semigroupoid-extras")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/semigroupoid-extras")
    (synopsis "Semigroupoids that depend on PolyKinds")
    (description "Semigroupoids that depend on PolyKinds")
    (license license:bsd-3)))

haskell-9.2-semigroupoid-extras

(define-public haskell-9.2-semirings
  (package
    (name "haskell-9.2-semirings")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-base-compat-batteries)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.2-semirings

(define-public haskell-9.2-semver
  (package
    (name "haskell-9.2-semver")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/semver/semver-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0hgn3wd1wv3y1723kvd9clj72z65f6m28yf75mxl1zjfd0kf6ivw"))))
    (properties `((upstream-name . "semver") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "13c692s2fbn6xygw70aglj84a8hq549gcj1p40g11j77w68p9xx4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/brendanhay/semver")
    (synopsis
     "Representation, manipulation, and de/serialisation of Semantic Versions.")
    (description
     "Representation, manipulation, and de/serialisation of a Version type
following the Semantic Versioning specification.

For more information see: <http://semver.org>")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-9.2-semver

(define-public haskell-9.2-sexpr-parser
  (package
    (name "haskell-9.2-sexpr-parser")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/rcook/sexpr-parser#readme")
    (synopsis "Simple s-expression parser")
    (description
     "This package provides a simple Megaparsec-based s-expression parser.")
    (license license:expat)))

haskell-9.2-sexpr-parser

(define-public haskell-9.2-shake-language-c
  (package
    (name "haskell-9.2-shake-language-c")
    (version "0.12.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shake-language-c/shake-language-c-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1c0smbshksjw114m09n5i1ynkhibvd9kix9n7h696p75g40ka7k6"))))
    (properties `((upstream-name . "shake-language-c") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-fclabels)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-shake)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/samplecount/shake-language-c")
    (synopsis "Utilities for cross-compiling with Shake")
    (description
     "This library provides <http://hackage.haskell.org/package/shake Shake> utilities for cross-compiling @@C@@, @@C++@@ and @@ObjC@@ code for various target platforms. Currently supported target platforms are Android, iOS, Linux, MacOS X, Windows\\/MinGW and Google Portable Native Client (PNaCl). Supported host platforms are MacOS X, Linux and Windows.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-shake-language-c

(define-public haskell-9.2-shellwords
  (package
    (name "haskell-9.2-shellwords")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/pbrisbin/hs-shellwords#readme")
    (synopsis "Parse strings into words, like a shell would")
    (description "See https://github.com/pbrisbin/hs-shellwords#readme")
    (license license:expat)))

haskell-9.2-shellwords

(define-public haskell-9.2-simple-media-timestamp-attoparsec
  (package
    (name "haskell-9.2-simple-media-timestamp-attoparsec")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simple-media-timestamp-attoparsec/simple-media-timestamp-attoparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zkwb24blzmhb6y9yy2cjsgsv1l756wgpcp90drb5ga73qix0k5g"))))
    (properties `((upstream-name . "simple-media-timestamp-attoparsec")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-simple-media-timestamp)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://hackage.haskell.org/package/simple-media-timestamp-attoparsec")
    (synopsis "Attoparsec parser for simple-media-timestamp.")
    (description "Attoparsec parser for simple-media-timestamp.")
    (license license:expat)))

haskell-9.2-simple-media-timestamp-attoparsec

(define-public haskell-9.2-simple-media-timestamp-formatting
  (package
    (name "haskell-9.2-simple-media-timestamp-formatting")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simple-media-timestamp-formatting/simple-media-timestamp-formatting-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fkjplpkv1jxcadhc596rv7jzbgn2f1xnmwdfa68wls3hl0h7s70"))))
    (properties `((upstream-name . "simple-media-timestamp-formatting")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-formatting)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-simple-media-timestamp)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page
     "https://hackage.haskell.org/package/simple-media-timestamp-formatting")
    (synopsis "Formatting for simple-media-timestamp")
    (description
     "Please see the README on GitHub at <https://github.com/githubuser/simple-media-timestamp-formatting#readme>")
    (license license:expat)))

haskell-9.2-simple-media-timestamp-formatting

(define-public haskell-9.2-smallcheck
  (package
    (name "haskell-9.2-smallcheck")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/smallcheck/smallcheck-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0sf87zjlrgjw7q6a0499g2ywx66zvpv6rg6953fjc18fnl8rs7z4"))))
    (properties `((upstream-name . "smallcheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "141lvb58hy94gywchaaf2dbh1dncnj951q5l6xkg1drvm94dvj1b")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-logict)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/smallcheck")
    (synopsis "A property-based testing library")
    (description
     "SmallCheck is a testing library that allows to verify properties
for all test cases up to some depth. The test cases are generated
automatically by SmallCheck.")
    (license license:bsd-3)))

haskell-9.2-smallcheck

(define-public haskell-9.2-some-dict-of
  (package
    (name "haskell-9.2-some-dict-of")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-constraints)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/parsonsmatt/some-dict-of#readme")
    (synopsis "Carry evidence of constraints around")
    (description
     "Please see the README on GitHub at <https://github.com/parsonsmatt/some-dict-of#readme>")
    (license license:bsd-3)))

haskell-9.2-some-dict-of

(define-public haskell-9.2-sqlite-simple
  (package
    (name "haskell-9.2-sqlite-simple")
    (version "0.4.18.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sqlite-simple/sqlite-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14axfc9ii08g7yx3j9n5hrfrsmab3pjv7n0cshcg4a2lvnkv25fw"))))
    (properties `((upstream-name . "sqlite-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-Only)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-blaze-textual)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-direct-sqlite)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/nurpax/sqlite-simple")
    (synopsis "Mid-Level SQLite client library")
    (description
     "Mid-level SQLite client library, based on postgresql-simple.

Main documentation (with examples): <docs/Database-SQLite-Simple.html Database.SQLite.Simple>

You can view the project page at <http://github.com/nurpax/sqlite-simple>
for more information.")
    (license license:bsd-3)))

haskell-9.2-sqlite-simple

(define-public haskell-9.2-stack-clean-old
  (package
    (name "haskell-9.2-stack-clean-old")
    (version "0.4.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stack-clean-old/stack-clean-old-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ymzri4pxs0dvqbs3nyrc6hq2lp6y6glva1kbjzpkzgk9r93x3kn"))))
    (properties `((upstream-name . "stack-clean-old") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-filemanip)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-simple-cmd)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-simple-cmd-args)))
    (home-page "https://github.com/juhp/stack-clean-old")
    (synopsis "Clean away old stack build artifacts")
    (description "A tool for removing old .stack-work/install builds and
.stack/snapshots & programs for older ghc versions
to recover diskspace.")
    (license license:bsd-3)))

haskell-9.2-stack-clean-old

(define-public haskell-9.2-step-function
  (package
    (name "haskell-9.2-step-function")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-base-compat-batteries)))
    (home-page "https://github.com/jonpetterbergman/step-function")
    (synopsis "Staircase functions or piecewise constant functions")
    (description
     "Step functions, staircase functions or piecewise constant functions.
Implemented as a default value and a series of transitions.
Supports merging two step functions using a supplied merging function.
")
    (license license:bsd-3)))

haskell-9.2-step-function

(define-public haskell-9.2-streamly
  (package
    (name "haskell-9.2-streamly")
    (version "0.8.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/streamly/streamly-" version
                    ".tar.gz"))
              (sha256
               (base32
                "13m415pcyyzipm5nsf9l8lcan3dn2ck666rq014y46zd66l5ahb9"))))
    (properties `((upstream-name . "streamly") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-fusion-plugin" "-f-inspection" "-f-debug" "-f-dev" "-f-has-llvm" "-f-no-fusion" "-f-streamk" "-f-use-c-malloc" "-fopt" "-f-limit-build-mem")
       #:cabal-revision
       ("1" "0y9pq53jd2wf7xb5i51pa6vm728sza405dx37j8rqnqxxbm5sq7y")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-atomic-primops)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-fusion-plugin-types)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-heaps)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-lockfree-queue)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-unicode-data)))
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

haskell-9.2-streamly

(define-public haskell-9.2-streamt
  (package
    (name "haskell-9.2-streamt")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/streamt/streamt-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0adbn5kh2wqgvwzjgrhcd94abch7if6qz26ihpbm4igwbmwirzgw"))))
    (properties `((upstream-name . "streamt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-logict)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/davidar/streamt")
    (synopsis "Simple, Fair and Terminating Backtracking Monad Transformer")
    (description "This Haskell library provides an implementation of the
MonadPlus type class that enumerates results of a
non-deterministic computation by interleaving
subcomputations in a way that has usually much better
memory performance than other strategies with the same
termination properties.")
    (license license:bsd-3)))

haskell-9.2-streamt

(define-public haskell-9.2-tagged-transformer
  (package
    (name "haskell-9.2-tagged-transformer")
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
       #:configure-flags (list)
       #:cabal-revision
       ("1" "01x7c98ag7wnmgyz7zkzz5109fp15v03lbkybp87x1zxlwh1rqg1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-contravariant)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-distributive)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-reflection)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/tagged-transformer")
    (synopsis "Monad transformer carrying an extra phantom type tag")
    (description
     "Provides newtype wrappers for phantom types to avoid unsafely passing dummy arguments")
    (license license:bsd-3)))

haskell-9.2-tagged-transformer

(define-public haskell-9.2-tasty-ant-xml
  (package
    (name "haskell-9.2-tasty-ant-xml")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-generic-deriving)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-xml)))
    (home-page "http://github.com/ocharles/tasty-ant-xml")
    (synopsis "Render tasty output to XML for Jenkins")
    (description
     "A tasty ingredient to output test results in XML, using the Ant schema. This XML can be consumed by the Jenkins continuous integration framework.")
    (license license:bsd-3)))

haskell-9.2-tasty-ant-xml

(define-public haskell-9.2-tasty-golden
  (package
    (name "haskell-9.2-tasty-golden")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-typed-process)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.2-tasty-golden

(define-public haskell-9.2-tasty-html
  (package
    (name "haskell-9.2-tasty-html")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-generic-deriving)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/feuerbach/tasty-html")
    (synopsis "Render tasty output to HTML")
    (description "A tasty ingredient to output test results in HTML5.")
    (license license:expat)))

haskell-9.2-tasty-html

(define-public haskell-9.2-temporary-resourcet
  (package
    (name "haskell-9.2-temporary-resourcet")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)))
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

haskell-9.2-temporary-resourcet

(define-public haskell-9.2-text-ldap
  (package
    (name "haskell-9.2-text-ldap")
    (version "0.1.1.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-ldap/text-ldap-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0wb5x5q099i1phgwzhi4rs3qrrimsrfg6cnxah33sdzszax7dqnn"))))
    (properties `((upstream-name . "text-ldap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-quickcheck-simple)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/text-ldap")
    (synopsis "Parser and Printer for LDAP text data stream")
    (description "This package contains Parser and Printer for
LDAP text data stream like OpenLDAP backup LDIF.")
    (license license:bsd-3)))

haskell-9.2-text-ldap

(define-public haskell-9.2-text-printer
  (package
    (name "haskell-9.2-text-printer")
    (version "0.5.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-printer/text-printer-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qzmgqcr1bmz34h24gvnfaxaqr3c7z727xv676sd1x51y2qjj2dl"))))
    (properties `((upstream-name . "text-printer") (hidden? . #f)))
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
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-text-latin1)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mvv/text-printer")
    (synopsis "Abstract interface for text builders/printers.")
    (description
     "This package provides an interface for injecting text into monoids such as
builders and printers.")
    (license license:bsd-3)))

haskell-9.2-text-printer

(define-public haskell-9.2-th-orphans
  (package
    (name "haskell-9.2-th-orphans")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-th-compat)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-th-lift)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-th-reify-many)))
    (home-page "https://hackage.haskell.org/package/th-orphans")
    (synopsis "Orphan instances for TH datatypes")
    (description "Orphan instances for TH datatypes.  In particular, instances
for Ord and Lift, as well as a few missing Show / Eq.  These
instances used to live in haskell-src-meta, and that's where
the version number started.")
    (license license:bsd-3)))

haskell-9.2-th-orphans

(define-public haskell-9.2-th-printf
  (package
    (name "haskell-9.2-th-printf")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-charset)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-integer-logarithms)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-microlens-platform)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-th-lift)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/pikajude/th-printf#readme")
    (synopsis "Quasiquoters for printf")
    (description "Quasiquoters for string and text printf")
    (license license:expat)))

haskell-9.2-th-printf

(define-public haskell-9.2-torrent
  (package
    (name "haskell-9.2-torrent")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-bencode)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)))
    (home-page "https://hackage.haskell.org/package/torrent")
    (synopsis "BitTorrent file parser and generater")
    (description "")
    (license license:bsd-3)))

haskell-9.2-torrent

(define-public haskell-9.2-type-of-html-static
  (package
    (name "haskell-9.2-type-of-html-static")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-type-of-html)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://github.com/knupfer/type-of-html-static")
    (synopsis "Optimize static parts of type-of-html.")
    (description
     "This library provides the TH-function 'static' to annote which parts of your page are static to dramatically increase performance.
It converts and escapes it's argument at compiletime and lifts it to a Proxy Symbol to avoid even appending of Builder.")
    (license license:bsd-3)))

haskell-9.2-type-of-html-static

(define-public haskell-9.2-type-rig
  (package
    (name "haskell-9.2-type-rig")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-invariant)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/AshleyYakeley/type-rig#readme")
    (synopsis "Classes for the rig (sums and products) of types")
    (description "")
    (license license:bsd-2)))

haskell-9.2-type-rig

(define-public haskell-9.2-unfork
  (package
    (name "haskell-9.2-unfork")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/unfork/unfork-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0rg2aklr77ba3k1kbd57p42jj0w23rc7rir1iczfskcdj7ki2rjm"))))
    (properties `((upstream-name . "unfork") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/typeclasses/unfork")
    (synopsis "Make any action thread safe")
    (description
     "“Unfork” is the opposite of “fork”; whereas forking allows things to run concurrently, unforking prevents things from running concurrently. Use one of the functions in the \"Unfork\" module when you have an action that will be used by concurrent threads but needs to run serially.

A typical use case is a multi-threaded program that writes log messages. If threads use @@putStrLn@@ directly, the strings may be interleaved in the combined output. Instead, create an unforked version of @@putStrLn@@:

> import Unfork
>
> main :: IO ()
> main =
>     unforkAsyncIO_ putStrLn \\putStrLn' ->
>         _ -- Within this continuation, use
>           -- putStrLn' instead of putStrLn

The new @@putStrLn'@@ function writes to a queue. A separate thread reads from the queue and performs the actions, thus ensuring that the actions are all performed in one linear sequence. The main thread returns after the continuation has returned and the queue is empty. If an exception is raised in either thread, both threads halt and the exception is re-raised in the main thread.")
    (license license:asl2.0)))

haskell-9.2-unfork

(define-public haskell-9.2-unicode-transforms
  (package
    (name "haskell-9.2-unicode-transforms")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-unicode-data)))
    (home-page "http://github.com/composewell/unicode-transforms")
    (synopsis "Unicode normalization")
    (description
     "Fast Unicode 14.0.0 normalization in Haskell (NFC, NFKC, NFD, NFKD).")
    (license license:bsd-3)))

haskell-9.2-unicode-transforms

(define-public haskell-9.2-unification-fd
  (package
    (name "haskell-9.2-unification-fd")
    (version "0.11.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unification-fd/unification-fd-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lyx3g10llkr7vl7c2j15ddlqrkz2r684d1laza7nvq97amrqnqv"))))
    (properties `((upstream-name . "unification-fd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-logict)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://wrengr.org/software/hackage.html")
    (synopsis "Simple generic unification algorithms.")
    (description
     "Generic functions for single-sorted first-order structural
unification (think of programming in Prolog, or of the metavariables
in type inference).")
    (license license:bsd-3)))

haskell-9.2-unification-fd

(define-public haskell-9.2-unit-constraint
  (package
    (name "haskell-9.2-unit-constraint")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-constraints)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/unit-constraint")
    (synopsis "Extremely simple typeclass")
    (description "")
    (license license:bsd-3)))

haskell-9.2-unit-constraint

(define-public haskell-9.2-universum
  (package
    (name "haskell-9.2-universum")
    (version "1.8.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universum/universum-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1193xyz1n8ma4l2p07g764zd87yzr3qv8lnfxhih7zh9r0lywd6y"))))
    (properties `((upstream-name . "universum") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-microlens-mtl)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/serokell/universum")
    (synopsis "Custom prelude used in Serokell")
    (description "See README.md file for more details.")
    (license license:expat)))

haskell-9.2-universum

(define-public haskell-9.2-unliftio
  (package
    (name "haskell-9.2-unliftio")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fpco/unliftio/tree/master/unliftio#readme")
    (synopsis
     "The MonadUnliftIO typeclass for unlifting monads to IO (batteries included)")
    (description
     "Please see the documentation and README at <https://www.stackage.org/package/unliftio>")
    (license license:expat)))

haskell-9.2-unliftio

(define-public haskell-9.2-validity-bytestring
  (package
    (name "haskell-9.2-validity-bytestring")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for bytestring")
    (description "Please see README.md")
    (license license:expat)))

haskell-9.2-validity-bytestring

(define-public haskell-9.2-validity-containers
  (package
    (name "haskell-9.2-validity-containers")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for containers")
    (description "")
    (license license:expat)))

haskell-9.2-validity-containers

(define-public haskell-9.2-validity-primitive
  (package
    (name "haskell-9.2-validity-primitive")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for primitive")
    (description "")
    (license license:expat)))

haskell-9.2-validity-primitive

(define-public haskell-9.2-validity-scientific
  (package
    (name "haskell-9.2-validity-scientific")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for scientific")
    (description "")
    (license license:expat)))

haskell-9.2-validity-scientific

(define-public haskell-9.2-validity-text
  (package
    (name "haskell-9.2-validity-text")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for text")
    (description "")
    (license license:expat)))

haskell-9.2-validity-text

(define-public haskell-9.2-validity-time
  (package
    (name "haskell-9.2-validity-time")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for time")
    (description "")
    (license license:expat)))

haskell-9.2-validity-time

(define-public haskell-9.2-validity-unordered-containers
  (package
    (name "haskell-9.2-validity-unordered-containers")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for unordered-containers")
    (description "")
    (license license:expat)))

haskell-9.2-validity-unordered-containers

(define-public haskell-9.2-validity-uuid
  (package
    (name "haskell-9.2-validity-uuid")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-uuid)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for uuid")
    (description "")
    (license license:expat)))

haskell-9.2-validity-uuid

(define-public haskell-9.2-validity-vector
  (package
    (name "haskell-9.2-validity-vector")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for vector")
    (description "")
    (license license:expat)))

haskell-9.2-validity-vector

(define-public haskell-9.2-vector-bytes-instances
  (package
    (name "haskell-9.2-vector-bytes-instances")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-bytes)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0001/vector-bytes-instances")
    (synopsis
     "Serial (from the bytes package) for Vector (from the vector package)")
    (description
     "Serial (from the bytes package) for Vector (from the vector package)

Based on the original BSD3-licensed work by Don Stewart in the
vector-binary-instances library.")
    (license license:bsd-3)))

haskell-9.2-vector-bytes-instances

(define-public haskell-9.2-versions
  (package
    (name "haskell-9.2-versions")
    (version "5.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/versions/versions-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1zny1kkk42nxwsbjfg87kwgcz4amjbihzqqpwmr3vcwqgx06lx19"))))
    (properties `((upstream-name . "versions") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-parser-combinators)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fosskers/versions")
    (synopsis "Types and parsers for software version numbers.")
    (description
     "A library for parsing and comparing software version numbers. We like to give
version numbers to our software in a myriad of ways. Some ways follow strict
guidelines for incrementing and comparison. Some follow conventional wisdom
and are generally self-consistent. Some are just plain asinine. This library
provides a means of parsing and comparing /any/ style of versioning, be it a
nice Semantic Version like this:

> 1.2.3-r1+git123

...or a monstrosity like this:

> 2:10.2+0.0093r3+1-1

Please switch to <http://semver.org Semantic Versioning> if you aren't
currently using it. It provides consistency in version incrementing and has
the best constraints on comparisons.

This library implements version @@2.0.0@@ of the SemVer spec.")
    (license license:bsd-3)))

haskell-9.2-versions

(define-public haskell-9.2-wcwidth
  (package
    (name "haskell-9.2-wcwidth")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-setlocale)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/solidsnack/wcwidth/")
    (synopsis "Native wcwidth.")
    (description
     "Bindings for your system's native wcwidth and a command line tool to examine
the widths assigned by it. The command line tool can compile a width table
to Haskell code that assigns widths to the Char type.")
    (license license:bsd-3)))

haskell-9.2-wcwidth

(define-public haskell-9.2-webpage
  (package
    (name "haskell-9.2-webpage")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-lucid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/athanclark/webpage#readme")
    (synopsis "Organized and simple web page scaffold for blaze and lucid")
    (description
     "Please see the README on Github at <https://github.com/athanclark/webpage#readme>")
    (license license:bsd-3)))

haskell-9.2-webpage

(define-public haskell-9.2-websockets
  (package
    (name "haskell-9.2-websockets")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-SHA)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-bytestring-builder)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-clock)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-entropy)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-streaming-commons)))
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

haskell-9.2-websockets

(define-public haskell-9.2-x509-system
  (package
    (name "haskell-9.2-x509-system")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-pem)
                  (@ (gnu packages stackage ghc-9.2 stage009) haskell-9.2-x509)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-x509-store)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/vincenthz/hs-certificate")
    (synopsis "Handle per-operating-system X.509 accessors and storage")
    (description
     "System X.509 handling for accessing operating system dependents store and other storage methods")
    (license license:bsd-3)))

haskell-9.2-x509-system

(define-public haskell-9.2-x509-validation
  (package
    (name "haskell-9.2-x509-validation")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-asn1-encoding)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-asn1-types)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hourglass)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-pem)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage009) haskell-9.2-x509)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-x509-store)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/vincenthz/hs-certificate")
    (synopsis "X.509 Certificate and CRL validation")
    (description "X.509 Certificate and CRL validation. please see README")
    (license license:bsd-3)))

haskell-9.2-x509-validation

(define-public haskell-9.2-zenacy-html
  (package
    (name "haskell-9.2-zenacy-html")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-pretty-show)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-word8)))
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

haskell-9.2-zenacy-html

(define-public haskell-9.2-zenacy-unicode
  (package
    (name "haskell-9.2-zenacy-unicode")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-word8)))
    (home-page "https://github.com/mlcfp/zenacy-unicode")
    (synopsis "Unicode utilities for Haskell")
    (description
     "Zenacy Unicode includes tools for checking byte order marks (BOM) and
cleaning data to remove invalid bytes.  These tools can help ensure that
data pulled from the web can be parsed and converted to text.")
    (license license:expat)))

haskell-9.2-zenacy-unicode

(define-public haskell-9.2-zeromq4-patterns
  (package
    (name "haskell-9.2-zeromq4-patterns")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-zeromq4-haskell)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hverr/zeromq4-patterns#readme")
    (synopsis "Haskell implementation of several ZeroMQ patterns.")
    (description
     "Haskell implementation of several ZeroMQ patterns that you can find in the
official ZeroMQ guide.")
    (license license:bsd-3)))

haskell-9.2-zeromq4-patterns

(define-public haskell-9.2-ztail
  (package
    (name "haskell-9.2-ztail")
    (version "1.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ztail/ztail-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0chxsaivxfxphcwzkwyzc7px6lrf5vkr4d7rbd909j4n96293hha"))))
    (properties `((upstream-name . "ztail") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-finotify")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-hinotify)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-posix)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/ztail")
    (synopsis "Multi-file, colored, filtered log tailer.")
    (description
     "An even more improved version of xtail/tail -f, including inotify support, full regex-based filtering, substitution, and colorization.")
    (license license:bsd-3)))

haskell-9.2-ztail

