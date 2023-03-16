;;; generated file
(define-module (gnu packages stackage ghc-9.2 stage012)
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
(define-public haskell-9.2-DBFunctor
  (package
    (name "haskell-9.2-DBFunctor")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/DBFunctor/DBFunctor-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ikb4s9g1mrp4pdz1119dq1vci7mfcvcw92xs47rcin26a3ysdcz"))))
    (properties `((upstream-name . "DBFunctor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-cassava)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-either)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nkarag/haskell-DBFunctor#readme")
    (synopsis
     "DBFunctor - Functional Data Management =>  ETL/ELT Data Processing in Haskell")
    (description
     "Please see the README on Github at https://github.com/nkarag/haskell-DBFunctor")
    (license license:bsd-3)))

haskell-9.2-DBFunctor

(define-public haskell-9.2-ENIG
  (package
    (name "haskell-9.2-ENIG")
    (version "0.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ENIG/ENIG-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1zv6dybsnj3kssiyyg69lxyj5wvi5qjx0xp7skg362xzqmi97ch3"))))
    (properties `((upstream-name . "ENIG") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unicode-transforms)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (home-page "https://github.com/QuietJoon/ENIG#readme")
    (synopsis "Auto Korean conjugator/adjustor/adopter/converter")
    (description
     "Please see the README on GitHub at <https://github.com/QuietJoon/ENIG#readme>")
    (license license:bsd-3)))

haskell-9.2-ENIG

(define-public haskell-9.2-HTTP
  (package
    (name "haskell-9.2-HTTP")
    (version "4000.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HTTP/HTTP-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0lyl5lpkk51xn3dfndh8ksgvwcdsviyigmsnp3d28lbpxkpxhcfz"))))
    (properties `((upstream-name . "HTTP") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-warn-as-error" "-f-conduit10" "-f-warp-tests" "-fnetwork-uri")
       #:cabal-revision
       ("1" "04y04vbxbnblpmqqmpl8km4bkcjaj96nbxkssdr1zgbhqisxay5q")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell/HTTP")
    (synopsis "A library for client-side HTTP")
    (description
     "The HTTP package supports client-side web programming in Haskell. It lets you set up
HTTP connections, transmitting requests and processing the responses coming back, all
from within the comforts of Haskell. It's dependent on the network package to operate,
but other than that, the implementation is all written in Haskell.

A basic API for issuing single HTTP requests + receiving responses is provided. On top
of that, a session-level abstraction is also on offer  (the @@BrowserAction@@ monad);
it taking care of handling the management of persistent connections, proxies,
state (cookies) and authentication credentials required to handle multi-step
interactions with a web server.

The representation of the bytes flowing across is extensible via the use of a type class,
letting you pick the representation of requests and responses that best fits your use.
Some pre-packaged, common instances are provided for you (@@ByteString@@, @@String@@).

Here's an example use:

>
>    do
>      rsp <- Network.HTTP.simpleHTTP (getRequest \"http://www.haskell.org/\")
>              -- fetch document and return it (as a 'String'.)
>      fmap (take 100) (getResponseBody rsp)
>
>    do
>      (_, rsp)
>         <- Network.Browser.browse $ do
>               setAllowRedirects True -- handle HTTP redirects
>               request $ getRequest \"http://www.haskell.org/\"
>      return (take 100 (rspBody rsp))

__Note:__ This package does not support HTTPS connections.
If you need HTTPS, take a look at the following packages:

* <http://hackage.haskell.org/package/http-streams http-streams>

* <http://hackage.haskell.org/package/http-client http-client> (in combination with
<http://hackage.haskell.org/package/http-client-tls http-client-tls>)

* <http://hackage.haskell.org/package/req req>

* <http://hackage.haskell.org/package/wreq wreq>
")
    (license license:bsd-3)))

haskell-9.2-HTTP

(define-public haskell-9.2-HaTeX
  (package
    (name "haskell-9.2-HaTeX")
    (version "3.22.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HaTeX/HaTeX-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1hxj661nkaylh46xrwddj8zm1gb64714yz7jk1afmy5n4yzsqdzj"))))
    (properties `((upstream-name . "HaTeX") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-bibtex)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-matrix)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Daniel-Diaz/HaTeX/blob/master/README.md")
    (synopsis "The Haskell LaTeX library.")
    (description
     "This library implements the LaTeX syntax and provides some useful abstractions.

Some of the things you can do with HaTeX are:

* Write LaTeX documents with all the advantages you already have in Haskell: recursion,
type system, high order functions, ...

* Create a LaTeX backend for your own program.

* Parse a LaTeX file and obtain its Abstract Syntax Tree (AST).

* Pretty-print Haskell values in LaTeX.

* Generate TikZ scripts (images!) easily.

Browse the @@examples@@ directory in the source distribution to see some simple examples.
It might help you to get started. The HaTeX User's Guide is available at
<https://github.com/Daniel-Diaz/hatex-guide/blob/master/README.md>.

If you prefer to write in LaTeX and all you want is to /program/ some parts of the document,
or if you already have the LaTeX document written and you just want to add some automatically
generated LaTeX code somewhere, check haskintex: <http://daniel-diaz.github.io/projects/haskintex>.
It allows you to embed Haskell in LaTeX. It also makes you easy to use HaTeX within a LaTeX document.")
    (license license:bsd-3)))

haskell-9.2-HaTeX

(define-public haskell-9.2-OrderedBits
  (package
    (name "haskell-9.2-OrderedBits")
    (version "0.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/OrderedBits/OrderedBits-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kfb7z5xbzgn1aj8kpij4ry5i4v3v5h55pp3g6qzvgayn25xqc05"))))
    (properties `((upstream-name . "OrderedBits") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-bits)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-vector-algorithms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/choener/OrderedBits")
    (synopsis "Efficient ordered (by popcount) enumeration of bits")
    (description
     "This library provides efficient methods to enumerate all
elements of a set in order of the population count, or the
ordered enumerations of the elements of the powerset of a set.
First, the empty set, then all 1-element sets, all 2-element
sets, etc.  Such enumerations are important for algorithms over
unordered data sets. Examples include the travelling salesman
problem and the closely related Hamiltonian path problem.")
    (license license:bsd-3)))

haskell-9.2-OrderedBits

(define-public haskell-9.2-Rasterific
  (package
    (name "haskell-9.2-Rasterific")
    (version "0.7.5.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/Rasterific/Rasterific-" version
                    ".tar.gz"))
              (sha256
               (base32
                "07silf2b85kxq7wvl5mnwrg5p0gwzlapipj9hi224i9ix1knn5f1"))))
    (properties `((upstream-name . "Rasterific") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fembed_linear")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-FontyFruity)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-free)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-vector-algorithms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/Rasterific")
    (synopsis "A pure haskell drawing engine.")
    (description
     "<<data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAMAAACahl6sAAAA7VBMVEUBhsECh8EFiMIIisMLi8QMjMQOjcQSj8UTj8YVkMYZkscakscbk8ghlskmmMozns02oM44oc86os9CpdFEptJXr9Zbsdddsthes9hhtNljtdlsudtxvNx+wuB/wuCAw+CCxOGDxOGExeGHxuKVzeWb0Oed0Oek1Omm1emo1uqp1uqr1+ux2uyy2uy02+223O294O/J5fLK5vLM5/PN5/PY7PbZ7fbj8vjk8vjl8/nm8/np9frq9frr9vrs9vru9/vw+Pv2+/33+/37/f6g0ug8otBNq9S63u6Jx+IEiMJfs9hzvd3f8Pcqmsv///+OsMg+AAAFP0lEQVR4XuzPSQ0AIAwAQcT15PIvhy8OaMiOg2n7E0TeI0KECJH6iBAhQoQIESJEiEyXGN10ZbvkUusjxGf9yGHvjhpRW8Iwjj+oIIQQlh0FgBARiEIs7eb7f5xzdW5m9j5nzbPe1rwX/b7B343VzDszD+f1yvIs/tfscqV+/qAz5PlksJqHl/zq4ORZVUjnaHMepPnNo46OkNbeElJa2muFDrmvDSFiWLsPF9I7LkNQ+bgXJOSlOgNhM9WXzEPa2znIQ267nWnIUzSJEZmMnjIL6dYKGKFCrZtNSGMBI7bQyCDkbR0ZWH8bdcjFHDIxdzHSkG40gYxMRN3RhbRLyFCpPaqQZhGZKjZHE3KWQ8ZyZ6MI2Y+RuXhfPmQXQewSIXzHVKlSPby8ef03+vXm8rBaKU2JlMiG7ONvCmsHLfMXrYO1AtLalww5i/FHizvX7+Y/vV/vLCKV+EwupJnDn5SvTCJXZaSRa0qFtItwxRu3JrHbjRi8YlsmpFuCq39nvNz1wSt1RUIiOKZPjbfTadAiiZCLCdhWHg3hcQWsiYv0IW9zsG31DKW3BdbcW+qQddh+GdovsNbThjS4DvmSRrqQ7gIsWyaVLZAWuqlCarCs9EwqvRWQamlCngpWx/SjSelxGpzCU4qQCJZTk9opSBEf0rbXE/tGQB+cyTYdsm11xHdGwF0MzjYb8pKzQjaMiA1wci9kSBWWWyPiFqQqF9Kz9z/KRkgZnJkeFXIMy5URcgXSMRHi/t0WjZhFcMpMyD0sO0bMDkj3REgNlmsj5hqkGhEytDoK70bMewGcoX9IC5Y1I2gNpJZ3yB4sB0bQAUh73iFL7t9CUAukJd+QDixTRtQUSB3PkCNYSkZUCaQjz5BNWCpGVAWkTc+QeViqRlQVpHm/kGfYDo2oQ7CevUJOYLs0oi7BOvEKGcB2Y0TdgDXwClmF7dWIegVr1SskD5sRBlbeJ+QBekPw4BFyrjnk3COkrjmk7hFS0RxS8QhZ1hyy7BEyqzlk1iMEmkOQPOQ3oPcfIvA7ccgXoPcTBfhKHPIB6P1oBD4Sh3wDej/jge/EIQM45H9Y8QaJQ37gkP+py/tJHNKHQ37xgddPHPIJh/xyEO8zccgQDvkFOt4wcUgMh/ySKS9OHAJL2EVsFxGiaFuBD1G20cOHaNt640OUbYbyIdq2p/kQZQMDfIi2EQ4+JORQjXyI/JhToBD5wbOgIfKjgDzmozH8cKYrZj7jw4/LuobUD6vgA8yuT+qnbvCRclefW3wIPeTv+iGXgwIfu3AN2AW6sAdhXN/skmnYo0muD3oRO+hhMdcXv60Q9vgev61g4JA/UMlLtfUmfsSVN5tqM5Q/dCxuOd32dIBj4ALb03UoVidGOFQ6J4ZqVHogxpw0yhODZyqtEqOAKg2I4UyVTohxWZWeiQFmjeaJkXKVNokhf5WOiGMXKnWIgzAaLRFHk1TaIw6LqdRiju8pNKQOVCpUo464KnTPHTpWp0weA1fnmD2Yrwl/MN9UoUyVv7xCldwLf52IKtsCF7wEIHnBi4mgSCRwCVIA7CVI+r9TagIXhWmw0BW4uk2DhsBlehqsS1xvqMDcm8iFkwGQF05q/2cSSV3KGlipK3ZNblDFtuDFxQHlmqJXSQcTn8le7h3MvvR164Hsji/A1/UkwfiRCF3PdowfUtH1tM34sSFVzz+NH+RS9UTa+NE6Tc8Ijh921PTU5vjxU8XP0Y4fCB4/2cw/ov1Pe3cgAwAAACDM3zqOtmdwgmzNjeZBQEA+gYCAgICAgICAgIAETuKXxaAVTVgAAAAASUVORK5CYII=>>

Rasterific is a vector drawing library (a rasterizer)
implemented in pure haskell.

Can render vector graphics to an image and export vector data to PDF.")
    (license license:bsd-3)))

haskell-9.2-Rasterific

(define-public haskell-9.2-adjunctions
  (package
    (name "haskell-9.2-adjunctions")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-contravariant)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-distributive)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-free)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-generic-deriving)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/adjunctions/")
    (synopsis "Adjunctions and representable functors")
    (description "Adjunctions and representable functors.")
    (license license:bsd-3)))

haskell-9.2-adjunctions

(define-public haskell-9.2-ansi-terminal-game
  (package
    (name "haskell-9.2-ansi-terminal-game")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-clock)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-colour)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-linebreak)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-mintty)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-terminal-size)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-timers-tick)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-unidecode)))
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

haskell-9.2-ansi-terminal-game

(define-public haskell-9.2-astro
  (package
    (name "haskell-9.2-astro")
    (version "0.4.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/astro/astro-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1zbraw0l40r190vw9dc7bwwcrac4p6yqwng5qa8n277v6cwy5kv5"))))
    (properties `((upstream-name . "astro") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-matrix)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/aligusnet/astro")
    (synopsis "Amateur astronomical computations")
    (description
     "Amateur astronomical computations: rise and set times and azimuths,
coordinates, distances, angular sizes and other parameters
of the Sun, the Moon, planets and stars.")
    (license license:bsd-3)))

haskell-9.2-astro

(define-public haskell-9.2-atom-basic
  (package
    (name "haskell-9.2-atom-basic")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/atom-basic/atom-basic-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vkm5wfsgprs42qjzxchgrpxj3xalpg2zd79n9isvlxsp1krdgi4"))))
    (properties `((upstream-name . "atom-basic") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/atom-basic")
    (synopsis "Basic Atom feed construction")
    (description
     "<https://hackage.haskell.org/package/atom-basic atom-basic> provides a
relatively type-safe <http://tools.ietf.org/html/rfc4287 RFC4287> Atom feed
that can be used to generate feed or entry XML using the types of any
Haskell XML library. Please see the 'Web.Atom' module documentation for
more information.")
    (license license:bsd-3)))

haskell-9.2-atom-basic

(define-public haskell-9.2-attoparsec-data
  (package
    (name "haskell-9.2-attoparsec-data")
    (version "1.0.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec-data/attoparsec-data-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00clpsv9ggkz34csdwx17fhz6sirvy71g897fwi33qzdv7sb2fx0"))))
    (properties `((upstream-name . "attoparsec-data") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-attoparsec-time)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-uuid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/attoparsec-data")
    (synopsis "Parsers for the standard Haskell data types")
    (description "")
    (license license:expat)))

haskell-9.2-attoparsec-data

(define-public haskell-9.2-base58-bytestring
  (package
    (name "haskell-9.2-base58-bytestring")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-quickcheck-assertions)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://bitbucket.org/s9gf4ult/base58-bytestring")
    (synopsis "Implementation of BASE58 transcoding for ByteStrings")
    (description "Implementation of BASE58 transcoding copy-pasted from
haskoin package")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.2-base58-bytestring

(define-public haskell-9.2-benri-hspec
  (package
    (name "haskell-9.2-benri-hspec")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/benri-hspec/benri-hspec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11x7dsp6hmz1an1nm8076lgdvgd8r67hl54p81jprpi8m0lh6mqa"))))
    (properties `((upstream-name . "benri-hspec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-build-the-readme" "-f-use-doc-tests")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-markdown-unlit)))
    (home-page "https://github.com/adetokunbo/benri-hspec#readme")
    (synopsis
     "Simplify tests where Either or Maybe types are returned from monadic code")
    (description
     "A small library of __convenient__ functions for writing hspec tests.

It simplifies tests where `Either`, `Maybe` and other types are returned from
monadic code.

The [README](https://github.com/adetokunbo/benri-hspec#readme) provides usage examples.")
    (license license:bsd-3)))

haskell-9.2-benri-hspec

(define-public haskell-9.2-binary-parser
  (package
    (name "haskell-9.2-binary-parser")
    (version "0.5.7.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-parser/binary-parser-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1l739h7aixw6dlwbblk7g2cablyn6265715mwywwjq7wb73va1vd"))))
    (properties `((upstream-name . "binary-parser") (hidden? . #f)))
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
                     haskell-9.2-base-prelude)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/binary-parser")
    (synopsis "An efficient but limited parser API specialised to bytestrings")
    (description "")
    (license license:expat)))

haskell-9.2-binary-parser

(define-public haskell-9.2-brotli-streams
  (package
    (name "haskell-9.2-brotli-streams")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/brotli-streams/brotli-streams-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14jc1nhm50razsl99d95amdf4njf75dnzx8vqkihgrgp7qisyz3z"))))
    (properties `((upstream-name . "brotli-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "01w72wyvfyf8d5wb88ds1m8mrk7xik8y4kzj1025jxh45li2w4dr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-brotli)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-io-streams)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-hvr/brotli-streams")
    (synopsis "IO-Streams interface for Brotli (RFC7932) compression")
    (description
     "<http://brotli.org Brotli> (<https://tools.ietf.org/html/rfc7932 RFC7932>) is a generic-purpose lossless compression algorithm suitable for <https://en.wikipedia.org/wiki/HTTP_compression HTTP compression> that compresses data using a combination of a modern variant of the LZ77 algorithm, Huffman coding and 2nd order context modeling.

This package provides an IO-Streams interface for the Brotli compression algorithm.

Decompressing Brotli 'InputStreams' and compressing 'OutputStreams'
to Brotli streams with tunable (de)compression parameters is supported.
")
    (license license:bsd-3)))

haskell-9.2-brotli-streams

(define-public haskell-9.2-bz2
  (package
    (name "haskell-9.2-bz2")
    (version "1.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bz2/bz2-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1kskfgdfjpg2nn807298m605lc7jafnsi1phz3bp6jds48zwrfhq"))))
    (properties `((upstream-name . "bz2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-cross" "-f-with-bzlib")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004) haskell-9.2-c2hs)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/bz2")
    (synopsis "Bindings to libbz2")
    (description "High-level bindings to libbz2 via ByteString")
    (license license:bsd-3)))

haskell-9.2-bz2

(define-public haskell-9.2-cabal2spec
  (package
    (name "haskell-9.2-cabal2spec")
    (version "2.6.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal2spec/cabal2spec-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1mxqllc6mbxbyr5iz6qs0sxmvzrn5jf9wbs6zqnlygg23ml043kr"))))
    (properties `((upstream-name . "cabal2spec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0njnhrm2mm2nrn5y95fqw3s5r1md64f6d1k1zql9ppl102qgrbfp")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/peti/cabal2spec")
    (synopsis "Convert Cabal files into rpm spec files")
    (description
     "Convert
Cabal files into a
<http://ftp.rpm.org/max-rpm/s1-rpm-build-creating-spec-file.html spec file>
suitable for building the package with the RPM package manager. This
tool primarily targets the <http://www.suse.com/ SUSE> and
<http://www.opensuse.org openSUSE> familiy of distributions. Support
for other RPM-based distributions is currently not available. Check
out <http://hackage.haskell.org/package/cabal-rpm cabal-rpm> if you
need this.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-cabal2spec

(define-public haskell-9.2-cardano-coin-selection
  (package
    (name "haskell-9.2-cardano-coin-selection")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-fmt)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-quiet)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/input-output-hk/cardano-coin-selection#readme")
    (synopsis "Algorithms for coin selection and fee balancing.")
    (description
     "Please see the README on GitHub at <https://github.com/input-output-hk/cardano-coin-selection>")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-cardano-coin-selection

(define-public haskell-9.2-cassava-megaparsec
  (package
    (name "haskell-9.2-cassava-megaparsec")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-cassava)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/stackbuilders/cassava-megaparsec")
    (synopsis "Megaparsec parser of CSV files that plays nicely with Cassava")
    (description
     "Megaparsec parser of CSV files that plays nicely with Cassava.")
    (license license:expat)))

haskell-9.2-cassava-megaparsec

(define-public haskell-9.2-check-email
  (package
    (name "haskell-9.2-check-email")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/check-email/check-email-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09wkz853ikr4yns2z12rnzprb98q4b8li1n6lmx5v6m0vgx1a9hw"))))
    (properties `((upstream-name . "check-email") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-email-validate)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages base) glibc)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/qoelet/check-email#readme")
    (synopsis "Confirm whether an email is valid and probably existant.")
    (description
     "See README at <https://github.com/qoelet/check-email#readme>")
    (license license:bsd-3)))

haskell-9.2-check-email

(define-public haskell-9.2-cleff
  (package
    (name "haskell-9.2-cleff")
    (version "0.3.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cleff/cleff-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0fnpk28nhafypp7p1ay1760sin9hh06dz23r68gmm93i879ayl9b"))))
    (properties `((upstream-name . "cleff") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dynamic-ioe")
       #:cabal-revision
       ("3" "1dampx9zdpj14g6a7xhsyk9xg3zq2chpv0h43jb85pyyh6ig7rb4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-atomic-primops)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-lifted-base)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-th-abstraction)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/re-xyr/cleff#readme")
    (synopsis "Fast and concise extensible effects")
    (description
     "Please see the README on GitHub at <https://github.com/re-xyr/cleff#readme>")
    (license license:bsd-3)))

haskell-9.2-cleff

(define-public haskell-9.2-commonmark
  (package
    (name "haskell-9.2-commonmark")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/commonmark/commonmark-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0kmjc9xgzy33kxz842mw5rdywip3lmk7v3ambrs87nakawgl42xp"))))
    (properties `((upstream-name . "commonmark") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-unicode-data)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unicode-transforms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jgm/commonmark-hs")
    (synopsis "Pure Haskell commonmark parser.")
    (description
     "This library provides the core data types and functions
for parsing commonmark (<https://spec.commonmark.org>).
The parser is fully commonmark-compliant and passes the test
suite.  It is designed to be customizable and easily extensible.
To customize the output, create an AST, or support a new output
format, one need only define some new typeclass instances.
It is also easy to add new syntax elements or modify existing ones.

Accurate information about source positions is available
for all block and inline elements.  Thus the library can be
used to create an accurate syntax highlighter or
an editor with live preview.

The parser has been designed for robust performance
even in pathological cases that tend to cause stack overflows or
exponential slowdowns in other parsers, with parsing speed that
varies linearly with input length.

Related packages:

- commonmark-extensions (which defines a number of syntax extensions)
- commonmark-pandoc (which allows using this parser to create a Pandoc
structure)
- commonmark-cli (a command-line tool for converting and
syntax-highlighting commonmark documents)")
    (license license:bsd-3)))

haskell-9.2-commonmark

(define-public haskell-9.2-commutative
  (package
    (name "haskell-9.2-commutative")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/athanclark/commutative#readme")
    (synopsis "Commutative binary operations.")
    (description
     "Please see the README on Github at <https://github.com/athanclark/commutative#readme>")
    (license license:bsd-3)))

haskell-9.2-commutative

(define-public haskell-9.2-conduino
  (package
    (name "haskell-9.2-conduino")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduino/conduino-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0jdhj71nva9v8f40wzkd2wzikpgwlzqid0inyfdlj4wnn83qwwk2"))))
    (properties `((upstream-name . "conduino") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-free)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-list-transformer)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mstksg/conduino#readme")
    (synopsis "Lightweight composable continuation-based stream processors")
    (description
     "A lightweight continuation-based stream processing library.

It is similar in nature to pipes and conduit, but useful if you just want
something quick to manage composable stream processing without focus on IO.

See README for more information.")
    (license license:bsd-3)))

haskell-9.2-conduino

(define-public haskell-9.2-configurator-export
  (package
    (name "haskell-9.2-configurator-export")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-configurator)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
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

haskell-9.2-configurator-export

(define-public haskell-9.2-countable
  (package
    (name "haskell-9.2-countable")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/countable/countable-" version
                    ".tar.gz"))
              (sha256
               (base32
                "119v5ms4nyxikfwlmz71qk9gqp53zkpyxc6wm3qp5bm9b6n1ff47"))))
    (properties `((upstream-name . "countable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-silently)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/AshleyYakeley/countable")
    (synopsis "Countable, Searchable, Finite, Empty classes")
    (description
     "* @@class Countable@@, for countable types

* @@class AtLeastOneCountable@@, for countable types that have at least one value

* @@class InfiniteCountable@@, for infinite countable types

* @@class Searchable@@, for types that can be searched over. This turns out to include some infinite types, see <http://math.andrej.com/2007/09/28/seemingly-impossible-functional-programs/>.

* @@class Finite@@, for finite types

* @@class Singular@@, for singular (n = 1) types

* @@class Empty@@, for empty (n = 0) types

Some orphan instances (in their own modules):

* @@(Searchable a,Eq b) => Eq (a -> b)@@ / /

* @@Finite t => Foldable ((->) t)@@ / /

* @@Finite a => Traversable ((->) a)@@ / /

* @@(Show a,Finite a,Show b) => Show (a -> b)@@ / /")
    (license license:bsd-3)))

haskell-9.2-countable

(define-public haskell-9.2-crackNum
  (package
    (name "haskell-9.2-crackNum")
    (version "3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/crackNum/crackNum-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1q9isxg65s9bsafqlcwpl82xypra4cxf935wxi5npbxi6dw5w13i"))))
    (properties `((upstream-name . "crackNum") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-libBF)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-sbv)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/LeventErkok/CrackNum")
    (synopsis "Crack various integer and floating-point data formats")
    (description
     "Crack IEEE-754 float formats and arbitrary sized words and integers, showing the layout.

For details, please see: <http://github.com/LeventErkok/crackNum/>")
    (license license:bsd-3)))

haskell-9.2-crackNum

(define-public haskell-9.2-cryptostore
  (package
    (name "haskell-9.2-cryptostore")
    (version "0.2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cryptostore/cryptostore-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1w84klg3r10vapkc8s6q21ldnp3014x9nvi5ffsmzikn7g7pw1g5"))))
    (properties `((upstream-name . "cryptostore") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-basement)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hourglass)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-pem)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage009) haskell-9.2-x509)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ocheron/cryptostore")
    (synopsis "Serialization of cryptographic data types")
    (description "Haskell implementation of PKCS \\#8, PKCS \\#12 and CMS
(Cryptographic Message Syntax).")
    (license license:bsd-3)))

haskell-9.2-cryptostore

(define-public haskell-9.2-cue-sheet
  (package
    (name "haskell-9.2-cue-sheet")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mrkkrp/cue-sheet")
    (synopsis "Support for construction, rendering, and parsing of CUE sheets")
    (description
     "Support for construction, rendering, and parsing of CUE sheets.")
    (license license:bsd-3)))

haskell-9.2-cue-sheet

(define-public haskell-9.2-cursor
  (package
    (name "haskell-9.2-cursor")
    (version "0.3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cursor/cursor-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "092wybyn97cyf2077w0y23ypkkq02b1w5filpgza0ygilgqprsag"))))
    (properties `((upstream-name . "cursor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-validity-containers)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-validity-text)))
    (home-page "https://github.com/NorfairKing/cursor")
    (synopsis "Purely Functional Cursors")
    (description "Purely Functional Cursors for common data structures

See https://cs-syd.eu/tags/cursors for more information.")
    (license license:expat)))

haskell-9.2-cursor

(define-public haskell-9.2-di-handle
  (package
    (name "haskell-9.2-di-handle")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/di-handle/di-handle-" version
                    ".tar.gz"))
              (sha256
               (base32
                "070gxs75f3wvvalw81y3af5dm76hnv89rwlh6j5dks9m8mm9pgqq"))))
    (properties `((upstream-name . "di-handle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-di-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0001/di")
    (synopsis "IO support for file handles in di-core")
    (description "IO support for file handles in di-core")
    (license license:bsd-3)))

haskell-9.2-di-handle

(define-public haskell-9.2-di-monad
  (package
    (name "haskell-9.2-di-monad")
    (version "1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/di-monad/di-monad-" version
                    ".tar.gz"))
              (sha256
               (base32
                "190n6hwa7xs4b75bfvk4k2kn3rq8hkgs52f9plxfixlrl7jympgm"))))
    (properties `((upstream-name . "di-monad") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-di-core)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-pipes)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0001/di")
    (synopsis
     "mtl flavoured typeful hierarchical structured logging for di-core.")
    (description
     "mtl flavoured typeful hierarchical structured logging for di-core.")
    (license license:bsd-3)))

haskell-9.2-di-monad

(define-public haskell-9.2-dirichlet
  (package
    (name "haskell-9.2-dirichlet")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-log-domain)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-math-functions)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-mwc-random)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/dschrempf/dirichlet")
    (synopsis "Multivariate Dirichlet distribution")
    (description
     "Please see the README on GitHub at <https://github.com/dschrempf/dirichlet#readme>")
    (license license:bsd-3)))

haskell-9.2-dirichlet

(define-public haskell-9.2-discover-instances
  (package
    (name "haskell-9.2-discover-instances")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/discover-instances/discover-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ncmvc9xc4xynsjymw3i61p6310pfi41kkkmqi2dmbagfv7n2xl6"))))
    (properties `((upstream-name . "discover-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-some-dict-of)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-th-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/parsonsmatt/discover-instances#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/parsonsmatt/discover-instances#readme>")
    (license license:bsd-3)))

haskell-9.2-discover-instances

(define-public haskell-9.2-dlist-nonempty
  (package
    (name "haskell-9.2-dlist-nonempty")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dlist-nonempty/dlist-nonempty-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1phdqr9fi2smscmqn7l9kfjxfnqfw6ws1v0a1lrqm5civ15gxhms"))))
    (properties `((upstream-name . "dlist-nonempty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsemigroupoids")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)))
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

haskell-9.2-dlist-nonempty

(define-public haskell-9.2-doclayout
  (package
    (name "haskell-9.2-doclayout")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/doclayout/doclayout-" version
                    ".tar.gz"))
              (sha256
               (base32
                "18xkzywfw0hl3hgbq9z36hs040vb0iz9yygx33cybxfi4i0dwbkx"))))
    (properties `((upstream-name . "doclayout") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0djwb7nrdablc0iy1qakrxpd4m7nn0w94vhb78il3jhjbj2ji179")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-emojis)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jgm/doclayout")
    (synopsis "A prettyprinting library for laying out text documents.")
    (description "doclayout is a prettyprinting library for laying out
text documents, with several features not present
in prettyprinting libraries designed for code.  It
was designed for use in pandoc.")
    (license license:bsd-3)))

haskell-9.2-doclayout

(define-public haskell-9.2-dotenv
  (package
    (name "haskell-9.2-dotenv")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-shellwords)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.2-dotenv

(define-public haskell-9.2-drifter-sqlite
  (package
    (name "haskell-9.2-drifter-sqlite")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/drifter-sqlite/drifter-sqlite-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07267h287bpn2smr50m7cf179kfmv8vhv4cwa4qdi1wpifiz8pic"))))
    (properties `((upstream-name . "drifter-sqlite") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-drifter)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-sqlite-simple)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/MichaelXavier/drifter-sqlite#readme")
    (synopsis "SQLite support for the drifter schema migraiton tool")
    (description
     "Please see the README on GitHub at <https://github.com/MichaelXavier/drifter-sqlite#readme>")
    (license license:bsd-3)))

haskell-9.2-drifter-sqlite

(define-public haskell-9.2-dual-tree
  (package
    (name "haskell-9.2-dual-tree")
    (version "0.2.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dual-tree/dual-tree-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19nm34d166fhlkk7npx0iq9kbx7300a82bg75q1sx98jqfa4nffh"))))
    (properties `((upstream-name . "dual-tree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-monoid-extras)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-testing-feat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/dual-tree")
    (synopsis "Rose trees with cached and accumulating monoidal annotations")
    (description "Rose (n-ary) trees with both upwards- (/i.e./
cached) and downwards-traveling (/i.e./
accumulating) monoidal annotations.  This is used
as the core data structure underlying
the @@diagrams@@ framework
(<https://diagrams.github.io>), but
potentially has other applications as well.

Abstractly, a DUALTree is a rose (n-ary) tree
with data (of type @@l@@) at leaves, data (of type
@@a@@) at internal nodes, and two types of monoidal
annotations, one (of type @@u@@) travelling \\\"up\\\"
the tree and one (of type @@d@@) traveling
\\\"down\\\".

See \"Data.Tree.DUAL\" for full documentation.
\"Data.Tree.DUAL\" provides a public API which
should suffice for most purposes.
\"Data.Tree.DUAL.Internal\" exports more of the
internal implementation---use it at your own
risk.")
    (license license:bsd-3)))

haskell-9.2-dual-tree

(define-public haskell-9.2-edit-distance-vector
  (package
    (name "haskell-9.2-edit-distance-vector")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
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

haskell-9.2-edit-distance-vector

(define-public haskell-9.2-effectful
  (package
    (name "haskell-9.2-effectful")
    (version "2.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/effectful/effectful-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1j6p28d5701v0a5fhgra1mhnzsqbxj44mpnixrh8jy34rcbq02bi"))))
    (properties `((upstream-name . "effectful") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-benchmark-foreign-libraries")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-effectful-core)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-lifted-base)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/effectful")
    (synopsis "An easy to use, performant extensible effects library.")
    (description
     "An easy to use, performant extensible effects library with seamless
integration with the existing Haskell ecosystem.

This is the \"batteries-included\" variant. See the
@@<https://hackage.haskell.org/package/effectful-core effectful-core>@@ package
if you need a more limited dependency footprint or want to browse
documentation of core modules.")
    (license license:bsd-3)))

haskell-9.2-effectful

(define-public haskell-9.2-elm-export
  (package
    (name "haskell-9.2-elm-export")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Diff)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-formatting)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hspec-core)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-wl-pprint-text)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/krisajenkins/elm-export")
    (synopsis "A library to generate Elm types from Haskell source.")
    (description
     "Generate Elm source code automatically from Haskell types. Using GHC.Generics, we can automatically derive Elm type declarations, and Aeson-compatible JSON decoders & encoders.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-elm-export

(define-public haskell-9.2-emacs-module
  (package
    (name "haskell-9.2-emacs-module")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/emacs-module/emacs-module-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j66b4r4zhqc2j1fqihzqdc0zacjy3fpgf54b7z55n2wqa6x9lgw"))))
    (properties `((upstream-name . "emacs-module") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-assertions" "-f-module-assertions")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-safe-exceptions-checked)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-void)))
    (home-page "https://github.com/sergv/emacs-module")
    (synopsis "Utilities to write Emacs dynamic modules")
    (description
     "This package provides a full set of bindings to emacs-module.h that
allows to develop Emacs modules in Haskell. Bindings are based on
Emacs 25 version of the interface and thus should work in all
subsequent versions of Emacs.

For pointers on how to write minimal Emacs module, please refer
to https://github.com/sergv/emacs-module/blob/master/test/src/Emacs/TestsInit.hs")
    (license license:asl2.0)))

haskell-9.2-emacs-module

(define-public haskell-9.2-enum-text
  (package
    (name "haskell-9.2-enum-text")
    (version "0.5.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/enum-text/enum-text-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0cxk46s20wwcq68rpy3skx6ap0mlmmsgfrq0n4s2rnv1gf6gsccx"))))
    (properties `((upstream-name . "enum-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-fmt)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-possibly)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cdornan/enum-text#readme")
    (synopsis "A text rendering and parsing toolkit for enumerated types")
    (description
     "A text rendering and parsing toolkit for enumerated types. Please see the README on GitHub at <https://github.com/cdornan/enum-text#readme>")
    (license license:bsd-3)))

haskell-9.2-enum-text

(define-public haskell-9.2-envy
  (package
    (name "haskell-9.2-envy")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/envy")
    (synopsis
     "An environmentally friendly way to deal with environment variables")
    (description
     "For package use information see the <https://github.com/dmjio/envy/blob/master/README.md README.md>")
    (license license:bsd-3)))

haskell-9.2-envy

(define-public haskell-9.2-flac-picture
  (package
    (name "haskell-9.2-flac-picture")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/flac-picture/flac-picture-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02h36z65xmy0mvg7j2863h35dcf24l08ma0dxjbqcn42sca9ss0m"))))
    (properties `((upstream-name . "flac-picture") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "1ib9ypz06i81bgkj08aw6fdyxi6fbl2029vwlcqybbhz9cnya1pm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-flac)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)))
    (propagated-inputs (list (@ (gnu packages xiph) flac)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mrkkrp/flac-picture")
    (synopsis
     "Support for writing picture to FLAC metadata blocks with JuicyPixels")
    (description
     "Support for writing picture to FLAC metadata blocks with JuicyPixels.")
    (license license:bsd-3)))

haskell-9.2-flac-picture

(define-public haskell-9.2-flatparse
  (package
    (name "haskell-9.2-flatparse")
    (version "0.3.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/flatparse/flatparse-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1gv6c5qas3n9hxfm2anj99df9m960grhi7csb5g3w9w4lshcw9vz"))))
    (properties `((upstream-name . "flatparse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dump" "-f-llvm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/AndrasKovacs/flatparse#readme")
    (synopsis "High-performance parsing from strict bytestrings")
    (description
     "@@Flatparse@@ is a high-performance parsing library, focusing on programming languages and
human-readable data formats. See the README for more information:
<https://github.com/AndrasKovacs/flatparse>.")
    (license license:expat)))

haskell-9.2-flatparse

(define-public haskell-9.2-fuzzy-time
  (package
    (name "haskell-9.2-fuzzy-time")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fuzzy-time/fuzzy-time-" version
                    ".tar.gz"))
              (sha256
               (base32
                "13n2insf02d80jc4rrfgsj0ivb9lz9hfifz9796hz0cmbm1wxr2y"))))
    (properties `((upstream-name . "fuzzy-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-validity-time)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/fuzzy-time")
    (synopsis "")
    (description "Fuzzy time types, parsing and resolution")
    (license license:expat)))

haskell-9.2-fuzzy-time

(define-public haskell-9.2-genvalidity-property
  (package
    (name "haskell-9.2-genvalidity-property")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-property/genvalidity-property-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1nxcdq04rkckrb3v49pjx378n5s828k24x7hix6manyxqmd3hplw"))))
    (properties `((upstream-name . "genvalidity-property") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-genvalidity)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-pretty-show)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Standard properties for functions on `Validity` types")
    (description "")
    (license license:expat)))

haskell-9.2-genvalidity-property

(define-public haskell-9.2-genvalidity-text
  (package
    (name "haskell-9.2-genvalidity-text")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-text/genvalidity-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qrvalpk5r5bwx9x0p7g5w4wa9lpdn55h0a8g64wnxjxwi9r9qcn"))))
    (properties `((upstream-name . "genvalidity-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-genvalidity)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-validity-text)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for Text")
    (description "")
    (license license:expat)))

haskell-9.2-genvalidity-text

(define-public haskell-9.2-geodetics
  (package
    (name "haskell-9.2-geodetics")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/geodetics/geodetics-" version
                    ".tar.gz"))
              (sha256
               (base32
                "18jjq4z16v6mkmm4as67srrwzk75cl32jlph3qbm106gms54vska"))))
    (properties `((upstream-name . "geodetics") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-checkers)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-dimensional)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/PaulJohnson/geodetics")
    (synopsis "Terrestrial coordinate systems and geodetic calculations.")
    (description
     "Precise geographical coordinates (latitude & longitude), with conversion between
different reference frames and projections.

Certain distinguished reference frames and grids are given distinct
types so that coordinates expressed within them cannot be confused with
from coordinates in other frames.")
    (license license:bsd-3)))

haskell-9.2-geodetics

(define-public haskell-9.2-ghc-exactprint
  (package
    (name "haskell-9.2-ghc-exactprint")
    (version "1.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-exactprint/ghc-exactprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07m4cg47knrrvpyimnbc0nq9176vkzwwa64b2iqfj6azn6q2hagp"))))
    (properties `((upstream-name . "ghc-exactprint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-roundtrip" "-f-dev")
       #:cabal-revision
       ("1" "1v6my8bnhjhw7k3v2q9iwjpz9lj5g6ilvlzdq6svcabxahmzbr2c")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-fail)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-free)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ghc-paths)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/ghc-exactprint")
    (synopsis "ExactPrint for GHC")
    (description "Using the API Annotations available from GHC 9.2.1, this
library provides a means to round trip any code that can
be compiled by GHC, currently excluding lhs files.

Note: requires GHC 9.2 or later. For GHC versions from
7.10.2 to 9.0.* see this library with versions < 1.1
")
    (license license:bsd-3)))

haskell-9.2-ghc-exactprint

(define-public haskell-9.2-gio
  (package
    (name "haskell-9.2-gio")
    (version "0.13.8.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gio/gio-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1fh0h786h36sm8bd2v72xqqp6paw4qm5inhf86gmd993hm4avxdk"))))
    (properties `((upstream-name . "gio") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages glib) glib-with-documentation)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-glib)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-gtk2hs-buildtools)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://projects.haskell.org/gtk2hs/")
    (synopsis "Binding to GIO")
    (description
     "GIO is striving to provide a modern, easy-to-use VFS API that sits at the right level in the library stack.
The goal is to overcome the shortcomings of GnomeVFS and provide an API that is
so good that developers prefer it over raw POSIX calls.
Among other things that means using GObject.
It also means not cloning the POSIX API, but providing higher-level, document-centric interfaces.")
    (license (license "FSDG-compatible" "LGPL_2_1_only" ""))))

haskell-9.2-gio

(define-public haskell-9.2-gloss-algorithms
  (package
    (name "haskell-9.2-gloss-algorithms")
    (version "1.13.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gloss-algorithms/gloss-algorithms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "083rq6p5m0im380c6x0jc3hi59hk94z1nyj08hmvmb3vcszjxra5"))))
    (properties `((upstream-name . "gloss-algorithms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-gloss)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "http://gloss.ouroborus.net")
    (synopsis "Data structures and algorithms for working with 2D graphics.")
    (description
     "Data structures and algorithms for working with 2D graphics.")
    (license license:expat)))

haskell-9.2-gloss-algorithms

(define-public haskell-9.2-gloss-raster
  (package
    (name "haskell-9.2-gloss-raster")
    (version "1.13.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gloss-raster/gloss-raster-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sn1pnkpl76q6lf6w9ji7fh1fcb89vaz2jz9slz7fih2ksrnwlsa"))))
    (properties `((upstream-name . "gloss-raster") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-llvm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-gloss)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-gloss-rendering)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-repa)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "http://gloss.ouroborus.net")
    (synopsis "Parallel rendering of raster images.")
    (description "Parallel rendering of raster images.")
    (license license:expat)))

haskell-9.2-gloss-raster

(define-public haskell-9.2-graphite
  (package
    (name "haskell-9.2-graphite")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-cassava)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-graphviz)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/alx741/graphite#readme")
    (synopsis "Graphs and networks library")
    (description "Represent, analyze and visualize graphs")
    (license license:bsd-3)))

haskell-9.2-graphite

(define-public haskell-9.2-happstack-server
  (package
    (name "haskell-9.2-happstack-server")
    (version "7.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/happstack-server/happstack-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "175aal1l4g558y89skck3s04db0bjblkxp77bijf1s9iyc07n669"))))
    (properties `((upstream-name . "happstack-server") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-extensible-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hslogger)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-html)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-old-locale)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-sendfile)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-system-filepath)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-threads)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://happstack.com")
    (synopsis "Web related tools and services.")
    (description
     "Happstack Server provides an HTTP server and a rich set of functions for routing requests, handling query parameters, generating responses, working with cookies, serving files, and more. For in-depth documentation see the Happstack Crash Course <http://happstack.com/docs/crashcourse/index.html>")
    (license license:bsd-3)))

haskell-9.2-happstack-server

(define-public haskell-9.2-hslua-core
  (package
    (name "haskell-9.2-hslua-core")
    (version "2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-core/hslua-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hy3a7rn940bcj0shxyk75dndwl23wwmmvbnwnay36py60hy3rbq"))))
    (properties `((upstream-name . "hslua-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-lua)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-lua-arbitrary)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hslua.org/")
    (synopsis "Bindings to Lua, an embeddable scripting language")
    (description "Wrappers and helpers to bridge Haskell and
<https://www.lua.org/ Lua>.

It builds upon the /lua/ package, which allows to bundle
a Lua interpreter with a Haskell program.")
    (license license:expat)))

haskell-9.2-hslua-core

(define-public haskell-9.2-hspec-checkers
  (package
    (name "haskell-9.2-hspec-checkers")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-checkers)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/hspec-checkers")
    (synopsis "Allows to use checkers properties from hspec")
    (description
     "Allows to use <http://hackage.haskell.org/package/checkers checkers>
properties from <http://hackage.haskell.org/package/hspec hspec>.")
    (license license:bsd-3)))

haskell-9.2-hspec-checkers

(define-public haskell-9.2-hspec-smallcheck
  (package
    (name "haskell-9.2-hspec-smallcheck")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-orphans)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-call-stack)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hspec-core)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-smallcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://hspec.github.io/")
    (synopsis "SmallCheck support for the Hspec testing framework")
    (description "SmallCheck support for the Hspec testing framework")
    (license license:expat)))

haskell-9.2-hspec-smallcheck

(define-public haskell-9.2-htoml-parse
  (package
    (name "haskell-9.2-htoml-parse")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/htoml-parse/htoml-parse-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02zp241wgc7lkywp1wd7qz69k2gkgdhk72vdwqfmvxg3l61z0wb8"))))
    (properties `((upstream-name . "htoml-parse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-htoml-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-prettyprinter-combinators)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/sergv/htoml-parse")
    (synopsis "Parse TOML values produced by htoml-megaparsec package.")
    (description
     "Package definecs set of parser combinators that allows analyzing arbitrary TOML structures.
Includes formatted errors that keep track of where in the original TOML file a value
came from.")
    (license license:asl2.0)))

haskell-9.2-htoml-parse

(define-public haskell-9.2-http-types
  (package
    (name "haskell-9.2-http-types")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/aristidb/http-types")
    (synopsis
     "Generic HTTP types for Haskell (for both client and server code).")
    (description
     "Generic HTTP types for Haskell (for both client and server code).")
    (license license:bsd-3)))

haskell-9.2-http-types

(define-public haskell-9.2-httpd-shed
  (package
    (name "haskell-9.2-httpd-shed")
    (version "0.4.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/httpd-shed/httpd-shed-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19dgdimpzr7pxk7pqvyin6j87gmvnf0rm35gzhmna8qr835wy3sr"))))
    (properties `((upstream-name . "httpd-shed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-buildexamples" "-fnetwork-uri" "-fnetwork-bsd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-network-bsd)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/httpd-shed")
    (synopsis "A simple web-server with an interact style API")
    (description
     "This web server promotes a Request to IO Response function
into a local web server. The user can decide how to interpret
the requests, and the library is intended for implementing Ajax APIs.")
    (license license:bsd-3)))

haskell-9.2-httpd-shed

(define-public haskell-9.2-hxt
  (package
    (name "haskell-9.2-hxt")
    (version "9.3.1.22")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hxt/hxt-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1n9snbdl46x23ka7bbsls1vsn0plpmfmbpbl0msjfm92fkk2yq7g"))))
    (properties `((upstream-name . "hxt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fnetwork-uri" "-f-profile")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hxt-charproperties)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-hxt-regex-xmlschema)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-hxt-unicode)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/UweSchmidt/hxt")
    (synopsis "A collection of tools for processing XML with Haskell.")
    (description
     "The Haskell XML Toolbox bases on the ideas of HaXml and HXML,
but introduces a more general approach for processing XML with Haskell.
The Haskell XML Toolbox uses a generic data model for representing XML documents,
including the DTD subset and the document subset, in Haskell.
It contains a validating XML parser, a HTML parser, namespace support,
an XPath expression evaluator, an XSLT library, a RelaxNG schema validator
and funtions for serialization and deserialization of user defined data.
The library makes extensive use of the arrow approach for processing XML.
Since version 9 the toolbox is partitioned into various (sub-)packages.
This package contains the core functionality,
hxt-curl, hxt-tagsoup, hxt-relaxng, hxt-xpath, hxt-xslt,
hxt-regex-xmlschema contain the extensions.
hxt-unicode contains encoding and decoding functions,
hxt-charproperties char properties for unicode and XML.
Changes from 9.3.1.21: ghc-9.0 compatibility

Changes from 9.3.1.20: ghc 8.10 and 9.0 compatibility, tuple picker up to 24-tuples, Either instance for xpickle

Changes from 9.3.1.19: ghc-8.8.2 compatibility

Changes from 9.3.1.15: Bug in quoting PI instructions in showXmlTrees fixed

Changes from 9.3.1.14: For ghc-7.10 network-uri is automatically selected

Changes from 9.3.1.13: ghc-7.10 compatibility

Changes from 9.3.1.12: Bug when unpickling an empty attribute value removed

Changes from 9.3.1.11: Bug fix in haddock comments

Changes from 9.3.1.10: Bug in DTD validation, space and time leak in delta removed

Changes from 9.3.1.9: lower bound of mtl dependency lowered to 2.0.1

Changes from 9.3.1.8: Bug in hread removed

Changes from 9.3.1.7: Foldable and Traversable instances for NTree added
Control.Except used instead of deprecated Control.Error

Changes from 9.3.1.6: canonicalize added in hread and hreadDoc

Changes from 9.3.1.4: conditionally (no default)
dependency from networt changed to network-uri with flag \"network-uri\"

Changes from 9.3.1.3: warnings from ghc-7.8.1 removed

Changes from 9.3.1.2: https as protocol added

Changes from 9.3.1.1: new parser xreadDoc

Changes from 9.3.1.0: in readString all input decoding switched off

Changes from 9.3.0.1: lower bound for network set to be >= 2.4

Changes from 9.3.0: upper bound for network set to be < 2.4
(URI signatures changed in 2.4)

Changes from 9.2.2: XMLSchema validation integrated

Changes from 9.2.1: user defined mime type handlers added

Changes from 9.2.0: New warnings from ghc-7.4 removed")
    (license license:expat)))

haskell-9.2-hxt

(define-public haskell-9.2-inflections
  (package
    (name "haskell-9.2-inflections")
    (version "0.4.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/inflections/inflections-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1054v250p86gb1kvbrp60fzwds8v8nsqap1970j7hgk5hjwq1xj1"))))
    (properties `((upstream-name . "inflections") (hidden? . #f)))
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
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/stackbuilders/inflections-hs")
    (synopsis "Inflections library for Haskell")
    (description
     "Inflections provides methods for singularization, pluralization,
dasherizing, etc. The library is based on Rails' inflections library.")
    (license license:expat)))

haskell-9.2-inflections

(define-public haskell-9.2-io-streams-haproxy
  (package
    (name "haskell-9.2-io-streams-haproxy")
    (version "1.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/io-streams-haproxy/io-streams-haproxy-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dcn5hd4fiwyq7m01r6fi93vfvygca5s6mz87c78m0zyj29clkmp"))))
    (properties `((upstream-name . "io-streams-haproxy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("7" "0wib2mz6ifnixrcp9s1pkd00v9q7dvyka1z7zqc3pgif47hr1dbw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-io-streams)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://snapframework.com/")
    (synopsis "HAProxy protocol 1.5 support for io-streams")
    (description
     "HAProxy protocol version 1.5 support (see
<http://haproxy.1wt.eu/download/1.5/doc/proxy-protocol.txt>) for applications
using io-streams. The proxy protocol allows information about a networked
peer (like remote address and port) to be propagated through a forwarding
proxy that is configured to speak this protocol.")
    (license license:bsd-3)))

haskell-9.2-io-streams-haproxy

(define-public haskell-9.2-kazura-queue
  (package
    (name "haskell-9.2-kazura-queue")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-atomic-primops)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-free)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.2-kazura-queue

(define-public haskell-9.2-keys
  (package
    (name "haskell-9.2-keys")
    (version "3.12.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/keys/keys-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ik6wsff306dnbz0v3gpiajlj5b558hrk9176fzcb2fclf4447nm"))))
    (properties `((upstream-name . "keys") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "16s7yj70fms01ab8x2f3262p576lwqdxlkq798qf9pjxfg95jvy9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-free)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/keys/")
    (synopsis "Keyed functors and containers")
    (description
     "This package provides a bunch of ad hoc classes for accessing parts of a container.

In practice this package is largely subsumed by the
<https://hackage.haskell.org/package/lens lens package>,
but it is maintained for now as it has much
simpler dependencies.")
    (license license:bsd-3)))

haskell-9.2-keys

(define-public haskell-9.2-language-bash
  (package
    (name "haskell-9.2-language-bash")
    (version "0.9.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-bash/language-bash-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pkl0cvkxhlpx492qlklizc27xw3yax6n8h27xq3bw1vlk3c0a36"))))
    (properties `((upstream-name . "language-bash") (hidden? . #f)))
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
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/knrafto/language-bash/")
    (synopsis "Parsing and pretty-printing Bash shell scripts")
    (description "A library for parsing, pretty-printing, and manipulating
Bash shell scripts.")
    (license license:bsd-3)))

haskell-9.2-language-bash

(define-public haskell-9.2-language-docker
  (package
    (name "haskell-9.2-language-docker")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hadolint/language-docker#readme")
    (synopsis "Dockerfile parser, pretty-printer and embedded DSL")
    (description
     "All functions for parsing and pretty-printing Dockerfiles are exported through @@Language.Docker@@. For more fine-grained operations look for specific modules that implement a certain functionality.
See the <https://github.com/hadolint/language-docker GitHub project> for the source-code and examples.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-language-docker

(define-public haskell-9.2-lapack-ffi-tools
  (package
    (name "haskell-9.2-lapack-ffi-tools")
    (version "0.1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lapack-ffi-tools/lapack-ffi-tools-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mf41wcbxkgiv71c3jjwhsdg9d7qpa88qsifpa5vgplpx2v1p6ya"))))
    (properties `((upstream-name . "lapack-ffi-tools") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-cassava)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-explicit-exception)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-non-empty)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-pathtype)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-utility-ht)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
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

haskell-9.2-lapack-ffi-tools

(define-public haskell-9.2-list-t
  (package
    (name "haskell-9.2-list-t")
    (version "1.0.5.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/list-t/list-t-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1ilbc3kjvqanwn4zysy9sdp45cizdqkfyibiymzb1ibg2s56a4sg"))))
    (properties `((upstream-name . "list-t") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-foldl)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-logict)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-mmorph)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/list-t")
    (synopsis "ListT done right")
    (description "A correct implementation of the list monad-transformer.
Useful for basic streaming.")
    (license license:expat)))

haskell-9.2-list-t

(define-public haskell-9.2-logging-effect
  (package
    (name "haskell-9.2-logging-effect")
    (version "1.3.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/logging-effect/logging-effect-"
                    version ".tar.gz"))
              (sha256
               (base32
                "109q5jh07n8h94jrfxc694b54c3dzn831a87l0i5ailz9cfvbmj4"))))
    (properties `((upstream-name . "logging-effect") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-free)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-stm-delay)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ocharles/logging-effect")
    (synopsis
     "A mtl-style monad transformer for general purpose & compositional logging")
    (description "")
    (license license:bsd-3)))

haskell-9.2-logging-effect

(define-public haskell-9.2-markov-chain-usage-model
  (package
    (name "haskell-9.2-markov-chain-usage-model")
    (version "0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/markov-chain-usage-model/markov-chain-usage-model-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14r73bvh6w7qz7rqb97ky2iyf2z2j7y14iy4fcr8mjyxag3mk3jc"))))
    (properties `((upstream-name . "markov-chain-usage-model") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-matrix)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-discover)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/advancedtelematic/markov-chain-usage-model#readme")
    (synopsis "Computations for Markov chain usage models")
    (description
     "Please see the README on GitHub at <https://github.com/advancedtelematic/markov-chain-usage-model#readme>")
    (license license:bsd-2)))

haskell-9.2-markov-chain-usage-model

(define-public haskell-9.2-matrix-as-xyz
  (package
    (name "haskell-9.2-matrix-as-xyz")
    (version "0.1.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/matrix-as-xyz/matrix-as-xyz-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qblzv6893z6y9jkp2v71g73x35bbizxghliby39fx6kxw6l2j7w"))))
    (properties `((upstream-name . "matrix-as-xyz") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "01r2n4ys2z92wkdpky171dbxklynvp5cjf7vi61sf4hjdqih17nf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-matrix)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/narumij/matrix-as-xyz#readme")
    (synopsis
     "Read and Display Jones-Faithful notation for spacegroup and planegroup")
    (description
     "Please see the README on GitHub at <https://github.com/narumij/matrix-as-xyz#readme>")
    (license license:bsd-3)))

haskell-9.2-matrix-as-xyz

(define-public haskell-9.2-matrix-static
  (package
    (name "haskell-9.2-matrix-static")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/matrix-static/matrix-static-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0g7vijwj6l8l10276smhycp1h30diy8naykxf184lm87ykx2aamv"))))
    (properties `((upstream-name . "matrix-static") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-matrix)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/wchresta/matrix-static#readme")
    (synopsis "Type-safe matrix operations")
    (description
     "Please see the README on GitHub at <https://github.com/wchresta/matrix-static#readme>")
    (license license:bsd-3)))

haskell-9.2-matrix-static

(define-public haskell-9.2-megaparsec-tests
  (package
    (name "haskell-9.2-megaparsec-tests")
    (version "9.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/megaparsec-tests/megaparsec-tests-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jfzd5asm1lci78mc5sxymihmbjj9yxqx2952arxjw32psr6bpgz"))))
    (properties `((upstream-name . "megaparsec-tests") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mrkkrp/megaparsec")
    (synopsis "Test utilities and the test suite of Megaparsec")
    (description "Test utilities and the test suite of Megaparsec.")
    (license license:bsd-2)))

haskell-9.2-megaparsec-tests

(define-public haskell-9.2-model
  (package
    (name "haskell-9.2-model")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/model/model-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0yynva6zk986yl04ilkr171m2m8k649fihc2z1lkvfn6vl8qpw0d"))))
    (properties `((upstream-name . "model") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-convertible)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-either)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/Quid2/model")
    (synopsis "Derive a model of a data type using Generics")
    (description "See the <http://github.com/Quid2/model online tutorial>.")
    (license license:bsd-3)))

haskell-9.2-model

(define-public haskell-9.2-modern-uri
  (package
    (name "haskell-9.2-modern-uri")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-contravariant)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-reflection)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mrkkrp/modern-uri")
    (synopsis "Modern library for working with URIs")
    (description "Modern library for working with URIs.")
    (license license:bsd-3)))

haskell-9.2-modern-uri

(define-public haskell-9.2-monad-schedule
  (package
    (name "haskell-9.2-monad-schedule")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-schedule/monad-schedule-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1crzah9arrr0c3zmld66r20w3jvd5gcblq9d3my784z9sh8cqwz3"))))
    (properties `((upstream-name . "monad-schedule") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-free)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-time-domain)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/monad-schedule")
    (synopsis "A new, simple, composable concurrency abstraction.")
    (description
     "A monad @@m@@ is said to allow scheduling if you can pass a number of actions @@m a@@ to it,
and those can be executed at the same time concurrently.
You can observe the result of the actions after some time:
Some actions will complete first, and the results of these are returned then as a list @@'NonEmpty' a@@.
Other actions are still running, and for these you will receive continuations of type @@m a@@,
which you can further run or schedule to completion as you like.")
    (license license:expat)))

haskell-9.2-monad-schedule

(define-public haskell-9.2-mono-traversable
  (package
    (name "haskell-9.2-mono-traversable")
    (version "1.0.15.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mono-traversable/mono-traversable-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dvlp7r7r1lc3fxkwaz68f1nffg83240q8a989x24x1x67rj1clq"))))
    (properties `((upstream-name . "mono-traversable") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-foldl)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-vector-algorithms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis
     "Type classes for mapping, folding, and traversing monomorphic containers")
    (description
     "Please see the README at <https://www.stackage.org/package/mono-traversable>")
    (license license:expat)))

haskell-9.2-mono-traversable

(define-public haskell-9.2-monoid-subclasses
  (package
    (name "haskell-9.2-monoid-subclasses")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primes)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/blamario/monoid-subclasses/")
    (synopsis "Subclasses of Monoid")
    (description
     "A hierarchy of subclasses of 'Monoid' together with their instances for all data structures from base, containers, and
text packages.")
    (license license:bsd-3)))

haskell-9.2-monoid-subclasses

(define-public haskell-9.2-natural-transformation
  (package
    (name "haskell-9.2-natural-transformation")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
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

haskell-9.2-natural-transformation

(define-public haskell-9.2-netpbm
  (package
    (name "haskell-9.2-netpbm")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-attoparsec-binary)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-storable-record)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-vector-th-unbox)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nh2/haskell-netpbm")
    (synopsis "Loading PBM, PGM, PPM image files")
    (description
     "This package contains pure Haskell parsers for the netpbm image formats: PBM, PGM and PPM, for both ASCII and binary encodings.

All netpbm image formats are implemented (P1 - P6).

The current implementation parses PPM images at around 10 MB/s on a Core i5-2520M.")
    (license license:expat)))

haskell-9.2-netpbm

(define-public haskell-9.2-netrc
  (package
    (name "haskell-9.2-netrc")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbytestring_has_builder")
       #:cabal-revision
       ("9" "0srgxcgzzkrq96zg8vk61wnr4mrvgcxbgpdh2kklsfc2p6phzzp7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hvr/netrc")
    (synopsis "Parser for .netrc files")
    (description
     "This package provides a parser and a printer for so-called @@.netrc@@ files.

See <http://linux.die.net/man/5/netrc netrc(5)> manual page for more
information about @@.netrc@@ files.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-netrc

(define-public haskell-9.2-nonce
  (package
    (name "haskell-9.2-nonce")
    (version "1.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/nonce/nonce-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1q9ph0aq51mvdvydnriqd12sfin36pfb8f588zgac1ybn8r64ksb"))))
    (properties `((upstream-name . "nonce") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "09xvg4lpmb1hw153afhbjrdg9v3npfwpdfhpv5y8b0qvb4zi3n9q")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-entropy)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/prowdsponsor/nonce")
    (synopsis "Generate cryptographic nonces.")
    (description
     "According to the Wikipedia, a nonce is an arbitrary number used
only once in a cryptographic communication.  This package
contain helper functions for generating nonces.

There are many kinds of nonces used in different situations.
It's not guaranteed that by using the nonces from this package
you won't have any security issues.  Please make sure that the
nonces generated via this package are usable on your design.")
    (license license:bsd-3)))

haskell-9.2-nonce

(define-public haskell-9.2-normalization-insensitive
  (package
    (name "haskell-9.2-normalization-insensitive")
    (version "2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/normalization-insensitive/normalization-insensitive-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rr12rrij64hi6jkd42h4x2m86k1ra10ykzpzc38n6rfdhyiswpn"))))
    (properties `((upstream-name . "normalization-insensitive")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1gf3msmrgd6amqhsy18b7wygjmjcz295v7pj9pdwdig7mlak1r7s")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unicode-transforms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ppelleti/normalization-insensitive")
    (synopsis "Normalization insensitive string comparison")
    (description
     "The module @@Data.Unicode.NormalizationInsensitive@@ provides
the 'NI' type constructor which can be parameterized by a
string-like type like: 'String', 'ByteString', 'Text',
etc.. Comparisons of values of the resulting type will be
insensitive to normalization.

This is very similar in spirit to the @@case-insensitive@@
package, and is in fact based on the same code.")
    (license license:bsd-3)))

haskell-9.2-normalization-insensitive

(define-public haskell-9.2-openssl-streams
  (package
    (name "haskell-9.2-openssl-streams")
    (version "1.2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/openssl-streams/openssl-streams-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10pnnpzgb5xr811kc9qdk7h2cgn6hk2yiyhnzz8f8p0fjzc0pwjm"))))
    (properties `((upstream-name . "openssl-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0vfawnfcjrw29qg1n7k6z6bk4bmnk869gjlr9mxw4mzxgl80b2vp")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-HsOpenSSL)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-io-streams)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/openssl-streams")
    (synopsis "OpenSSL network support for io-streams.")
    (description
     "The openssl-streams library contains io-streams routines for secure
networking using OpenSSL (by way of HsOpenSSL).")
    (license license:bsd-3)))

haskell-9.2-openssl-streams

(define-public haskell-9.2-optics
  (package
    (name "haskell-9.2-optics")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/optics/optics-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1irk0m3194vmrqwm29p5gjwd8w7i5hmg1ikxfw11yjfk0hvmbrzb"))))
    (properties `((upstream-name . "optics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-optics-core)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-optics-extra)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-optics-th)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/optics")
    (synopsis "Optics as an abstract interface")
    (description
     "This package makes it possible to define and use Lenses, Traversals, Prisms
and other optics, using an abstract interface. See the main module \"Optics\"
for the documentation.

This is the \"batteries-included\" variant with many dependencies; see the
@@<https://hackage.haskell.org/package/optics-core optics-core>@@ package and
other @@optics-*@@ dependencies if you need a more limited dependency footprint.

Note: Hackage does not yet display documentation for reexported-modules,
but you can start from the \"Optics\" module documentation or see the module
list in @@<https://hackage.haskell.org/package/optics-core optics-core>@@.")
    (license license:bsd-3)))

haskell-9.2-optics

(define-public haskell-9.2-optparse-simple
  (package
    (name "haskell-9.2-optparse-simple")
    (version "0.1.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/optparse-simple/optparse-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0y3qgab8csiwyv60cnpzpv65n3c0ikvdx5b5mfkfahkv8xfdh08x"))))
    (properties `((upstream-name . "optparse-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-example")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-githash)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-th-compat)))
    (home-page "https://github.com/fpco/optparse-simple#readme")
    (synopsis "Simple interface to optparse-applicative")
    (description
     "Please see the README at <https://www.stackage.org/package/optparse-simple>")
    (license license:bsd-3)))

haskell-9.2-optparse-simple

(define-public haskell-9.2-pango
  (package
    (name "haskell-9.2-pango")
    (version "0.13.8.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pango/pango-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1mndcb904vlkqpbmj5np9lxqw2qw3pzawvrgbsbxa9xjayh0ylw5"))))
    (properties `((upstream-name . "pango") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnew-exception")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) cairo)
                  (@ (gnu packages gtk) gtk+)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-cairo)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-glib)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-gtk2hs-buildtools)
                  (@ (gnu packages gtk) pango-1.90)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://projects.haskell.org/gtk2hs/")
    (synopsis "Binding to the Pango text rendering engine.")
    (description
     "This package provides a wrapper around the Pango C library that
allows high-quality rendering of Unicode text. It can be used
either with Cairo to output text in PDF, PS or other
documents or with Gtk+ to display text on-screen.")
    (license (license "FSDG-compatible" "LGPL_2_1_only" ""))))

haskell-9.2-pango

(define-public haskell-9.2-parsers
  (package
    (name "haskell-9.2-parsers")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-orphans)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-charset)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/parsers/")
    (synopsis "Parsing combinators")
    (description
     "This library provides convenient combinators for working with and building parsing combinator libraries.

Given a few simple instances, e.g. for the class 'Text.Parser.Combinators.Parsing' in \"Text.Parser.Combinators.Parsing\" you
get access to a large number of canned definitions. Instances exist for the parsers provided by @@parsec@@,
@@attoparsec@@ and base’s \"Text.Read\".")
    (license license:bsd-3)))

haskell-9.2-parsers

(define-public haskell-9.2-password-types
  (package
    (name "haskell-9.2-password-types")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/cdepillabout/password/tree/master/password-types#readme")
    (synopsis "Types for handling passwords")
    (description
     "A library providing types for working with plain-text and hashed passwords.")
    (license license:bsd-3)))

haskell-9.2-password-types

(define-public haskell-9.2-pdf-toolbox-core
  (package
    (name "haskell-9.2-pdf-toolbox-core")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pdf-toolbox-core/pdf-toolbox-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1d5bk7qbcgz99xa61xi17z0hgr3w2by3d5mr2vgd0hpcdi5ygskz"))))
    (properties `((upstream-name . "pdf-toolbox-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fzlib")
       #:cabal-revision
       ("1" "1h5nh360zaql29lw3mcykip7bvnnjjcxmpaaz3s842a227m9wflz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-cipher-aes)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-cipher-rc4)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-crypto-api)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-cryptohash)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-io-streams)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/Yuras/pdf-toolbox")
    (synopsis "A collection of tools for processing PDF files.")
    (description
     "Low level tools for processing PDF files.

Level of abstraction: cross reference, trailer, indirect object, object

The API is based on random access input streams, and is designed to be memory efficient.
We don't need to parse the entire PDF file and store it in memory when you need just one page or two.
Usually it is also leads to time efficiency, but we don't try optimize performance
by e.g. maintaining xref or object cache. Higher level layers should take care of it.

The library is low level. It may mean that you need to be familiar with PDF file internals to
actually use it.")
    (license license:bsd-3)))

haskell-9.2-pdf-toolbox-core

(define-public haskell-9.2-pipes-group
  (package
    (name "haskell-9.2-pipes-group")
    (version "1.0.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-group/pipes-group-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1issfj3syi6lfbcdn3bhlbnlh86s92ldsb04c4ac69xipsgyhwqk"))))
    (properties `((upstream-name . "pipes-group") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("7" "0g6xrp4xi4gzar5l4jhpfi617zvy1hv0i9rg7gg23fcqfyc1kh22")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-free)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-lens-family-core)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-pipes)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-pipes-parse)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/pipes-group")
    (synopsis "Group streams into substreams")
    (description
     "@@pipes-group@@ uses @@FreeT@@ and lenses to group streams into
sub-streams.  Notable features include:

* /Perfect Streaming/: Group elements without collecting them into memory

* /Lens Support/: Use lenses to simplify many common operations

@@Pipes.Group@@ contains the full documentation for this library.

Read @@Pipes.Group.Tutorial@@ for an extensive tutorial.")
    (license license:bsd-3)))

haskell-9.2-pipes-group

(define-public haskell-9.2-pipes-ordered-zip
  (package
    (name "haskell-9.2-pipes-ordered-zip")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-ordered-zip/pipes-ordered-zip-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jgqnx5jdra5v0r7v564zzd96jfv42lbkdxgk1k7ip8gcikb1zdm"))))
    (properties `((upstream-name . "pipes-ordered-zip") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-foldl)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-pipes)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-pipes-safe)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/githubuser/pipes-ordered-zip#readme")
    (synopsis "merge two ordered Producers into a new Producer")
    (description
     "provides a simple function to merge two Pipes-Producers into a new Producer that yields pairs of values of the original producers, but using Maybes to indicate values that are only present in the first, second or both producers. Useful to perform Left-Joins, Right-Joins and Inner-Joins on the fly using Haskell Pipes.")
    (license license:bsd-3)))

haskell-9.2-pipes-ordered-zip

(define-public haskell-9.2-polysemy-extra
  (package
    (name "haskell-9.2-polysemy-extra")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-polysemy)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-polysemy-kvstore)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/polysemy-extra")
    (synopsis "Extra Input and Output functions for polysemy.")
    (description "")
    (license license:expat)))

haskell-9.2-polysemy-extra

(define-public haskell-9.2-polysemy-methodology
  (package
    (name "haskell-9.2-polysemy-methodology")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-polysemy)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-polysemy-kvstore)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-polysemy-several)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/polysemy-methodology")
    (synopsis "Domain modelling algebra for polysemy")
    (description "")
    (license license:expat)))

haskell-9.2-polysemy-methodology

(define-public haskell-9.2-polysemy-zoo
  (package
    (name "haskell-9.2-polysemy-zoo")
    (version "0.8.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/polysemy-zoo/polysemy-zoo-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0p8ljkpmcf0gf29b8dl1xwra189xfs5ba88fgmys2jcg2wz6yy1d"))))
    (properties `((upstream-name . "polysemy-zoo") (hidden? . #f)))
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
                     haskell-9.2-constraints)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-contravariant)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ghc-compact)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-polysemy)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-polysemy-plugin)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-reflection)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-streaming)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/isovector/polysemy-zoo#readme")
    (synopsis
     "Experimental, user-contributed effects and interpreters for polysemy")
    (description
     "Please see the README on GitHub at <https://github.com/isovector/polysemy-zoo#readme>")
    (license license:bsd-3)))

haskell-9.2-polysemy-zoo

(define-public haskell-9.2-posix-paths
  (package
    (name "haskell-9.2-posix-paths")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/posix-paths/posix-paths-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ljphynpaaibs9zjxwk1b774q66s3biinfx2sgdzxyzssbl9va42"))))
    (properties `((upstream-name . "posix-paths") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/posix-paths")
    (synopsis "POSIX filepath/directory functionality")
    (description
     "This package gives access to certain POSIX-based Filepath/Directory
services.

The package is not supported under Windows (except under Cygwin).")
    (license license:bsd-3)))

haskell-9.2-posix-paths

(define-public haskell-9.2-pptable
  (package
    (name "haskell-9.2-pptable")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pptable/pptable-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "05wkvnk2h3xvjivk8cd6z8xlscipvd2az1v1n4sdianf9r0gzdwq"))))
    (properties `((upstream-name . "pptable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0c1srvgwyczbfnw3zw5pbsjqgxifq9yb1h60w3aq91q7iamrvdgb")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-boxes)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-generic-deriving)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/gdevanla/pptable#readme")
    (synopsis "Pretty Print containers in a tabular format")
    (description
     "When you are faced with tens of records data types contained in a list or similar structure if becomes difficult to view all records during iterative development. This library provides a generic funciton to print any such record types in a tabular format that makes visualizing the data more pleasing. Please see README.md for examples of this.")
    (license license:expat)))

haskell-9.2-pptable

(define-public haskell-9.2-pretty-sop
  (package
    (name "haskell-9.2-pretty-sop")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pretty-sop/pretty-sop-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10vybwbkqgr3fi13c5qwwhrwns9sdj7zvlkz6vag966pk238gnxy"))))
    (properties `((upstream-name . "pretty-sop") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "04gr1aaqaq347rv5vqh93qcnbc53y55hrds73js5329z2j1gbmng")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-generics-sop)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-pretty-show)))
    (home-page "https://hackage.haskell.org/package/pretty-sop")
    (synopsis "A generic pretty-printer using generics-sop")
    (description
     "This library contains a generic implementation of the 'prettyVal'
function from the @@<https://hackage.haskell.org/package/pretty-show pretty-show>@@
package. Using the pretty printer, values can easily be rendered to
strings and HTML documents in a uniform way.

This library makes use of the
@@<https://hackage.haskell.org/package/generics-sop generics-sop>@@ package and
is an example of a generic function defined in the SOP style.
")
    (license license:bsd-3)))

haskell-9.2-pretty-sop

(define-public haskell-9.2-profiterole
  (package
    (name "haskell-9.2-profiterole")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-ghc-prof)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ndmitchell/profiterole#readme")
    (synopsis "Restructure GHC profile reports")
    (description
     "Given a GHC profile output, this tool generates alternative views on the data,
which are typically more concise and may reveal new insights.")
    (license license:bsd-3)))

haskell-9.2-profiterole

(define-public haskell-9.2-protobuf-simple
  (package
    (name "haskell-9.2-protobuf-simple")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)))
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

haskell-9.2-protobuf-simple

(define-public haskell-9.2-pvar
  (package
    (name "haskell-9.2-pvar")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pvar/pvar-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0f28wb89zlddgmh0302x73lphmd6kmx1829yh6kwsz7a6asq79ln"))))
    (properties `((upstream-name . "pvar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0r3r7w9x31pimrzmp5fjabgcx8caxf1g0mk9izksw2wnn1anhjix")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-genvalidity)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/lehins/pvar#readme")
    (synopsis "Mutable variable with primitive values")
    (description
     "Mutable variable `PVar` that is backed by a single value `MutableByteArray`")
    (license license:bsd-3)))

haskell-9.2-pvar

(define-public haskell-9.2-range
  (package
    (name "haskell-9.2-range")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/range/range-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0kvb5bl4k2gwm0hd71plwh7hmwbgk17g77iq39d7lqw4nmlg3j0k"))))
    (properties `((upstream-name . "range") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-free)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://bitbucket.org/robertmassaioli/range")
    (synopsis "An efficient and versatile range library.")
    (description
     "The range library alows the use of performant and versatile ranges in your code.
It supports bounded and unbounded ranges, ranges in a nested manner (like library
versions), an efficient algebra of range computation and even a simplified interface
for ranges for the common cases. This library is far more efficient than using the
default Data.List functions to approximate range behaviour. Performance is the major
value offering of this library.
If this is your first time using this library it is highly recommended that you start
with \"Data.Range\"; it contains the basics of this library that meet most use
cases.")
    (license license:expat)))

haskell-9.2-range

(define-public haskell-9.2-rank2classes
  (package
    (name "haskell-9.2-rank2classes")
    (version "1.4.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rank2classes/rank2classes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09wpjan20m6icrw7v41dn85kapy6ijz2mm17iw2pp51c4h9c09ci"))))
    (properties `((upstream-name . "rank2classes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fuse-template-haskell")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-data-functor-logistic)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-distributive)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (home-page "https://github.com/blamario/grampa/tree/master/rank2classes")
    (synopsis
     "standard type constructor class hierarchy, only with methods of rank 2 types")
    (description
     "A mirror image of the standard type constructor class hierarchy rooted in 'Functor', except with methods of rank 2
types and class instances of kind @@(k->*)->*@@. The classes enable generic handling of heterogenously typed data
structures and other neat tricks.")
    (license license:bsd-3)))

haskell-9.2-rank2classes

(define-public haskell-9.2-recursion-schemes
  (package
    (name "haskell-9.2-recursion-schemes")
    (version "5.2.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/recursion-schemes/recursion-schemes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04233y5qw7vm0kyh4h44zpfk2zsd6kz9081ngvi098y0xiphrwm9"))))
    (properties `((upstream-name . "recursion-schemes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftemplate-haskell")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-orphans)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-data-fix)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-free)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-th-abstraction)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/recursion-schemes/")
    (synopsis
     "Representing common recursion patterns as higher-order functions")
    (description
     "Many recursive functions share the same structure, e.g. pattern-match on the input and, depending on the data constructor, either recur on a smaller input or terminate the recursion with the base case. Another one: start with a seed value, use it to produce the first element of an infinite list, and recur on a modified seed in order to produce the rest of the list. Such a structure is called a recursion scheme. Using higher-order functions to implement those recursion schemes makes your code clearer, faster, and safer. See README for details.")
    (license license:bsd-2)))

haskell-9.2-recursion-schemes

(define-public haskell-9.2-redis-resp
  (package
    (name "haskell-9.2-redis-resp")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/redis-resp/redis-resp-" version
                    ".tar.gz"))
              (sha256
               (base32
                "12w00zjf901xi6wwb0g6wzbxkbh1iyyd7glxijx9sajv6jgd5365"))))
    (properties `((upstream-name . "redis-resp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-bytestring-conversion)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-double-conversion)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-operational)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://gitlab.com/twittner/redis-resp/")
    (synopsis "REdis Serialization Protocol (RESP) implementation.")
    (description
     "REdis Serialization Protocol (RESP) implementation as specified
in <http://redis.io/topics/protocol>.

Most Redis commands are declared as a GADT which
enables different interpretations such as
<http://hackage.haskell.org/package/redis-io redis-io>.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-9.2-redis-resp

(define-public haskell-9.2-rg
  (package
    (name "haskell-9.2-rg")
    (version "1.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rg/rg-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1cnh3pmq80vziwr2rnz2zinlhak5abrkcpcrrs6x6jz0aq9npnj7"))))
    (properties `((upstream-name . "rg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-fmt)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-possibly)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cdornan/rg#readme")
    (synopsis "A dynamic/unbounded alternative to Bounded Enum")
    (description
     "Please see the README on GitHub at <https://github.com/cdornan/rg#readme>")
    (license license:bsd-3)))

haskell-9.2-rg

(define-public haskell-9.2-rio
  (package
    (name "haskell-9.2-rio")
    (version "0.1.22.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rio/rio-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0rpc4f2yvw0y6mqz9ykm3778j6srya7ssww691kpf9nb8vddgjb6"))))
    (properties `((upstream-name . "rio") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-microlens-mtl)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-typed-process)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/commercialhaskell/rio#readme")
    (synopsis "A standard library for Haskell")
    (description
     "See README and Haddocks at <https://www.stackage.org/package/rio>")
    (license license:expat)))

haskell-9.2-rio

(define-public haskell-9.2-rss
  (package
    (name "haskell-9.2-rss")
    (version "3000.2.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rss/rss-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0z48xb610k1h29rg03q19y08fp78agxp2gr48innw5y3rz00s6ym"))))
    (properties `((upstream-name . "rss") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-old-locale" "-fnetwork-uri")
       #:cabal-revision
       ("6" "1zhkfkvlbisk5qa7fccpwknblzk1m4kyyfcdhj436p2q5kx8dd8v")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-HaXml)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-hvr/rss")
    (synopsis "A library for generating RSS 2.0 feeds.")
    (description
     "This library allows you to generate [RSS 2.0](http://www.rssboard.org/rss-specification) feeds.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.2-rss

(define-public haskell-9.2-safe-coloured-text
  (package
    (name "haskell-9.2-safe-coloured-text")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safe-coloured-text/safe-coloured-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0n8pkdy7v1c3c14fpbwkrib5vmmviqv9ysl7bcm6g3p23qi4lq5i"))))
    (properties `((upstream-name . "safe-coloured-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-validity-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-validity-text)))
    (home-page "https://github.com/NorfairKing/safe-coloured-text#readme")
    (synopsis "Safely output coloured text")
    (description "")
    (license license:expat)))

haskell-9.2-safe-coloured-text

(define-public haskell-9.2-sampling
  (package
    (name "haskell-9.2-sampling")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sampling/sampling-" version
                    ".tar.gz"))
              (sha256
               (base32
                "13xkq8p656xybbpvkxp42qkkgc1majp18w384ap7l4sbxrxif7kv"))))
    (properties `((upstream-name . "sampling") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-foldl)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-mwc-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jtobin/sampling")
    (synopsis "Sample values from collections.")
    (description
     "Basic sampling tools.

Exports variations on two simple functions for sampling from arbitrary
'Foldable' collections:

* 'sample', for sampling without replacement

* 'resample', for sampling with replacement (i.e., a bootstrap)

Each variation can be prefixed with 'p' to sample from a container of values
weighted by probability.")
    (license license:expat)))

haskell-9.2-sampling

(define-public haskell-9.2-say
  (package
    (name "haskell-9.2-say")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/say/say-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1r5kffjfwpas45g74sip8glrj1m9nygrnxjm7xgw898rq9pnafgn"))))
    (properties `((upstream-name . "say") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fpco/say#readme")
    (synopsis "Send textual messages to a Handle in a thread-friendly way")
    (description
     "Please see the README and documentation at <https://www.stackage.org/package/say>")
    (license license:expat)))

haskell-9.2-say

(define-public haskell-9.2-scientist
  (package
    (name "haskell-9.2-scientist")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/scientist/scientist-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ni55fm2132js1zbqw6sl47asv50xp24a463zhw093p4m5x4yydz"))))
    (properties `((upstream-name . "scientist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-MonadRandom)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-clock)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-random-shuffle)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/freckle/scientist-hs#readme")
    (synopsis "A Haskell library for carefully refactoring critical paths.")
    (description "Please see README.md")
    (license license:expat)))

haskell-9.2-scientist

(define-public haskell-9.2-semialign-optics
  (package
    (name "haskell-9.2-semialign-optics")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/semialign-optics/semialign-optics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04vh689mmnb5q77v6ifhg7xf7m2qh5x4i4804rm4biw78130xqr1"))))
    (properties `((upstream-name . "semialign-optics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)
       #:cabal-revision
       ("2" "107qx6qxqyl3lbg59by9jbys39fc5mdbgph8iwxxklk3xr5v5nj1")))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-optics-core)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-semialign)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskellari/these")
    (synopsis "SemialignWithIndex, i.e. izipWith and ialignWith")
    (description
     "This package is deprecated.
It simply re-exports [semialign](https://hackage.haskell.org/package/semialign)
(and adds a @@optics-core@@ constraint).")
    (license license:bsd-3)))

haskell-9.2-semialign-optics

(define-public haskell-9.2-seqid-streams
  (package
    (name "haskell-9.2-seqid-streams")
    (version "0.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/seqid-streams/seqid-streams-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dd0vxs216ri0hdkz49hzzrryil7hhqb55cc9z6ca8f337imanm8"))))
    (properties `((upstream-name . "seqid-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-io-streams)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-seqid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/bitnomial/seqid-streams")
    (synopsis "Sequence ID IO-Streams")
    (description "Uniquely identify elements in a sequenced stream")
    (license license:bsd-3)))

haskell-9.2-seqid-streams

(define-public haskell-9.2-shellmet
  (package
    (name "haskell-9.2-shellmet")
    (version "0.0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shellmet/shellmet-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0jd05bazny7y25jnminal5wv30kxg6pzchswxpw5yac027qjagd0"))))
    (properties `((upstream-name . "shellmet") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-markdown-unlit)))
    (home-page "https://github.com/kowainik/shellmet")
    (synopsis "Out of the shell solution for scripting in Haskell")
    (description
     "Shellmet provides easy and convenient way to call shell commands from Haskell programs")
    (license license:mpl2.0)))

haskell-9.2-shellmet

(define-public haskell-9.2-sparse-linear-algebra
  (package
    (name "haskell-9.2-sparse-linear-algebra")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sparse-linear-algebra/sparse-linear-algebra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jfwydr0pzph932h7jvnmp1d8qqrhxsq7rbb6cjbmga55s5pfqn7"))))
    (properties `((upstream-name . "sparse-linear-algebra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dump")
       #:cabal-revision
       ("1" "0fi80wlzzmrqsc02g2zlb9skkfgkyws0v16n223j88jjr90vxmxa")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-matrix-market-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-mwc-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-vector-algorithms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ocramz/sparse-linear-algebra")
    (synopsis "Numerical computing in native Haskell")
    (description
     "/Overview/

The @@sparse-linear-algebra@@ library provides iterative linear solvers, matrix decompositions, eigenvalue algorithms and related utilities. The user interface is provided by the top-level module \"Numeric.LinearAlgebra.Sparse\":

@@
import           Numeric.LinearAlgebra.Sparse
@@

Please refer to the README file for usage examples.
")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-sparse-linear-algebra

(define-public haskell-9.2-srt-attoparsec
  (package
    (name "haskell-9.2-srt-attoparsec")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/srt-attoparsec/srt-attoparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j096cz1frig4hizlwnraqsdhbrq44ypwyc4s0gbk9vg77sgq6sz"))))
    (properties `((upstream-name . "srt-attoparsec") (hidden? . #f)))
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
                     haskell-9.2-simple-media-timestamp)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-simple-media-timestamp-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage001) haskell-9.2-srt)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/srt-attoparsec")
    (synopsis "Attoparsec parser for the SRT format.")
    (description "Attoparsec parser for the SRT format.")
    (license license:expat)))

haskell-9.2-srt-attoparsec

(define-public haskell-9.2-srt-formatting
  (package
    (name "haskell-9.2-srt-formatting")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/srt-formatting/srt-formatting-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ssbxjlzqn0n3lj3f4m3881m1z0jk5qq94badddwszxs898d1zk5"))))
    (properties `((upstream-name . "srt-formatting") (hidden? . #f)))
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
                     haskell-9.2-simple-media-timestamp)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-simple-media-timestamp-formatting)
                  (@ (gnu packages stackage ghc-9.2 stage001) haskell-9.2-srt)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/srt-formatting")
    (synopsis "Format an SRT.")
    (description "Format an SRT data type as Text.")
    (license license:expat)))

haskell-9.2-srt-formatting

(define-public haskell-9.2-stateWriter
  (package
    (name "haskell-9.2-stateWriter")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-free)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/stateWriter")
    (synopsis "A faster variant of the RWS monad transformers.")
    (description
     "This is a version of the RWS monad transformers that should be much faster than what's found in transformers. The writer in the strict version does not leak memory.")
    (license license:bsd-3)))

haskell-9.2-stateWriter

(define-public haskell-9.2-static-text
  (package
    (name "haskell-9.2-static-text")
    (version "0.2.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/static-text/static-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mphxd0wpr4qwyznff96qn5b1xb2x9k956aghap6nnabnyhgvqr4"))))
    (properties `((upstream-name . "static-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbytestring" "-ftext" "-fvector")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-doctest-driver-gen)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (home-page "https://github.com/dzhus/static-text#readme")
    (synopsis
     "Lists, Texts, ByteStrings and Vectors of statically known length")
    (description
     "static-text provides type-level safety for basic operations on string-like types (finite lists of elements), such as Data.Text, String (and all lists), Data.ByteString and Data.Vector. Use it when you need static guarantee on lengths of strings produced in your code.")
    (license license:bsd-3)))

haskell-9.2-static-text

(define-public haskell-9.2-string-conv
  (package
    (name "haskell-9.2-string-conv")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Soostone/string-conv")
    (synopsis "Standardized conversion between string types")
    (description
     "Avoids the need to remember many different functions for converting string types. Just use one universal function toS for all monomorphic string conversions.")
    (license license:bsd-3)))

haskell-9.2-string-conv

(define-public haskell-9.2-string-conversions
  (package
    (name "haskell-9.2-string-conversions")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/soenkehahn/string-conversions#readme")
    (synopsis "Simplifies dealing with different types for strings")
    (description
     "Provides a simple type class for converting values of different string types into values of other string types.")
    (license license:bsd-3)))

haskell-9.2-string-conversions

(define-public haskell-9.2-swish
  (package
    (name "haskell-9.2-swish")
    (version "0.10.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/swish/swish-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0qn3nmgxiyvvxv1hxdc6lgc5q8n53kj8lmdzvvjnq4q8s5mh5lhn"))))
    (properties `((upstream-name . "swish") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-w3ctests" "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-intern)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-polyparse)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://gitlab.com/dburke/swish")
    (synopsis "A semantic web toolkit. ")
    (description
     "Swish is a framework, written in the purely functional
programming language Haskell, for performing deductions in
RDF data using a variety of techniques. Swish is conceived
as a toolkit for experimenting with RDF inference, and for
implementing stand-alone RDF file processors (usable in
similar style to CWM, but with a view to being extensible
in declarative style through added Haskell function and data
value declarations). It explores Haskell as \\\"a scripting
language for the Semantic Web\\\".

Swish is a work-in-progress, and currently incorporates:

* Turtle, Notation3 and NTriples input and output. The N3 support is
incomplete (no handling of @@\\@@forAll@@).

* RDF graph isomorphism testing and merging.

* Display of differences between RDF graphs.

* Inference operations in forward chaining, backward chaining and proof-checking modes.

* Simple Horn-style rule implementations, extendable through variable binding modifiers and filters.

* Class restriction rule implementation, primarily for datatype inferences.

* RDF formal semantics entailment rule implementation.

* Complete, ready-to-run, command-line and script-driven programs.

Changes are given in the <https://gitlab.com/dburke/swish/raw/master/CHANGELOG> file.

References:

- <http://www.ninebynine.org/RDFNotes/Swish/Intro.html>

- <http://www.ninebynine.org/Software/swish-0.2.1.html>

- CWM: <http://www.w3.org/2000/10/swap/doc/cwm.html>
")
    (license (license "FSDG-compatible" "LGPL_2_1_or_later" ""))))

haskell-9.2-swish

(define-public haskell-9.2-tasty-silver
  (package
    (name "haskell-9.2-tasty-silver")
    (version "3.3.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-silver/tasty-silver-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13j0zs0ciijv9q2nncna1gbgsgw2g7xc228hzmqic1750n3ybz9m"))))
    (properties `((upstream-name . "tasty-silver") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-process-extras)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-silently)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/phile314/tasty-silver")
    (synopsis "A fancy test runner, including support for golden tests.")
    (description
     "This package provides a fancy test runner and support for «golden testing».

A golden test is an IO action that writes its result to a file.
To pass the test, this output file should be identical to the corresponding
«golden» file, which contains the correct result for the test.

The test runner allows filtering tests using regexes, and to interactively
inspect the result of golden tests.

This package is a heavily extended fork of tasty-golden.")
    (license license:expat)))

haskell-9.2-tasty-silver

(define-public haskell-9.2-tasty-smallcheck
  (package
    (name "haskell-9.2-tasty-smallcheck")
    (version "0.8.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-smallcheck/tasty-smallcheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0csgwn3vch0jnpqyyfnrfjq4z0dpl67imh5a7byll3hhlyidgjym"))))
    (properties `((upstream-name . "tasty-smallcheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0033ha2w9rzc1rxpzh1dkfdrn256i5lvb41pqbdh2i6kli0v5vmh")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-smallcheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/feuerbach/tasty")
    (synopsis "SmallCheck support for the Tasty test framework.")
    (description "SmallCheck support for the Tasty test framework.")
    (license license:expat)))

haskell-9.2-tasty-smallcheck

(define-public haskell-9.2-tasty-tap
  (package
    (name "haskell-9.2-tasty-tap")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-tap/tasty-tap-" version
                    ".tar.gz"))
              (sha256
               (base32
                "16i7pd0xis1fyqgmsy4mq04y87ny61dh2lddnjijcf1s9jz9b6x8"))))
    (properties `((upstream-name . "tasty-tap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/michaelxavier/tasty-tap")
    (synopsis "TAP (Test Anything Protocol) Version 13 formatter for tasty")
    (description "A tasty ingredient to output test results in TAP 13 format.")
    (license license:expat)))

haskell-9.2-tasty-tap

(define-public haskell-9.2-tdigest
  (package
    (name "haskell-9.2-tdigest")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tdigest/tdigest-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1dvkf7cs8dcr13wza5iyq2qgvz75r33mzgfmhdihw62xzxsqb6d3"))))
    (properties `((upstream-name . "tdigest") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0a39vwf37hkh06rn79blr3bw7ij05pgpxrkc9cldgdd5p4gvn1qn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-reducers)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-vector-algorithms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/phadej/haskell-tdigest#readme")
    (synopsis "On-line accumulation of rank-based statistics")
    (description
     "A new data structure for accurate on-line accumulation of rank-based statistics such as quantiles and trimmed means.

See original paper: \"Computing extremely accurate quantiles using t-digest\" by Ted Dunning and Otmar Ertl
for more details <https://github.com/tdunning/t-digest/blob/07b8f2ca2be8d0a9f04df2feadad5ddc1bb73c88/docs/t-digest-paper/histo.pdf>.")
    (license license:bsd-3)))

haskell-9.2-tdigest

(define-public haskell-9.2-termbox-banana
  (package
    (name "haskell-9.2-termbox-banana")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/termbox-banana/termbox-banana-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fj9h3nbgsr9321kb4a2m0m1afmjass5x22pc2dbn602k9d9fmyy"))))
    (properties `((upstream-name . "termbox-banana") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-reactive-banana)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-termbox)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mitchellwrosen/termbox-banana")
    (synopsis "termbox + reactive-banana")
    (description
     "This package provides a @@reactive-banana@@ FRP interface to @@termbox@@ programs.

See also:

* @@<https://hackage.haskell.org/package/termbox-tea termbox-tea>@@ for an Elm Architecture interface.")
    (license license:bsd-3)))

haskell-9.2-termbox-banana

(define-public haskell-9.2-test-framework-smallcheck
  (package
    (name "haskell-9.2-test-framework-smallcheck")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/test-framework-smallcheck/test-framework-smallcheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xpgpk1gp4w7w46b4rhj80fa0bcyz8asj2dcjb5x1c37b7rw90b0"))))
    (properties `((upstream-name . "test-framework-smallcheck")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-smallcheck)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/feuerbach/smallcheck")
    (synopsis "Support for SmallCheck tests in test-framework")
    (description "Support for SmallCheck tests in test-framework")
    (license license:bsd-3)))

haskell-9.2-test-framework-smallcheck

(define-public haskell-9.2-text-regex-replace
  (package
    (name "haskell-9.2-text-regex-replace")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-smallcheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-text-icu)))
    (propagated-inputs (list (@ (gnu packages icu4c) icu4c-71)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/text-regex-replace")
    (synopsis "Easy replacement when using text-icu regexes.")
    (description
     "This provides a convenient API for doing replacements off of a regular
expression, similar to what regex libraries in other languages provide.

At this point, this hasn't been used enough to have any idea of its
performance. Caveat emptor.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-text-regex-replace

(define-public haskell-9.2-text-show
  (package
    (name "haskell-9.2-text-show")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-base-compat-batteries)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-orphans)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bifunctors)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-bytestring-builder)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-deriving-compat)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-generic-deriving)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-th-abstraction)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-th-lift)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)))
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

haskell-9.2-text-show

(define-public haskell-9.2-th-desugar
  (package
    (name "haskell-9.2-th-desugar")
    (version "1.13.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-desugar/th-desugar-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03k2kfbzfc87kibzbpp3s1l5xb0ww2vvwj9ngh0qapxm28a01rz3"))))
    (properties `((upstream-name . "th-desugar") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-th-abstraction)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-th-lift)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-th-orphans)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)))
    (home-page "https://github.com/goldfirere/th-desugar")
    (synopsis "Functions to desugar Template Haskell")
    (description
     "This package provides the Language.Haskell.TH.Desugar module, which desugars
Template Haskell's rich encoding of Haskell syntax into a simpler encoding.
This desugaring discards surface syntax information (such as the use of infix
operators) but retains the original meaning of the TH code. The intended use
of this package is as a preprocessor for more advanced code manipulation
tools. Note that the input to any of the ds... functions should be produced
from a TH quote, using the syntax [| ... |]. If the input to these functions
is a hand-coded TH syntax tree, the results may be unpredictable. In
particular, it is likely that promoted datatypes will not work as expected.")
    (license license:bsd-3)))

haskell-9.2-th-desugar

(define-public haskell-9.2-th-env
  (package
    (name "haskell-9.2-th-env")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/th-env/th-env-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "01gmycna12sg2f0zslhjnjx8s86shsvmw5jpw5n5z93bvxkb20gw"))))
    (properties `((upstream-name . "th-env") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-th-compat)))
    (home-page "https://github.com/dzhus/th-env#readme")
    (synopsis
     "Template Haskell splices that expand to an environment variable")
    (description
     "TH splices that expand to an environment variable value. Can be used to embed build-time parameters in your application.")
    (license license:bsd-3)))

haskell-9.2-th-env

(define-public haskell-9.2-th-nowq
  (package
    (name "haskell-9.2-th-nowq")
    (version "0.1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/th-nowq/th-nowq-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "090i4fmdvjjpr8zxiqh7qvdndls18312yi6z4lya2qyjgr0jgwci"))))
    (properties `((upstream-name . "th-nowq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-markdown-unlit)))
    (home-page "https://github.com/dzhus/th-nowq#readme")
    (synopsis "Template Haskell splice that expands to current time")
    (description
     "TH splice that expands to current time as a string literal in ISO-8601 format. Can be used to embed the compilation timestamp in your application.")
    (license license:bsd-3)))

haskell-9.2-th-nowq

(define-public haskell-9.2-th-test-utils
  (package
    (name "haskell-9.2-th-test-utils")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-test-utils/th-test-utils-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vk5fj66w7smq4yc614ixh7s78n3djggpzcxmakyxfz01vz20gay"))))
    (properties `((upstream-name . "th-test-utils") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-th-orphans)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/LeapYear/th-test-utils#readme")
    (synopsis "Utility functions for testing Template Haskell code")
    (description
     "Utility functions for testing Template Haskell code, including
functions for testing failures in the Q monad.")
    (license license:bsd-3)))

haskell-9.2-th-test-utils

(define-public haskell-9.2-th-utilities
  (package
    (name "haskell-9.2-th-utilities")
    (version "0.2.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-utilities/th-utilities-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qcp3f9q4b9p372vdngy7bzcxp9b669vddpijg4j5vz04njl41sa"))))
    (properties `((upstream-name . "th-utilities") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-th-abstraction)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-th-orphans)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (home-page "https://github.com/fpco/th-utilities#readme")
    (synopsis "Collection of useful functions for use with Template Haskell")
    (description "")
    (license license:expat)))

haskell-9.2-th-utilities

(define-public haskell-9.2-thread-supervisor
  (package
    (name "haskell-9.2-thread-supervisor")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/thread-supervisor/thread-supervisor-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1k42k6c2h0xs7h4gcfsjghr5jp1q2w7ay1drlfw2ghl8zmfh2pnv"))))
    (properties `((upstream-name . "thread-supervisor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-clock)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nshimaza/thread-supervisor#readme")
    (synopsis
     "A simplified implementation of Erlang/OTP like supervisor over thread")
    (description
     "Please see the README on Github at <https://github.com/nshimaza/thread-supervisor#readme>")
    (license license:expat)))

haskell-9.2-thread-supervisor

(define-public haskell-9.2-tls
  (package
    (name "haskell-9.2-tls")
    (version "1.5.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tls/tls-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0rxdv8ab98kd4nqql7djmmi51k4vayq21s38s43sx3rzn0iyla3b"))))
    (properties `((upstream-name . "tls") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fcompat" "-fnetwork" "-f-hans")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-asn1-encoding)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-asn1-types)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hourglass)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage009) haskell-9.2-x509)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-x509-store)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/vincenthz/hs-tls")
    (synopsis "TLS/SSL protocol native implementation (Server and Client)")
    (description
     "Native Haskell TLS and SSL protocol implementation for server and client.

This provides a high-level implementation of a sensitive security protocol,
eliminating a common set of security issues through the use of the advanced
type system, high level constructions and common Haskell features.

Currently implement the SSL3.0, TLS1.0, TLS1.1, TLS1.2 and TLS 1.3 protocol,
and support RSA and Ephemeral (Elliptic curve and regular) Diffie Hellman key exchanges,
and many extensions.

Some debug tools linked with tls, are available through the
<http://hackage.haskell.org/package/tls-debug/>.")
    (license license:bsd-3)))

haskell-9.2-tls

(define-public haskell-9.2-tmapmvar
  (package
    (name "haskell-9.2-tmapmvar")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/tmapmvar")
    (synopsis "A single-entity stateful Map in STM, similar to tmapchan")
    (description
     "Please see the README on Github at <https://git.localcooking.com/tooling/tmapmvar#readme>")
    (license license:bsd-3)))

haskell-9.2-tmapmvar

(define-public haskell-9.2-turtle
  (package
    (name "haskell-9.2-turtle")
    (version "1.5.25")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/turtle/turtle-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1hh2rbwk3m4iklk67f1l1a8shsng9qzs9132j6lpag7cgqkrmqdk"))))
    (properties `((upstream-name . "turtle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-clock)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-foldl)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hostname)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-managed)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-optional-args)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-streaming-commons)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-system-fileio)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-system-filepath)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unix-compat)))
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

* Modern: Supports @@text@@ and @@system-filepath@@

Read \"Turtle.Tutorial\" for a detailed tutorial or \"Turtle.Prelude\" for a
quick-start guide

@@turtle@@ is designed to be beginner-friendly, but as a result lacks certain
features, like tracing commands.  If you feel comfortable using @@turtle@@
then you should also check out the @@Shelly@@ library which provides similar
functionality.")
    (license license:bsd-3)))

haskell-9.2-turtle

(define-public haskell-9.2-unicode-collation
  (package
    (name "haskell-9.2-unicode-collation")
    (version "0.1.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unicode-collation/unicode-collation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0imcdsk0qqwj31zwgpick4s2nbxlyxwa64lq6r212jd0y0hrrvvl"))))
    (properties `((upstream-name . "unicode-collation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-doctests" "-f-executable")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-th-lift-instances)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unicode-transforms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jgm/unicode-collation")
    (synopsis "Haskell implementation of the Unicode Collation Algorithm")
    (description "This library provides a pure Haskell implementation of
the Unicode Collation Algorithm described at
<http://www.unicode.org/reports/tr10/>.  It is not
as fully-featured or as performant as @@text-icu@@, but
it avoids a dependency on a large C library.
Locale-specific tailorings are also provided.")
    (license license:bsd-2)))

haskell-9.2-unicode-collation

(define-public haskell-9.2-unliftio-streams
  (package
    (name "haskell-9.2-unliftio-streams")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unliftio-streams/unliftio-streams-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1r9yn710nwx4h2ky2pmlhmap5ydx4fhcaq119dq7cysnygzi5q2n"))))
    (properties `((upstream-name . "unliftio-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-io-streams)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/unliftio-streams")
    (synopsis "Generalization of io-streams to MonadUnliftIO")
    (description "Generalization of io-streams to MonadUnliftIO.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-unliftio-streams

(define-public haskell-9.2-urbit-hob
  (package
    (name "haskell-9.2-urbit-hob")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hspec-core)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-murmur3)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
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

haskell-9.2-urbit-hob

(define-public haskell-9.2-uri-encode
  (package
    (name "haskell-9.2-uri-encode")
    (version "1.5.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uri-encode/uri-encode-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0lj2h701af12539p957rw24bxr07mfqd5r4h52i42f43ax165767"))))
    (properties `((upstream-name . "uri-encode") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-tools" "-fnetwork-uri")
       #:cabal-revision
       ("2" "03pmvbi56gmg1z2wr3glncc7dbyh666bqp565inh31qzsp9zwmgj")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/uri-encode")
    (synopsis "Unicode aware uri-encoding")
    (description "This package allows you to uri encode and uri decode
Strings, Texts and ByteString values.")
    (license license:bsd-3)))

haskell-9.2-uri-encode

(define-public haskell-9.2-vector-space
  (package
    (name "haskell-9.2-vector-space")
    (version "0.16")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-space/vector-space-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17676s2f8i45dj5gk370nc8585aylah7m34nbf34al7r1492y2qc"))))
    (properties `((upstream-name . "vector-space") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-Boolean)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-MemoTrie)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-NumInstances)))
    (home-page "https://hackage.haskell.org/package/vector-space")
    (synopsis "Vector & affine spaces, linear maps, and derivatives")
    (description
     "/vector-space/ provides classes and generic operations for vector
spaces and affine spaces.  It also defines a type of infinite towers
of generalized derivatives.  A generalized derivative is a linear
transformation rather than one of the common concrete representations
(scalars, vectors, matrices, ...).

/Warning/: this package depends on type families working fairly well,
requiring GHC version at least 6.9.

Project wiki page: <http://haskell.org/haskellwiki/vector-space>

&#169; 2008-2012 by Conal Elliott; BSD3 license.")
    (license license:bsd-3)))

haskell-9.2-vector-space

(define-public haskell-9.2-witherable
  (package
    (name "haskell-9.2-witherable")
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
       ("4" "1f6kb8cslgqq4x3mbg1gcxfbd9qb5a8hmrv802mm7zzhbnridiff")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-orphans)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-indexed-traversable-instances)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fumieval/witherable")
    (synopsis "filterable traversable")
    (description
     "A stronger variant of `traverse` which can remove elements and generalised mapMaybe, catMaybes, filter")
    (license license:bsd-3)))

haskell-9.2-witherable

(define-public haskell-9.2-xdg-desktop-entry
  (package
    (name "haskell-9.2-xdg-desktop-entry")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-ConfigFile)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-either)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-multimap)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/xdg-desktop-entry")
    (synopsis "Parse files conforming to the xdg desktop entry spec")
    (description "")
    (license license:bsd-3)))

haskell-9.2-xdg-desktop-entry

(define-public haskell-9.2-xmlbf-xmlhtml
  (package
    (name "haskell-9.2-xmlbf-xmlhtml")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-html-entities)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-xmlbf)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-xmlhtml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://gitlab.com/k0001/xmlbf")
    (synopsis "xmlhtml backend support for the xmlbf library.")
    (description "")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-xmlbf-xmlhtml

(define-public haskell-9.2-xss-sanitize
  (package
    (name "haskell-9.2-xss-sanitize")
    (version "0.3.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xss-sanitize/xss-sanitize-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lmmyh28mb1k44m63m7qx6iy4x2fgqq5srmky47dsm0fby9iag1h"))))
    (properties `((upstream-name . "xss-sanitize") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-css-text)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-tagsoup)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/yesodweb/haskell-xss-sanitize#readme")
    (synopsis "sanitize untrusted HTML to prevent XSS attacks")
    (description
     "run untrusted HTML through Text.HTML.SanitizeXSS.sanitizeXSS to prevent XSS attacks. see README.md <http://github.com/yesodweb/haskell-xss-sanitize> for more details")
    (license license:bsd-2)))

haskell-9.2-xss-sanitize

(define-public haskell-9.2-yi-rope
  (package
    (name "haskell-9.2-yi-rope")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-fingertree)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/yi-rope")
    (synopsis "A rope data structure used by Yi")
    (description "A rope data structure used by Yi")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-yi-rope

(define-public haskell-9.2-zipper-extra
  (package
    (name "haskell-9.2-zipper-extra")
    (version "0.1.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zipper-extra/zipper-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cq21hf40qp025ir9kihsp6b09bsrlgiqd5cfq688w57c2vhcmci"))))
    (properties `((upstream-name . "zipper-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-comonad-extras)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/zipper-extra")
    (synopsis "Zipper utils that weren't in Control.Comonad.Store.Zipper")
    (description
     "Adds some utility functions for and reexports Control.Comonad.Store.Zipper")
    (license license:expat)))

haskell-9.2-zipper-extra

