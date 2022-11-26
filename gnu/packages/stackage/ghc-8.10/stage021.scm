;;; generated file
(define-module (gnu packages stackage ghc-8.10 stage021)
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
(define-public haskell-8.10-DAV
  (package
    (name "haskell-8.10-DAV")
    (version "1.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/DAV/DAV-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1isvi4fahq70lzxfz23as7qzkc01g7kba568l6flrgd0j1984fsy"))))
    (properties `((upstream-name . "DAV") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-mtl-compat")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-haskeline)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-xml-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-xml-hamlet)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://floss.scru.org/hDAV")
    (synopsis "RFC 4918 WebDAV support")
    (description
     "This is a library for the Web Distributed Authoring and Versioning
(WebDAV) extensions to HTTP.  At present it supports a very small
subset of client functionality.

In addition, there is an executable, hdav, which can be used for
command-line operation.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-DAV

(define-public haskell-8.10-LambdaHack
  (package
    (name "haskell-8.10-LambdaHack")
    (version "0.10.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/LambdaHack/LambdaHack-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06hijymhdcrb9jrxmyilj7rvqa6kyr5q9js9ah715c3jvd6nc5gj"))))
    (properties `((upstream-name . "LambdaHack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-with_expensive_assertions" "-frelease" "-fsupportnodejs" "-f-jsaddle")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-assert-failure)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-doctest-driver-gen)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-enummapset)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-file-embed)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-hsini)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-keys)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-miniutter)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-open-browser)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-pretty-show)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-sdl2)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-sdl2-ttf)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-splitmix)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-th-lift-instances)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-vector-binary-instances)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-witch)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages sdl) sdl2)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://lambdahack.github.io")
    (synopsis
     "A game engine library for tactical squad ASCII roguelike dungeon crawlers")
    (description
     "LambdaHack is a Haskell game engine library for ASCII roguelike
games of arbitrary theme, size and complexity, with optional
tactical squad combat. It's packaged together with a sample
dungeon crawler in a quirky fantasy setting. The sample game can be
tried out in the browser at <http://lambdahack.github.io>.

Please see the changelog file for recent improvements
and the issue tracker for short-term plans. Long term goals
include multiplayer tactical squad combat, in-game content
creation, auto-balancing and persistent content modification
based on player behaviour. Contributions are welcome.

Other games known to use the LambdaHack library:

* Allure of the Stars, a near-future Sci-Fi game,
<http://hackage.haskell.org/package/Allure>

Note: All modules in this library are kept visible,
to let games override and reuse them.
OTOH, to reflect that some modules are implementation details
relative to others, the source code adheres to the following
convention. If a module has the same name as a directory,
the module is the exclusive interface to the directory.
No references to the modules in the directory are allowed
except from the interface module. This policy is only binding
when developing the library --- library users are free
to access any modules, since the library authors are in
no position to guess their particular needs.

This is a workaround .cabal file, flattened to eliminate
internal libraries until generating haddocks for them
is fixed. The original .cabal file is stored in the github repo.")
    (license license:bsd-3)))

haskell-8.10-LambdaHack

(define-public haskell-8.10-amqp-utils
  (package
    (name "haskell-8.10-amqp-utils")
    (version "0.6.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amqp-utils/amqp-utils-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1qdhp96zqcjd8yd2hmg7c2cl9gdvywp1p3v1xjcax9si5pr83w1i"))))
    (properties `((upstream-name . "amqp-utils") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-amqp)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-connection)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-filepath-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hinotify)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-magic)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-rawfilepath)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-tls)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-x509-system)))
    (propagated-inputs (list (@ (gnu packages imagemagick) imagemagick)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/amqp-utils")
    (synopsis "AMQP toolset for the command line")
    (description "AMQP tools consisting of:
AMQP consumer which can
create a temporary queue and attach it to an exchange, or
attach to an existing queue;
display header and body info;
save message bodies to files;
call a callback script.
AMQP publisher with file, line-by-line and
hotfolder capabilities.
AMQP rpc client and server.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-amqp-utils

(define-public haskell-8.10-apecs-gloss
  (package
    (name "haskell-8.10-apecs-gloss")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/apecs-gloss/apecs-gloss-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dwaynabg26vlzbaa59q5ri6sczda667ni900fn567zn8hq9c837"))))
    (properties `((upstream-name . "apecs-gloss") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-apecs)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-apecs-physics)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-gloss)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-linear)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)
                             (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)))
    (home-page "https://github.com/jonascarpay/apecs/apecs-gloss")
    (synopsis "Simple gloss renderer for apecs")
    (description "Simple 2D gloss-based rendering for apecs.
Intended for prototyping.")
    (license license:bsd-3)))

haskell-8.10-apecs-gloss

(define-public haskell-8.10-asciidiagram
  (package
    (name "haskell-8.10-asciidiagram")
    (version "1.3.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/asciidiagram/asciidiagram-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09k1kdaa0xi2fx9vfdlv2w2nxx5x1vnlkz7gp8s998a325w1x7q1"))))
    (properties `((upstream-name . "asciidiagram") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1j7p9smyfmkayx6n7inssxcg9cr4zdm6329fpvba7504b96aprdk")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-FontyFruity)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-linear)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-pandoc-types)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-rasterific-svg)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-svg-tree)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/asciidiagram")
    (synopsis "Pretty rendering of Ascii diagram into svg or png.")
    (description
     "Transform Ascii art diagram like this:

@@
,               \\/---------+
+---------+     |         |
|  ASCII  +----\\>| Diagram |
+---------+     |         |
|         |     +--+------\\/
\\\\---*-----\\/\\<=======\\/
@@

Into this:

<<data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAR0AAABnCAQAAACXrV7jAAAH+UlEQVR4Xu3cbZCVZRkH8N++srssirgqqIKKGK4WphWQMjJjilCUaASklgCZKr6RpgphlRWK0kiZVqmmY5ImyppbZiU1lglqUCqb4bsk5oq87sKyu3dfmWGneFzZPQ9evw87c87HM//538+e67qPnSyEEEIIIYQQQgghhBBCCCGEEEIIodguqMjOFIbudsmWUS3Vg159foC8Kequ6IQe1XdWjbms58n2kT/V/zcbpXaOUF79h08eeVNVufzqluiEqu+MGPLTKlI8wGUS9mubfkNPmUXrhNNOaesryShaJ+wx/rNVsovWCeuPHCrJLFontJX2kl20Tthrt82pQmbROmG3yq2yi9YJNm8pSbKLGVYgrZFvfSiKAyt06YGVolE7J71vo2OjfKsWuik6SXYhWgftdh0hWidaJ6ITIjphgekas7dORCdMcJxJFsssohP6etQ8szQD0ToyCDOMMU5DZ6KzxAO+qvf785/zla7S240AWOReL6swwFx9wD/dYrk2g0x3OG73CICxJmK2FwBc6GNyYrCnzTLP/3WfhSixr7GOAcDN6n3UuPdn6/zS4zY5x+GAH5pjsrFarLRVwmKTDfZp5ZZ5Si0OMtxrbvdlexsg4YP2tsQjZqKPJDcqXW+sSVZD0jFetNQFWjxjvEmuVQy4wkeMkt6v0Zns5+rUAuaaajaAZJ2zjHCLUkDCCCMsdbvPqUXCqSj3sHNB0glf19VG+ofpfuF/6uk8UG+qY4zDSs+gnyaVgEaP+bcyw3wQ0OhXmvRThLFK8FuD1aizzmj90eZxDZoNcrwyySInWeAQQ92jj9GFG50GrxmtUZ3LAKUatCoB8Ij1vqZE2qGwpl14EJHAaLXudzKWud1mz3pAH8AYPQy0ymzzTMQSnzfMvuZr8mFjFGOWT3nAnprN81v9fd+tjsD1jrBQmXNMs9zTpvuzJ/3eYYUanUVqHKnRAisNBN90sROdbbSe4O/KHSx1GJokbfcOKPTWucq2FptktR1Waxk41ale9nEA1NsTXOAaE3Gd4e7EaKe5VhngJ64xySZHqzPdF10IlvqMJxyLFyyyvz+pc7TnCjc6DxkrGarMQpeA8Qa7wQyzzHQ61usn0XF08t86zds+JicdIyEBKm2VOvwU+kg22uBAiyS85RgJB+BtCXCaiZIqX7CPZHcJb6nBWglTJMWmKdZDq1SY48/nrTRXuyonqDcDcLgfW2W+y202RZV3tNteQrv27d7JlQbjNMhotRod+54btdqqVCsY5U4n6usaexkCYE/AFeBJF3tRBQCq0aq6sAcR9RivFcXarbYPgH3N8bx6kw223vMGZTiw8iLrV4IJbPGkCR22Tr3r/NRJuNVsCS/r7wobHeVeFVIH3dzkdMd7WCX2lyS2+1uQ0fm1MSaBFlPd5xxJEaDFegMlJ/imK92mJ2hRDkiQ3+is3nYQseMH1jsu0+QLUgefwrOqjJK0WIKkTZ3rTAAkQJIkAGtscKIKST2StG0gJQozOq9b4QrHAkZa6Gyvm+hDettqqXXmS/bwPRcaYbgSy53pTCzwqLX4hl5OMg5zvOQVRc7CWY5W4H5hukaZrDHZJsvUuMMB4EcabMB8NUY4xTHmm+Ygv7IHKHG8S8zVS6VBzneI7e3nEN/1nL97UWl+BhFvu8hwCXCex7To40tesU4P04xTJeET/uAh/1JqqtES9nEYhoO9JByowmFOAr0kBW5i1tYeBiqda4RiCdQ4ALWgt2SYuz2oyTX2Vydp8ppRxtui0W1O9ziYqlYCwF3u8Jbj3eQOg7S7WD/JVxwkmeowqUtWv9ML8m0gRbpPetV76Xem+KODwPfN7YJe6U9R/sefsSXoQCWucrIqK93s80qk2E3eEWGghe6xwFb7m+NTsXQRrbPjhhgCIBV2dD4ghOzRoUinhBS/Ix5C3DnPIFpn96Z1+1kVd84zi+iUt6mItfbsgs1l1kd0sovWsaHCW/GVYGZho5LWNtE6mUXrPKnXsrURnexCfdPae0V0sorW+Y+HStwV0cksfG1T8c1WRXQyidbZ6sqmJcubr4yliwxCo9+4aVNTfdMZWuim1gkfkC8Hv/JS/7KNPR7ecJ0nOrlg+oZ860eRLEKx9s6PPx39XKrV9cIEG9TrHu3v0Vr7KvlW27TuUKvkzY3+4eY8L130KGlLJXKtR5sK+dPfw+Q5OlvaSpJ8ay6zXv5s8FzO16FKWp4pq5JnAygSurx1VL+8YtBRuZ/8doOITutjTw36sPxaus3kN0dGWWpNzqOz6b76z07tJbce7HjyW+MHJipUlX5mSO5bx0Mr2t+0t3x6s+PJ70h361vA0fmyv3oz/9HReu3My368m056xxwPYqzL7aGrzNx+8lvpajMUst1dagzkPzrXP3HaDYeeX6oT2kxxgjWYbYp7lHTX5Hew+w1W2Jqdbfmucldpr6q/DNvv0sqDvVuPuMcfAcf5nBO6bvK7BQAzXK0y7rV2ZXToUTqt54yNA6qbm8tbymXnSt8GzPSd7pj89nW3kVDA0RnpapO8FjcktzVu6J1/7QkM2/TEGe7v4snvBD9Qs13PjjQSLLaYbn41ybe0+roFcqfUzlS3YtVFB3+7lJmtK1aps3O1y5+/OdkzthOtQ03vmzaMo9f9a8/RqIvk7MAS0SkonX9MDvEjKfMcpUGI6GSnwVHmeZdCGOkNSXYhqLHALiqEEEIIIYQQQgghhBBCCCGE8F9DWMtlMskJNQAAAABJRU5ErkJggg==>>

See the documentation of the Text.AsciiDiagram module for the
description of the input format.")
    (license license:bsd-3)))

haskell-8.10-asciidiagram

(define-public haskell-8.10-aura
  (package
    (name "haskell-8.10-aura")
    (version "3.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/aura/aura-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1zrsjcvmhh3y0pahnz2fr944j2xz8sv4dcd9xz08vci4x1lm87hr"))))
    (properties `((upstream-name . "aura") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0rmihjl4ysw36fpj4g5zkdhzvq8c0n0vxv4zlcmn35q37k85qpb6")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-algebraic-graphs)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-aur)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-language-bash)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-prettyprinter)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-rio)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-scheduler)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-typed-process)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-versions)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/fosskers/aura")
    (synopsis "A secure package manager for Arch Linux and the AUR.")
    (description
     "Aura is a package manager for Arch Linux. It connects to both the
official Arch repostitories and to the AUR, allowing easy control of all
packages on an Arch system. It allows /all/ pacman operations and provides
/new/ custom ones for dealing with AUR packages. This differs from some other
AUR package managers.")
    (license license:gpl3)))

haskell-8.10-aura

(define-public haskell-8.10-bcp47-orphans
  (package
    (name "haskell-8.10-bcp47-orphans")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bcp47-orphans/bcp47-orphans-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08kx00dxmwj0vxazcd2s88q069swnzjfnj61kla5pczaz0aqh11w"))))
    (properties `((upstream-name . "bcp47-orphans") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-bcp47)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-cassava)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-errors)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-esqueleto)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-api-data)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-path-pieces)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-persistent)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/freckle/bcp47#readme")
    (synopsis "BCP47 orphan instances")
    (description "Orphan instances for the BCP47 type")
    (license license:expat)))

haskell-8.10-bcp47-orphans

(define-public haskell-8.10-buttplug-hs-core
  (package
    (name "haskell-8.10-buttplug-hs-core")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/buttplug-hs-core/buttplug-hs-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05mh1ly18v4lp6ynz4s2mbk6w9ibmzmrlz8z4wsv4y9bd4f2w4gl"))))
    (properties `((upstream-name . "buttplug-hs-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-casing)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-connection)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-websockets)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-wuss)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/sullyj3/buttplug-hs-core#readme")
    (synopsis "Client library for buttplug.io")
    (description
     "Library for writing clients for the Buttplug Intimate Device Control Standard. (<https://buttplug.io/>)")
    (license license:bsd-3)))

haskell-8.10-buttplug-hs-core

(define-public haskell-8.10-cabal-flatpak
  (package
    (name "haskell-8.10-cabal-flatpak")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal-flatpak/cabal-flatpak-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h7yklhqrsgxk841fryxz0sk03zb02p34g1nvwdz6c6mfpwc8y54"))))
    (properties `((upstream-name . "cabal-flatpak") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0mf387hkxshcbss739c66j0hc1143r9lns3p3aw1l76as9lbdlwj")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-cabal-plan)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-pathtype)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-shell-utility)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tar)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://hub.darcs.net/thielema/cabal-flatpak/")
    (synopsis "Generate a FlatPak manifest from a Cabal package description")
    (description
     "Generate a FlatPak manifest from a Cabal package description.

Inspired by Richard Szibele's stackpak:
<https://gitlab.com/rszibele/stackpak#readme>

See also David Lettier's post on Flatpak for Haskell:
<https://medium.com/@@lettier/how-to-flatpak-a-haskell-app-into-flathub-86ef6d69e94d>")
    (license license:bsd-3)))

haskell-8.10-cabal-flatpak

(define-public haskell-8.10-classy-prelude-conduit
  (package
    (name "haskell-8.10-classy-prelude-conduit")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-classy-prelude)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-void)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis "classy-prelude together with conduit functions")
    (description
     "See docs and README at <http://www.stackage.org/package/classy-prelude-conduit>")
    (license license:expat)))

haskell-8.10-classy-prelude-conduit

(define-public haskell-8.10-datadog
  (package
    (name "haskell-8.10-datadog")
    (version "0.2.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/datadog/datadog-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "15vbx09f2l250wlmk1wcnfrdmma81dghmy5gbyc6z7s8aqf9vib6"))))
    (properties `((upstream-name . "datadog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1427mp2sjq3n3w16266012lvqzajvn5sh63dlw2rzncscy8102nf")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-auto-update)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-buffer-builder)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-lifted-base)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/iand675/datadog")
    (synopsis
     "Datadog client for Haskell. Supports both the HTTP API and StatsD.")
    (description "")
    (license license:expat)))

haskell-8.10-datadog

(define-public haskell-8.10-deferred-folds
  (package
    (name "haskell-8.10-deferred-folds")
    (version "0.9.18.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/deferred-folds/deferred-folds-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hf14xa9fdfyk9ijxnll402x96m59giqrpj9s5rjqkd5pyi1yj6w"))))
    (properties `((upstream-name . "deferred-folds") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-foldl)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-rerebase)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/metrix-ai/deferred-folds")
    (synopsis "Abstractions over deferred folds")
    (description "This library is in an experimental state.
Users should be prepared for frequent updates.")
    (license license:expat)))

haskell-8.10-deferred-folds

(define-public haskell-8.10-dhall
  (package
    (name "haskell-8.10-dhall")
    (version "1.39.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dhall/dhall-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1by2d84fbckspczddl4npfsf89q6nprmbg0i5g8yr1psp0fpl4ab"))))
    (properties `((upstream-name . "dhall") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fwith-http" "-fuse-http-client-tls" "-f-cross")
       #:cabal-revision
       ("3" "1yhslq8i3407yaw30vgyffmmmq61f4g3ik4ikjhhplcbl6hb57l6")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-Diff)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-atomic-write)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-cborg)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-cborg-json)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-contravariant)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-data-fix)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-dotgen)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-either)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-half)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-haskeline)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-lens-family-core)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-mmorph)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-parser-combinators)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-parsers)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-pretty-simple)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-prettyprinter)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-repline)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-serialise)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-text-manipulate)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-th-lift-instances)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-uri-encode)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/dhall")
    (synopsis "A configuration language guaranteed to terminate")
    (description
     "Dhall is an explicitly typed configuration language that is not Turing
complete.  Despite being Turing incomplete, Dhall is a real programming
language with a type-checker and evaluator.

Use this library to parse, type-check, evaluate, and pretty-print the Dhall
configuration language.  This package also includes an executable which
type-checks a Dhall file and reduces the file to a fully evaluated normal
form.

Read \"Dhall.Tutorial\" to learn how to use this library")
    (license license:bsd-3)))

haskell-8.10-dhall

(define-public haskell-8.10-elynx-markov
  (package
    (name "haskell-8.10-elynx-markov")
    (version "0.5.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/elynx-markov/elynx-markov-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j2xg8iszkf3m1xlmrkm6mq3mqnfnc11pbar288r5alva7ssl1vb"))))
    (properties `((upstream-name . "elynx-markov") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-elynx-seq)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hmatrix)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-integration)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-math-functions)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-mwc-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-statistics)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/dschrempf/elynx#readme")
    (synopsis "Simulate molecular sequences along trees")
    (description
     "Examine, modify, and simulate molecular sequences in a reproducible way. Please see the README on GitHub at <https://github.com/dschrempf/elynx>.")
    (license license:gpl3+)))

haskell-8.10-elynx-markov

(define-public haskell-8.10-experimenter
  (package
    (name "haskell-8.10-experimenter")
    (version "0.1.0.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/experimenter/experimenter-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sam7wl4gha9midkgj15h0q68g121pihxxvv8dlx3wgd9as1h5d6"))))
    (properties `((upstream-name . "experimenter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-fast")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-HaTeX)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-cereal-vector)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-esqueleto)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-foundation)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hostname)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-matrix)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-monad-logger)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-mwc-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-parallel)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-persistent)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-persistent-postgresql)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-persistent-template)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-resource-pool)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/schnecki/experimenter#readme")
    (synopsis
     "Perform scientific experiments stored in a DB, and generate reports.")
    (description
     "Please see the README on GitHub at <https://github.com/schnecki/experimenter#readme>")
    (license license:bsd-3)))

haskell-8.10-experimenter

(define-public haskell-8.10-ftp-client-conduit
  (package
    (name "haskell-8.10-ftp-client-conduit")
    (version "0.5.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ftp-client-conduit/ftp-client-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0f5168z4k4j267whr0r5xlaqi8zzg1ihqfls6fjqicyqv37k8sj2"))))
    (properties `((upstream-name . "ftp-client-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-connection)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-ftp-client)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mr/ftp-client")
    (synopsis "Transfer file with FTP and FTPS with Conduit")
    (description
     "ftp-client is a library for communicating with an FTP server. It works over both a clear channel or TLS. ftp-client-conduit uses conduit to stream files and data in constant space.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-ftp-client-conduit

(define-public haskell-8.10-genvalidity-persistent
  (package
    (name "haskell-8.10-genvalidity-persistent")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-persistent/genvalidity-persistent-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01gnwvfa1hlyr35rafvdb9rz8axbnqw7nl182wf6j4pjy40iff17"))))
    (properties `((upstream-name . "genvalidity-persistent") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-genvalidity)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-genvalidity-containers)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-persistent)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-validity-containers)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-validity-persistent)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for Persistent")
    (description "")
    (license license:expat)))

haskell-8.10-genvalidity-persistent

(define-public haskell-8.10-genvalidity-sydtest
  (package
    (name "haskell-8.10-genvalidity-sydtest")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-sydtest/genvalidity-sydtest-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jgrhdjxin1zwgf2b03fpcfivyq30idnh2qcw3604bsq5cn0wca0"))))
    (properties `((upstream-name . "genvalidity-sydtest") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-genvalidity)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-pretty-show)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-sydtest)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-sydtest-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis
     "Standard properties for functions on `Validity` types for the sydtest framework")
    (description "")
    (license license:expat)))

haskell-8.10-genvalidity-sydtest

(define-public haskell-8.10-genvalidity-typed-uuid
  (package
    (name "haskell-8.10-genvalidity-typed-uuid")
    (version "0.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-typed-uuid/genvalidity-typed-uuid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16h2y11mn2p11pgqkabip0xgwfx1am8s9ja8qikz27jb87x1q410"))))
    (properties `((upstream-name . "genvalidity-typed-uuid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-genvalidity)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-genvalidity-hspec-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-genvalidity-uuid)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-typed-uuid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/typed-uuid#readme")
    (synopsis "Generators for Phantom-Typed version of UUID")
    (description
     "Please see the README on Github at <https://github.com/NorfairKing/typed-uuid#readme>")
    (license license:expat)))

haskell-8.10-genvalidity-typed-uuid

(define-public haskell-8.10-gi-gmodule
  (package
    (name "haskell-8.10-gi-gmodule")
    (version "2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-gmodule/gi-gmodule-" version
                    ".tar.gz"))
              (sha256
               (base32
                "16x0gpbs92l250ly9k52z6y85i78ycfsg0zbksfpsym4w45zjpbp"))))
    (properties `((upstream-name . "gi-gmodule") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages glib) gobject-introspection-next)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-gi-glib)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-haskell-gi)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "GModule bindings")
    (description "Bindings for GModule, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.10-gi-gmodule

(define-public haskell-8.10-gi-gobject
  (package
    (name "haskell-8.10-gi-gobject")
    (version "2.0.26")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-gobject/gi-gobject-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1kddnhdpnm21zma1zr9hpb2krrm5ksri85nzh2s9fc9c2c90xkpz"))))
    (properties `((upstream-name . "gi-gobject") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages glib) gobject-introspection-next)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-gi-glib)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-haskell-gi)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "GObject bindings")
    (description "Bindings for GObject, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.10-gi-gobject

(define-public haskell-8.10-github-release
  (package
    (name "haskell-8.10-github-release")
    (version "1.3.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/github-release/github-release-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0snhmqrz9fr51fyydi02zi8p0sa44f0hqv1krybil0ymcaqk6796"))))
    (properties `((upstream-name . "github-release") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-burrito)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-mime-types)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-optparse-generic)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/github-release")
    (synopsis "Upload files to GitHub releases.")
    (description "GitHub Release uploads files to GitHub releases.")
    (license license:expat)))

haskell-8.10-github-release

(define-public haskell-8.10-github-rest
  (package
    (name "haskell-8.10-github-rest")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/github-rest/github-rest-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0alwix2lvrvv6ba7nrxg6qvvrdci1vbv94yvq29zmsab9lbv6jrb"))))
    (properties `((upstream-name . "github-rest") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-aeson-qq)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-jwt)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-tasty-golden)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/LeapYear/github-rest#readme")
    (synopsis "Query the GitHub REST API programmatically")
    (description
     "Query the GitHub REST API programmatically, which can provide a more
flexible and clear interface than if all of the endpoints and their types
were defined as Haskell values.")
    (license license:bsd-3)))

haskell-8.10-github-rest

(define-public haskell-8.10-graphql-client
  (package
    (name "haskell-8.10-graphql-client")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/graphql-client/graphql-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1d00ib9c8ps8vv1qgrkjfzrjbgbsdnp1jiz7779bwm76j88vggb4"))))
    (properties `((upstream-name . "graphql-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "09iawm0rwflnk8lnr16g309ln99v4phi3hpz3bgzx0ji9rg1b8gd")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-aeson-schemas)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-file-embed)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-path)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-path-io)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-typed-process)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/LeapYear/graphql-client#readme")
    (synopsis "A client for Haskell programs to query a GraphQL API")
    (description "A client for Haskell programs to query a GraphQL API.")
    (license license:bsd-3)))

haskell-8.10-graphql-client

(define-public haskell-8.10-graphula
  (package
    (name "haskell-8.10-graphula")
    (version "2.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/graphula/graphula-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0h9nckz4mz4xrzwpqs3dclrc7dnqxf5pn3x741bng7cmvcwzzhdd"))))
    (properties `((upstream-name . "graphula") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-generic-arbitrary)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-generics-eot)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-api-data)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-monad-logger)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-path-pieces)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-persistent)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-persistent-sqlite)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-persistent-template)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/freckle/graphula#readme")
    (synopsis
     "A simple interface for generating persistent data and linking its dependencies")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.10-graphula

(define-public haskell-8.10-hOpenPGP
  (package
    (name "haskell-8.10-hOpenPGP")
    (version "2.9.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hOpenPGP/hOpenPGP-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1fix387wi8fqdav4zzczc3dyzcwrnb4zvpq72prs5cs7sc609w3z"))))
    (properties `((upstream-name . "hOpenPGP") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-binary-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-bz2)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-crypto-cipher-types)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-errors)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-incremental-parser)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-ixset-typed)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-monad-loops)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-nettle)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-openpgp-asciiarmor)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-prettyprinter)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://salsa.debian.org/clint/hOpenPGP")
    (synopsis "native Haskell implementation of OpenPGP (RFC4880)")
    (description
     "native Haskell implementation of OpenPGP (RFC4880), plus Camellia (RFC5581), plus ECC (RFC6637)")
    (license license:expat)))

haskell-8.10-hOpenPGP

(define-public haskell-8.10-haskell-import-graph
  (package
    (name "haskell-8.10-haskell-import-graph")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-import-graph/haskell-import-graph-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17ac5k98aqx77lq398kgvyiylpmkvxdmxzqbh7wk1fl9kphwsdm0"))))
    (properties `((upstream-name . "haskell-import-graph") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-classy-prelude)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-graphviz)))
    (home-page "https://github.com/ncaq/haskell-import-graph#readme")
    (synopsis "create haskell import graph for graphviz")
    (description "")
    (license license:expat)))

haskell-8.10-haskell-import-graph

(define-public haskell-8.10-hpack
  (package
    (name "haskell-8.10-hpack")
    (version "0.34.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hpack/hpack-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0hmaf5j4blyav3a0r1qbdhr5hs8s88c6l7ryxi011xj7hqs4fi8w"))))
    (properties `((upstream-name . "hpack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-Glob)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-infer-license)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/sol/hpack#readme")
    (synopsis "A modern format for Haskell packages")
    (description "See README at <https://github.com/sol/hpack#readme>")
    (license license:expat)))

haskell-8.10-hpack

(define-public haskell-8.10-hsebaysdk
  (package
    (name "haskell-8.10-hsebaysdk")
    (version "0.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hsebaysdk/hsebaysdk-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0y1q667j0caqqaf57yjvcyyifvzpm4iwxk3y7awnp4c3ihf0ayb3"))))
    (properties `((upstream-name . "hsebaysdk") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/creichert/hsebaysdk")
    (synopsis "Haskell eBay SDK")
    (description "eBay API wrapper in Haskell.
See the git repository for example usages.")
    (license license:bsd-3)))

haskell-8.10-hsebaysdk

(define-public haskell-8.10-http-client-overrides
  (package
    (name "haskell-8.10-http-client-overrides")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-client-overrides/http-client-overrides-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15asl6xksr7qmjbm64my3h1x3sx7558vdidx7zlkl8lf1k0w0kcl"))))
    (properties `((upstream-name . "http-client-overrides") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/robbiemcmichael/http-client-overrides")
    (synopsis "HTTP client overrides")
    (description
     "A library for applying overrides to 'ManagerSettings' when using the
<http://hackage.haskell.org/package/http-client http-client> library.")
    (license license:bsd-3)))

haskell-8.10-http-client-overrides

(define-public haskell-8.10-http-conduit
  (package
    (name "haskell-8.10-http-conduit")
    (version "2.3.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-conduit/http-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bj24phbcb7s3k6v48l5gk82m3m23j8zy9l7c5ccxp3ghn9z5gng"))))
    (properties `((upstream-name . "http-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-faeson")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/book/http-conduit")
    (synopsis "HTTP client package with conduit interface and HTTPS support.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/http-conduit>.")
    (license license:bsd-3)))

haskell-8.10-http-conduit

(define-public haskell-8.10-hw-simd
  (package
    (name "haskell-8.10-hw-simd")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hw-simd/hw-simd-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1r202xzqprb1v8ajd9n6ixckjfdy17mn8jibx4j2xgknx595v24f"))))
    (properties `((upstream-name . "hw-simd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-avx2" "-f-bmi2" "-fsse42")
       #:cabal-revision
       ("3" "1dl2zqyc3rcrlda6apy5afgvax5cah37n44hzlm81y9p1nbpd205")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-bits-extra)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-c2hs)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-doctest-discover)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-hw-bits)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-hw-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hw-prim)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-hw-rankselect)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-works/hw-simd#readme")
    (synopsis "SIMD library")
    (description
     "Please see the README on Github at <https://github.com/haskell-works/hw-simd#readme>")
    (license license:bsd-3)))

haskell-8.10-hw-simd

(define-public haskell-8.10-hw-succinct
  (package
    (name "haskell-8.10-hw-succinct")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-succinct/hw-succinct-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ns96y77r7pa7pv6p7v24m0w2xw7451skcl9y2z3r8zp3y65fb00"))))
    (properties `((upstream-name . "hw-succinct") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-hw-balancedparens)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-hw-bits)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hw-prim)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-hw-rankselect)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-mmap)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-mono-traversable)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-word8)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-succinct#readme")
    (synopsis "Succint datastructures")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.10-hw-succinct

(define-public haskell-8.10-hyperloglog
  (package
    (name "haskell-8.10-hyperloglog")
    (version "0.4.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hyperloglog/hyperloglog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0v2zw0p104gbydj6hp2cxa2s4b85pq4srcspr582aqj38bs7spfz"))))
    (properties `((upstream-name . "hyperloglog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-herbie")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-approximate)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-bits)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-bytes)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-cereal-vector)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-distributive)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-reflection)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-siphash)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/analytics/hyperloglog")
    (synopsis
     "An approximate streaming (constant space) unique object counter")
    (description
     "This package provides an approximate streaming (constant space) unique object counter.

See the original paper for details:
<http://algo.inria.fr/flajolet/Publications/FlFuGaMe07.pdf>

Notably it can be used to approximate a set of several billion elements with 1-2% inaccuracy
in around 1.5k of memory.")
    (license license:bsd-3)))

haskell-8.10-hyperloglog

(define-public haskell-8.10-ihaskell
  (package
    (name "haskell-8.10-ihaskell")
    (version "0.10.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ihaskell/ihaskell-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1lcyhj19v44wc6blj31fc4gfzsbqj0wnf9fyll8xi4nq0wq0zw89"))))
    (properties `((upstream-name . "ihaskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fuse-hlint")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cmdargs)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-ghc-parser)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-ghc-paths)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-haskeline)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-hlint)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-ipython-kernel)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-shelly)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-strict)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/gibiansky/IHaskell")
    (synopsis "A Haskell backend kernel for the IPython project.")
    (description
     "IHaskell is a Haskell backend kernel for the IPython project. This allows using Haskell via
a console or notebook interface. Additional packages may be installed to provide richer data visualizations.")
    (license license:expat)))

haskell-8.10-ihaskell

(define-public haskell-8.10-irc-conduit
  (package
    (name "haskell-8.10-irc-conduit")
    (version "0.3.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/irc-conduit/irc-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02ziqjzqdyaizhrrzlbq4ddkfjfjf58jvwqfzrbf0mf0f5scv9cz"))))
    (properties `((upstream-name . "irc-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-connection)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-irc)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-irc-ctcp)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-network-conduit-tls)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-tls)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/barrucadu/irc-conduit")
    (synopsis "Streaming IRC message library using conduits.")
    (description
     "IRC messages consist of an optional identifying prefix, a command
name, and a list of arguments. The <http://hackage.haskell.org/package/irc irc>
package provides a low-level decoding and encoding scheme for
messages in terms of ByteStrings, but using this relies on matching
names of commands as strings, and unpacking this decoded structure
yourself. This package takes it a little further, providing an ADT
for IRC messages and sources, and conduits which attempt to decode
and encode messages appropriately.

In addition to providing conduits for automatically handling
streaming messages, there are also helper functions for connecting
to an IRC server and hooking up conduits to the socket.")
    (license license:expat)))

haskell-8.10-irc-conduit

(define-public haskell-8.10-ixset-typed-binary-instance
  (package
    (name "haskell-8.10-ixset-typed-binary-instance")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ixset-typed-binary-instance/ixset-typed-binary-instance-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jgqc1ys5pvfkha8pyddz5f01qsmv9a83xw0q75njk8zhqajlyvx"))))
    (properties `((upstream-name . "ixset-typed-binary-instance")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-ixset-typed)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://hackage.haskell.org/package/ixset-typed-binary-instance")
    (synopsis "Binary instance for ixset-typed.")
    (description
     "Please see the README on GitHub at <https://gitlab.com/homotopic-tech/ixset-typed-binary-instance/README.md>")
    (license license:expat)))

haskell-8.10-ixset-typed-binary-instance

(define-public haskell-8.10-ixset-typed-conversions
  (package
    (name "haskell-8.10-ixset-typed-conversions")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ixset-typed-conversions/ixset-typed-conversions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15hxis8m60kfxi65k4sq2wica65whh8l1axw8jkx37yh1fys520x"))))
    (properties `((upstream-name . "ixset-typed-conversions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-free)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-ixset-typed)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-zipper-extra)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/ixset-typed-conversions")
    (synopsis "Conversions from ixset-typed to other containers.")
    (description
     "Conversions from ixset-typed to other containers; HashMaps, zippers.")
    (license license:expat)))

haskell-8.10-ixset-typed-conversions

(define-public haskell-8.10-ixset-typed-hashable-instance
  (package
    (name "haskell-8.10-ixset-typed-hashable-instance")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ixset-typed-hashable-instance/ixset-typed-hashable-instance-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bwajqlj1kpis2616lrmcymmag66fkmdrsrj0r3kf8j6090zxmyv"))))
    (properties `((upstream-name . "ixset-typed-hashable-instance")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-ixset-typed)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://hackage.haskell.org/package/ixset-typed-hashable-instance")
    (synopsis "Hashable instance for ixset-typed.")
    (description
     "Please see the README on GitHub at <https://github.com/githubuser/ixset-typed-hashable-instance#readme>")
    (license license:expat)))

haskell-8.10-ixset-typed-hashable-instance

(define-public haskell-8.10-koofr-client
  (package
    (name "haskell-8.10-koofr-client")
    (version "1.0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/koofr-client/koofr-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bz7akd7sssn1gzqfvr0y343771zk7dn1n3as0m93wg4ifpz1dia"))))
    (properties `((upstream-name . "koofr-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0qaipcg9n93z0za2a8jy3mv73a3q2b1dv98v2g5wwcv1qx7rvvhv")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/edofic/koofr-api-hs                       ")
    (synopsis "Client to Koofr API")
    (description
     "Koofr is a storage as a service provider located in Europe. See https://koofr.eu for more info. This is an API wrapper that simplifies working with files.
Filesystem roots are called mounts and cannot be manipulated through api.
The API is contained in a type class in order to allow mocking. Mock runner and wider API coverage coming soon.")
    (license license:expat)))

haskell-8.10-koofr-client

(define-public haskell-8.10-learn-physics
  (package
    (name "haskell-8.10-learn-physics")
    (version "0.6.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/learn-physics/learn-physics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hcd03ygsq6kl08k7d8f61xm7bdzsdx6v4mplzz0c6c7sp9a40sb"))))
    (properties `((upstream-name . "learn-physics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-gloss)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-gnuplot)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hmatrix)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-not-gloss)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-spatial-math)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-vector-space)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)
                             (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://hackage.haskell.org/package/learn-physics")
    (synopsis "Haskell code for learning physics")
    (description "A library of functions for vector calculus,
calculation of electric field, electric flux,
magnetic field, and other quantities in classical mechanics,
electromagnetic theory, and quantum mechanics.")
    (license license:bsd-3)))

haskell-8.10-learn-physics

(define-public haskell-8.10-net-mqtt
  (package
    (name "haskell-8.10-net-mqtt")
    (version "0.7.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/net-mqtt/net-mqtt-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0iy39a2rncaasf5psjnsgkmigggx9apk9xvq354idw69b1bjhvnv"))))
    (properties `((upstream-name . "net-mqtt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-attoparsec-binary)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-connection)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-network-conduit-tls)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-websockets)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/dustin/mqtt-hs#readme")
    (synopsis "An MQTT Protocol Implementation.")
    (description
     "Please see the README on GitHub at <https://github.com/dustin/mqtt-hs#readme>")
    (license license:bsd-3)))

haskell-8.10-net-mqtt

(define-public haskell-8.10-oauthenticated
  (package
    (name "haskell-8.10-oauthenticated")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/oauthenticated/oauthenticated-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08njax7jchkmha1angh98v0p3haxn8zj12lajl5npcmzlihd0k6l"))))
    (properties `((upstream-name . "oauthenticated") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/tel/oauthenticated.git#readme")
    (synopsis "Simple OAuth for http-client")
    (description
     "/Warning/: This software is pre 1.0 and thus its API may change very
dynamically while updating only minor versions. This package will follow the
PVP once it reaches version 1.0.

OAuth is a popular protocol allowing servers to offer resources owned by some
user to a series of authorized clients securely. For instance, OAuth lets
Twitter provide access to a user's private tweets to the Twitter client
registered on their phone.

@@oauthenticated@@ is a Haskell library implementing OAuth protocols atop the
minimalistic @@http-client@@ HTTP client library extracted from @@http-conduit@@.
\"Network.OAuth\" offers simple functions for signing
'Network.HTTP.Client.Request's along with tools for 'Network.OAuth.Cred'ential
management and 'Network.OAuth.Server' configuration. \"Network.OAuth.Simple\"
provides a slightly more heavy-weight interface which manages the necessary state
and configuration using a monad transformer stack.

There's also an implementation of OAuth's three-legged credential acquisition
protocol built atop the \"Network.OAuth\" API. This can be handled in both
conformant and old-style modes: conformant will reject server responses which
are not conformant with RFC 5849 (which builds atop community version OAuth
1.0a) while old-style better allows for less-than-compliant servers. See
'Network.OAuth.Types.Params.Version' for more details.

Currently @@oauthenticated@@ only supports OAuth 1.0 and is in alpha. OAuth 2.0
support is a potential goal, but it's unclear if it can be transparently
supported at a similar level of abstraction.")
    (license license:expat)))

haskell-8.10-oauthenticated

(define-public haskell-8.10-opensource
  (package
    (name "haskell-8.10-opensource")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/opensource/opensource-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10jlgk1rbpz5h1mbknq0i71k0n4ppp3yd498i7p2l79a9gi6pwqy"))))
    (properties `((upstream-name . "opensource") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-transformers_compat")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://api.opensource.org/")
    (synopsis "Haskell API Wrapper for the Open Source License API")
    (description
     "The Open Source API contains metadata regarding OSI Approved Licenses, and crosswalks that help with using and integrating this information with external sources. This library is designed to interact with that API so that users can simply build applications that are license-aware.")
    (license license:expat)))

haskell-8.10-opensource

(define-public haskell-8.10-pandoc
  (package
    (name "haskell-8.10-pandoc")
    (version "2.14.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pandoc/pandoc-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1pgd6125mrvzj2faxbsfmackb7kchzcr6bjkrwqbyn9hzxdzbqw2"))))
    (properties `((upstream-name . "pandoc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-embed_data_files" "-f-trypandoc")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-Glob)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-HTTP)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-HsYAML)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-SHA)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-blaze-markup)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-citeproc)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-commonmark)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-commonmark-extensions)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-commonmark-pandoc)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-connection)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-doclayout)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-doctemplates)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-emojis)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-file-embed)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-haddock-library)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-hslua)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-hslua-module-path)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-hslua-module-system)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-hslua-module-text)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-ipynb)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-jira-wiki-markup)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-pandoc-types)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-skylighting)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-skylighting-core)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-tagsoup)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-texmath)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-text-conversions)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unicode-collation)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unicode-transforms)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-xml)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-xml-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-zip-archive)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://pandoc.org")
    (synopsis "Conversion between markup formats")
    (description "Pandoc is a Haskell library for converting from one markup
format to another, and a command-line tool that uses
this library. It can read several dialects of Markdown and
(subsets of) HTML, reStructuredText, LaTeX, DocBook, JATS,
MediaWiki markup, DokuWiki markup, TWiki markup,
TikiWiki markup, Jira markup, Creole 1.0, Haddock markup,
OPML, Emacs Org-Mode, Emacs Muse, txt2tags, ipynb (Jupyter
notebooks), Vimwiki, Word Docx, ODT, EPUB, FictionBook2,
roff man, Textile, BibTeX, BibLaTeX, CSL JSON,
, and CSV, and it can write Markdown,
reStructuredText, XHTML, HTML 5, LaTeX, ConTeXt, DocBook,
JATS, OPML, TEI, OpenDocument, ODT, Word docx,
PowerPoint pptx, RTF, MediaWiki, DokuWiki, XWiki,
ZimWiki, Textile, Jira, roff man, roff ms, plain text,
Emacs Org-Mode, AsciiDoc, Haddock markup,
EPUB (v2 and v3), ipynb, FictionBook2,
InDesign ICML, Muse, CSL JSON, LaTeX beamer slides,
and several kinds of HTML/JavaScript slide shows
(S5, Slidy, Slideous, DZSlides, reveal.js).

In contrast to most existing tools for converting Markdown
to HTML, pandoc has a modular design: it consists of a set of
readers, which parse text in a given format and produce a
native representation of the document, and a set of writers,
which convert this native representation into a target
format. Thus, adding an input or output format requires
only adding a reader or writer.")
    (license license:gpl2+)))

haskell-8.10-pandoc

(define-public haskell-8.10-persistent-mtl
  (package
    (name "haskell-8.10-persistent-mtl")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-mtl/persistent-mtl-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0z78xs1gi45i3a9q28yr7jpsdsbzfqjahch3m27gygkja9dgm438"))))
    (properties `((upstream-name . "persistent-mtl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-monad-logger)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-persistent)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-persistent-postgresql)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-persistent-sqlite)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-persistent-template)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-resource-pool)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-tasty-golden)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-unliftio-pool)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brandonchinn178/persistent-mtl#readme")
    (synopsis "Monad transformer for the persistent API")
    (description "A monad transformer and mtl-style type class for using the
persistent API directly in your monad transformer stack.")
    (license license:bsd-3)))

haskell-8.10-persistent-mtl

(define-public haskell-8.10-persistent-pagination
  (package
    (name "haskell-8.10-persistent-pagination")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-pagination/persistent-pagination-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16p89c4rjwak7slb7rmzn0qyap2vg3ayis8q3lkxl0k7a609pf5h"))))
    (properties `((upstream-name . "persistent-pagination") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-esqueleto)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-foldl)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-persistent)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-persistent-sqlite)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-persistent-template)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/parsonsmatt/persistent-pagination#readme")
    (synopsis
     "Efficient and correct pagination for persistent or esqueleto queries.")
    (description
     "Please see the README on GitHub at <https://github.com/parsonsmatt/persistent-pagination#readme>")
    (license license:bsd-3)))

haskell-8.10-persistent-pagination

(define-public haskell-8.10-persistent-typed-db
  (package
    (name "haskell-8.10-persistent-typed-db")
    (version "0.1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-typed-db/persistent-typed-db-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xqvaypl987br15pymky9qa1z62sfa32kmcgpvnl8zpgdjsa17nc"))))
    (properties `((upstream-name . "persistent-typed-db") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0fsblxhr3z8cyrp0ds1fn4xbm5kxvfdm9k8p8l11zym06ap1a3h9")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-esqueleto)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-api-data)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-monad-logger)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-path-pieces)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-persistent)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-resource-pool)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/parsonsmatt/persistent-typed-db#readme")
    (synopsis "Type safe access to multiple database schemata.")
    (description "See README.md for more details, examples, and fun.")
    (license license:bsd-3)))

haskell-8.10-persistent-typed-db

(define-public haskell-8.10-pinboard
  (package
    (name "haskell-8.10-pinboard")
    (version "0.10.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pinboard/pinboard-" version
                    ".tar.gz"))
              (sha256
               (base32
                "12hwfgqkn7sym9hig0b0afnzf0an6wcwdw9bc166y3539r3v13ck"))))
    (properties `((upstream-name . "pinboard") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-monad-logger)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/jonschoning/pinboard")
    (synopsis "Access to the Pinboard API")
    (description "
The Pinboard API is a way to interact programatically with
your bookmarks, notes and other Pinboard data. This
library wraps the API exposing functions and data
structures suitable for usage in Haskell programs.")
    (license license:expat)))

haskell-8.10-pinboard

(define-public haskell-8.10-pipes-http
  (package
    (name "haskell-8.10-pipes-http")
    (version "1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-http/pipes-http-" version
                    ".tar.gz"))
              (sha256
               (base32
                "00579dpb7mh8nli5gfr100w0mrn6nvqhbj50qzxc2m5cvw4gncd2"))))
    (properties `((upstream-name . "pipes-http") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1pyxrq9m8c1v747c9bk75z418cyivhf8mbgdgfj9g2dvcf6zaq5w")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-pipes)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/pipes-http")
    (synopsis "HTTP client with pipes interface")
    (description
     "@@pipes-http@@ is a @@pipes@@ wrapper around the @@http-client@@ library")
    (license license:bsd-3)))

haskell-8.10-pipes-http

(define-public haskell-8.10-pipes-network-tls
  (package
    (name "haskell-8.10-pipes-network-tls")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-network-tls/pipes-network-tls-"
                    version ".tar.gz"))
              (sha256
               (base32
                "161nqwgv0r5vlnpa1bq0y2wyh2yp8b583dxbwpbgxfjrnsy5f5vm"))))
    (properties `((upstream-name . "pipes-network-tls") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-simple)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-network-simple-tls)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-pipes)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-pipes-network)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-pipes-safe)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0001/pipes-network-tls")
    (synopsis "TLS-secured network connections support for pipes.")
    (description
     "Use TLS-secured network connections together with the @@pipes@@ ecosystem.

This package is organized using the following namespaces:

* \"Pipes.Network.TCP.TLS\" exports pipes and utilities for using
TLS-secured TCP connections in a streaming fashion.

* \"Pipes.Network.TCP.TLS.Safe\" subsumes \"Pipes.Network.TCP.TLS\",
exporting pipes and functions that allow you to safely establish new
TCP connections within a pipeline using the @@pipes-safe@@ facilities.
You only need to use this module if you want to acquire and release
operating system resources within a pipeline.

See the @@changelog@@ file in the source distribution to learn about any
important changes between version.")
    (license license:bsd-3)))

haskell-8.10-pipes-network-tls

(define-public haskell-8.10-pretty-diff
  (package
    (name "haskell-8.10-pretty-diff")
    (version "0.4.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pretty-diff/pretty-diff-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qzsq9dm95f6yjryl2675rbyx178zxl562x0y9i1py2rx4k8z7gl"))))
    (properties `((upstream-name . "pretty-diff") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-Diff)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-tasty-test-reporter)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/stoeffel/pretty-diff#readme")
    (synopsis "Pretty printing a diff of two values.")
    (description
     "Please see the README at <https://github.com/stoeffel/pretty-diff>.")
    (license license:bsd-3)))

haskell-8.10-pretty-diff

(define-public haskell-8.10-prometheus
  (package
    (name "haskell-8.10-prometheus")
    (version "2.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prometheus/prometheus-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ggav326fpkrvg39a5rxg2ysg6mb16zzdv4yw0753fyk61v2g4pz"))))
    (properties `((upstream-name . "prometheus") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-atomic-primops)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/bitnomial/prometheus")
    (synopsis "Prometheus Haskell Client")
    (description
     "[Prometheus Haskell Client]

A simple and modern, type safe, performance focused, idiomatic Haskell client
for <http://prometheus.io Prometheus> monitoring. Specifically there is no
use of unsafe IO or manual ByteString construction from lists of
bytes. Batteries-included web server.

A key design element of this library is that the RegistryT monad transformer
is only required for registering new time series. Once the time series is
registered, new data samples may just be added in the IO monad.

Note: Version 0.* supports Prometheus v1.0 and version 2.* supports Prometheus v2.0.

[Usage Example]

> module Example where
>
> import           Control.Monad.IO.Class                         (liftIO)
> import           System.Metrics.Prometheus.Http.Scrape          (serveMetricsT)
> import           System.Metrics.Prometheus.Concurrent.RegistryT
> import           System.Metrics.Prometheus.Metric.Counter       (inc)
> import           System.Metrics.Prometheus.MetricId
>
> main :: IO ()
> main = runRegistryT $ do
>     -- Labels can be defined as lists or added to an empty label set
>     connectSuccessGauge <- registerGauge \"example_connections\" (fromList [(\"login\", \"success\")])
>     connectFailureGauge <- registerGauge \"example_connections\" (addLabel \"login\" \"failure\" mempty)
>     connectCounter <- registerCounter \"example_connection_total\" mempty
>     latencyHistogram <- registerHistogram \"example_round_trip_latency_ms\" mempty [10, 20..100]
>
>     liftIO $ inc connectCounter -- increment a counter
>
>     -- [...] pass metric handles to the rest of the app
>
>     serveMetricsT 8080 [\"metrics\"] -- http://localhost:8080/metric server
>

[Advanced Usage]

A `Registry` and `StateT`-based `RegistryT` are available for unit testing or generating lists
of `[IO a]` actions that can be `sequenced` and returned from pure code to be applied.")
    (license license:bsd-3)))

haskell-8.10-prometheus

(define-public haskell-8.10-ptr-poker
  (package
    (name "haskell-8.10-ptr-poker")
    (version "0.1.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ptr-poker/ptr-poker-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1kqh7n92bipk5wzywb5zlrb0l4qh5lq2pqll4wsbklqg47i1y9ai"))))
    (properties `((upstream-name . "ptr-poker") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-numeric-limits)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-rerebase)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/ptr-poker")
    (synopsis "Pointer poking action construction and composition toolkit")
    (description "")
    (license license:expat)))

haskell-8.10-ptr-poker

(define-public haskell-8.10-pusher-http-haskell
  (package
    (name "haskell-8.10-pusher-http-haskell")
    (version "2.1.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pusher-http-haskell/pusher-http-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16m9yqjyhafbfiiq6nn7d525sw27v5i8ib930ik8xjhm0pq10fbg"))))
    (properties `((upstream-name . "pusher-http-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/WillSewell/pusher-http-haskell")
    (synopsis "Haskell client library for the Pusher Channels HTTP API")
    (description
     "Functions that correspond to endpoints of the Pusher Channels
HTTP API. Messages can be triggered, and information about the
channel can be queried. Additionally there are functions
for authenticating users of private and presence channels.")
    (license license:expat)))

haskell-8.10-pusher-http-haskell

(define-public haskell-8.10-ratel
  (package
    (name "haskell-8.10-ratel")
    (version "1.0.17")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ratel/ratel-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0yi70cxzaxwdz0l6s114bp0x6khvjbca2l95sv1grwrk6imlja4v"))))
    (properties `((upstream-name . "ratel") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-uuid)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/ratel")
    (synopsis "Notify Honeybadger about exceptions.")
    (description "Ratel notifies Honeybadger about exceptions.")
    (license license:expat)))

haskell-8.10-ratel

(define-public haskell-8.10-rattletrap
  (package
    (name "haskell-8.10-rattletrap")
    (version "11.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rattletrap/rattletrap-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0cfxdi2h6aqa6zylg1hgn563fpi72zqfqzl9gsipm7jz1532j2a3"))))
    (properties `((upstream-name . "rattletrap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/rattletrap")
    (synopsis "Parse and generate Rocket League replays.")
    (description "Rattletrap parses and generates Rocket League replays.")
    (license license:expat)))

haskell-8.10-rattletrap

(define-public haskell-8.10-reanimate
  (package
    (name "haskell-8.10-reanimate")
    (version "1.1.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/reanimate/reanimate-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0gy5s68d00szs1ljfcyisp19g3vz4i1mlbxpym0mymzc5v723wfa"))))
    (properties `((upstream-name . "reanimate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-no-hgeometry")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-cassava)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-colour)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cubicbezier)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-filelock)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-fingertree)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-fsnotify)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-geojson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-hgeometry)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-hgeometry-combinatorial)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-linear)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-matrix)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-neat-interpolation)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-open-browser)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-parallel)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-random-shuffle)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-reanimate-svg)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-vector-space)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-websockets)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-xml)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://reanimate.github.io")
    (synopsis "Animation library based on SVGs.")
    (description
     "Animation library based on SVGs. Can import (and manipulate) SVGs from
LaTeX and diagrams. Exports gifs, mp4s, and more. Ships with a webbased
viewer and auto-reloader.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-reanimate

(define-public haskell-8.10-req
  (package
    (name "haskell-8.10-req")
    (version "3.9.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/req/req-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1hapa7f6n6xzw43w6zka3x8hp546h992axm6m8rcxl042j9p95b3"))))
    (properties `((upstream-name . "req") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-authenticate-oauth)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-connection)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-api-data)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-modern-uri)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-retry)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/mrkkrp/req")
    (synopsis
     "Easy-to-use, type-safe, expandable, high-level HTTP client library")
    (description
     "Easy-to-use, type-safe, expandable, high-level HTTP client library.")
    (license license:bsd-3)))

haskell-8.10-req

(define-public haskell-8.10-scalpel
  (package
    (name "haskell-8.10-scalpel")
    (version "0.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/scalpel/scalpel-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04hhvk0yjxha3yg6n9fxivrz97hpjjiiblnj0bvs5myax1ggkjch"))))
    (properties `((upstream-name . "scalpel") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-scalpel-core)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-tagsoup)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/fimad/scalpel")
    (synopsis "A high level web scraping library for Haskell.")
    (description
     "Scalpel is a web scraping library inspired by libraries like Parsec and
Perl's Web::Scraper Scalpel builds on top of TagSoup to provide a
declarative and monadic interface.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-scalpel

(define-public haskell-8.10-servant-auth-docs
  (package
    (name "haskell-8.10-servant-auth-docs")
    (version "0.2.10.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-auth-docs/servant-auth-docs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j1ynnrb6plrhpb2vzs2p7a9jb41llp0j1jwgap7hjhkwhyc7wxd"))))
    (properties `((upstream-name . "servant-auth-docs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("11" "1xk6j4l5jccwzk0xkiv6ny6w33g92wziacqvqgc5rvy2mzyff4fl")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-servant)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-servant-auth)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-servant-docs)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-servant/servant-auth#readme")
    (synopsis "servant-docs/servant-auth compatibility")
    (description
     "This package provides instances that allow generating docs from
<https://hackage.haskell.org/package/servant servant>
APIs that use
<https://hackage.haskell.org/package/servant-auth servant-auth's> @@Auth@@ combinator.

For a quick overview of the usage, see the <http://github.com/haskell-servant/servant-auth#readme README>.")
    (license license:bsd-3)))

haskell-8.10-servant-auth-docs

(define-public haskell-8.10-servant-auth-swagger
  (package
    (name "haskell-8.10-servant-auth-swagger")
    (version "0.2.10.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-auth-swagger/servant-auth-swagger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "029nvb4wxwl98ah26bgcq1b7izrnvssxwn1682liimvsh4a8bady"))))
    (properties `((upstream-name . "servant-auth-swagger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("8" "19hp58cf3avq3jnzhspsxkb7vml8ch3cw7dq8qy59xp1wgci6v5m")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-servant)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-servant-auth)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-servant-swagger)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-swagger2)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-servant/servant-auth#readme")
    (synopsis "servant-swagger/servant-auth compatibility")
    (description
     "This package provides instances that allow generating swagger2 schemas from
<https://hackage.haskell.org/package/servant servant>
APIs that use
<https://hackage.haskell.org/package/servant-auth servant-auth's> @@Auth@@ combinator.

For a quick overview of the usage, see the <http://github.com/haskell-servant/servant-auth#readme README>.")
    (license license:bsd-3)))

haskell-8.10-servant-auth-swagger

(define-public haskell-8.10-servant-server
  (package
    (name "haskell-8.10-servant-server")
    (version "0.18.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-server/servant-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gng0in85as45aprwy19xaqlgmwfx0pkly150d2v96knhbcwsshk"))))
    (properties `((upstream-name . "servant-server") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-api-data)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-http-media)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-servant)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-sop-core)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-string-conversions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-wai-app-static)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-warp)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-word8)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://docs.servant.dev/")
    (synopsis
     "A family of combinators for defining webservices APIs and serving them")
    (description
     "A family of combinators for defining webservices APIs and serving them

You can learn about the basics in the <http://docs.servant.dev/en/stable/tutorial/index.html tutorial>.

<https://github.com/haskell-servant/servant/blob/master/servant-server/example/greet.hs Here>
is a runnable example, with comments, that defines a dummy API and implements
a webserver that serves this API, using this package.

<https://github.com/haskell-servant/servant/blob/master/servant-server/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-8.10-servant-server

(define-public haskell-8.10-serversession
  (package
    (name "haskell-8.10-serversession")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/serversession/serversession-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02ynhgq6gn5ddx2yd8ns8ay0rrhzln2h6jrmnwk7x1fqqfvzx0jf"))))
    (properties `((upstream-name . "serversession") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-nonce)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-path-pieces)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-persistent-test)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/yesodweb/serversession")
    (synopsis "Secure, modular server-side sessions.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/serversession>")
    (license license:expat)))

haskell-8.10-serversession

(define-public haskell-8.10-soap-openssl
  (package
    (name "haskell-8.10-soap-openssl")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/soap-openssl/soap-openssl-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03w389yhybzvc06gpxigibqga9mr7m41rkg1ki3n686j9xzm8210"))))
    (properties `((upstream-name . "soap-openssl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1nz8h4p94pn2kv65jbdybn9nf5djm9kycbpigk5gbh0ar52zgl4k")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-HsOpenSSL)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-configurator)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-http-client-openssl)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-soap)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://bitbucket.org/dpwiz/haskell-soap")
    (synopsis "TLS-enabled SOAP transport (using openssl bindings)")
    (description
     "TLS-enabled SOAP transport (using openssl bindings)

> main = withOpenSSL $ do
>     -- Initial one-time preparations.
>     settings <- makeSettings (Just (\"client.crt\", \"client.key\"))
>     transport <- initTransportWith settings \"http://example.com/soap/endpoint\" id (iconv \"cp-1251\")
>
>     -- the rest is the same as before...")
    (license license:expat)))

haskell-8.10-soap-openssl

(define-public haskell-8.10-soap-tls
  (package
    (name "haskell-8.10-soap-tls")
    (version "0.1.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/soap-tls/soap-tls-" version
                    ".tar.gz"))
              (sha256
               (base32
                "051shlb128lsacd2cjm4kpyqkmzdcwcj7ppl7l4n1k5j9g6k72yf"))))
    (properties `((upstream-name . "soap-tls") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "06a65jphfn1nxcnm4r6gf12afxhd7cs6ax8kq22w4pai98jk3jwn")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-configurator)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-connection)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-soap)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-tls)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-x509)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-x509-store)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://bitbucket.org/dpwiz/haskell-soap")
    (synopsis "TLS-enabled SOAP transport (using tls package)")
    (description
     "TLS-enabled SOAP transport (using tls package)

> main = do
>     -- Initial one-time preparations.
>     settings <- makeSettings (Just \"client.crt\") (Just \"client.key\") validateDefault
>     transport <- initTransportWith settings \"http://example.com/soap/endpoint\" id (iconv \"cp-1251\")
>
>     -- the rest is the same as before...")
    (license license:expat)))

haskell-8.10-soap-tls

(define-public haskell-8.10-spacecookie
  (package
    (name "haskell-8.10-spacecookie")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/spacecookie/spacecookie-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qv48gbq5h1vqinihgzjgljd7igrnypp55kvy9f7q0vyxha5gg88"))))
    (properties `((upstream-name . "spacecookie") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-download-curl)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-fast-logger)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-filepath-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-hxt-unicode)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-socket)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-systemd)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages curl) curl)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/sternenseemann/spacecookie")
    (synopsis "Gopher server library and daemon")
    (description "Simple gopher library that allows writing custom gopher
applications. Also includes a fully-featured gopher server
daemon complete with gophermap-support built on top of it.")
    (license license:gpl3)))

haskell-8.10-spacecookie

(define-public haskell-8.10-status-notifier-item
  (package
    (name "haskell-8.10-status-notifier-item")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/status-notifier-item/status-notifier-item-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1x3zqa2b9vl5mirfbh2bmyali47jpfcqsw4xxgbmsgz9jiffpda9"))))
    (properties `((upstream-name . "status-notifier-item") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-byte-order)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bytestring-to-vector)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-dbus)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-dbus-hslogger)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-hslogger)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/IvanMalison/status-notifier-item#readme")
    (synopsis
     "A wrapper over the StatusNotifierItem/libappindicator dbus specification")
    (description
     "Please see the README on Github at <https://github.com/IvanMalison/status-notifier-item#readme>")
    (license license:bsd-3)))

haskell-8.10-status-notifier-item

(define-public haskell-8.10-strict-list
  (package
    (name "haskell-8.10-strict-list")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/strict-list/strict-list-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cbf3my7fghifplk7l2m77cc0x7xkh1pyv5k36h7dl6m2ddhmdc1"))))
    (properties `((upstream-name . "strict-list") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-rerebase)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/strict-list")
    (synopsis "Strict linked list")
    (description
     "Implementation of strict linked list with care taken about stack.")
    (license license:expat)))

haskell-8.10-strict-list

(define-public haskell-8.10-stripe-http-client
  (package
    (name "haskell-8.10-stripe-http-client")
    (version "2.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stripe-http-client/stripe-http-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xz8dc2mh5mscc3mp5n4h2sch1winpaf7sy1w4s87vv68304jfg3"))))
    (properties `((upstream-name . "stripe-http-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-stripe-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/stripe-http-client")
    (synopsis "Stripe API for Haskell - http-client backend")
    (description
     "
<<https://stripe.com/img/navigation/logo@@2x.png>>

[Access Stripe API using http-client]
This package provides access to the Stripe API using `stripe-core`
and `http-client`. See also the `stripe` package.")
    (license license:expat)))

haskell-8.10-stripe-http-client

(define-public haskell-8.10-strive
  (package
    (name "haskell-8.10-strive")
    (version "5.0.16")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/strive/strive-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1y3msxm71g71mj940gdd1sqkndrk857ywp9j685csaxhiprmrzz1"))))
    (properties `((upstream-name . "strive") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-gpolyline)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/strive")
    (synopsis "A client for the Strava V3 API.")
    (description "Strive is a client for the Strava V3 API.")
    (license license:expat)))

haskell-8.10-strive

(define-public haskell-8.10-sydtest-persistent-sqlite
  (package
    (name "haskell-8.10-sydtest-persistent-sqlite")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-persistent-sqlite/sydtest-persistent-sqlite-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1al80sym9r2h769szky5kpkllbs7gm4lc8gn9nlavj0in663x0ly"))))
    (properties `((upstream-name . "sydtest-persistent-sqlite")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-monad-logger)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-persistent)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-persistent-sqlite)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-persistent-template)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-sydtest)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "A persistent-sqlite companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.10-sydtest-persistent-sqlite

(define-public haskell-8.10-sydtest-wai
  (package
    (name "haskell-8.10-sydtest-wai")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-wai/sydtest-wai-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fk1b7205h8ib35bp4pma37vk7cy7dwg0kkcv63k60sq1laj48rl"))))
    (properties `((upstream-name . "sydtest-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-pretty-show)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-sydtest)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-sydtest-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "A wai companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.10-sydtest-wai

(define-public haskell-8.10-wai-enforce-https
  (package
    (name "haskell-8.10-wai-enforce-https")
    (version "0.0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-enforce-https/wai-enforce-https-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mbhk50j1a47ydg5kd6bj3nbzqfq1abm1d1vcxc3smw4fgf39g5x"))))
    (properties `((upstream-name . "wai-enforce-https") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-wai-extra)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-warp)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-warp-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/turboMaCk/wai-enforce-https")
    (synopsis "Enforce HTTPS in Wai server app safely.")
    (description
     "Wai middleware enforcing HTTPS protocol on any incoming request. In case of non-encrypted HTTP, traffic is redirected using 301 Permanent Redirect or optionally 307 Temporary Redirect. Middleware has compatibility modes for various reverse proxies (load balancers) and therefore can be used with Heroku, Google Cloud (Ingress), Azure or any other type of PAS or Cloud provider.")
    (license license:bsd-3)))

haskell-8.10-wai-enforce-https

(define-public haskell-8.10-wai-middleware-static
  (package
    (name "haskell-8.10-wai-middleware-static")
    (version "0.9.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-static/wai-middleware-static-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ynm0xcr3pj5bbph78p1kpyxvd0n3a0gfdbm6yb7i004ixaqf33c"))))
    (properties `((upstream-name . "wai-middleware-static") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1zran8wpwizrwdw23a5qckmiplyk6xf2z8x4his0ipfy2zzl5ql6")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cryptohash-sha1)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-expiring-cache-map)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-hspec-expectations-lifted)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-hspec-wai)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-mime-types)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-mockery)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-scotty)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-wai-extra)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/scotty-web/wai-middleware-static")
    (synopsis "WAI middleware that serves requests to static files.")
    (description
     "WAI middleware that intercepts requests to static files and serves them
if they exist.

[WAI] <http://hackage.haskell.org/package/wai>")
    (license license:bsd-3)))

haskell-8.10-wai-middleware-static

(define-public haskell-8.10-wai-websockets
  (package
    (name "haskell-8.10-wai-websockets")
    (version "3.0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-websockets/wai-websockets-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0b2xmdsrsqpssyib53wbr6r8hf75789ndyyanv37sv99iyqcwz4i"))))
    (properties `((upstream-name . "wai-websockets") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fexample")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-file-embed)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-wai-app-static)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-warp)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-websockets)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/yesodweb/wai")
    (synopsis "Provide a bridge between WAI and the websockets package.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/wai-websockets>.")
    (license license:expat)))

haskell-8.10-wai-websockets

(define-public haskell-8.10-warp-tls-uid
  (package
    (name "haskell-8.10-warp-tls-uid")
    (version "0.2.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/warp-tls-uid/warp-tls-uid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09xvwvb6nc6ymp6x389dxbllisrj24srcdli6d19h05cwlqbay4w"))))
    (properties `((upstream-name . "warp-tls-uid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-streaming-commons)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-tls)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-warp)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-warp-tls)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-x509)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/YoshikuniJujo/warp-tls-uid#readme")
    (synopsis "set group and user id before running server")
    (description
     "Please see the README on GitHub at <https://github.com/YoshikuniJujo/warp-tls-uid#readme>")
    (license license:bsd-3)))

haskell-8.10-warp-tls-uid

(define-public haskell-8.10-wreq
  (package
    (name "haskell-8.10-wreq")
    (version "0.5.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/wreq/wreq-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0zv51048p0r7vhamml3ps9nr11yi9fxz2w31qcz053bw3z9ivwxw"))))
    (properties `((upstream-name . "wreq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fdoctest" "-f-aws" "-f-httpbin" "-f-developer")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-authenticate-oauth)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-lens-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-mime-types)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-psqueues)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.serpentine.com/wreq")
    (synopsis "An easy-to-use HTTP client library.")
    (description
     "
A web client library that is designed for ease of use.

Tutorial: <http://www.serpentine.com/wreq/tutorial.html>

Features include:

* Simple but powerful `lens`-based API

* A solid test suite, and built on reliable libraries like
http-client and lens

* Session handling includes connection keep-alive and pooling, and
cookie persistence

* Automatic response body decompression

* Powerful multipart form and file upload handling

* Support for JSON requests and responses, including navigation of
schema-less responses

* Basic and OAuth2 bearer authentication

* Early TLS support via the tls package")
    (license license:bsd-3)))

haskell-8.10-wreq

(define-public haskell-8.10-yesod-gitrev
  (package
    (name "haskell-8.10-yesod-gitrev")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-gitrev/yesod-gitrev-"
                    version ".tar.gz"))
              (sha256
               (base32
                "048g2pp2pgdhhv9g9wazwh4mjavdvrmrs2z5lks42bccsfgg00h8"))))
    (properties `((upstream-name . "yesod-gitrev") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-githash)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/DanBurton/yesod-gitrev")
    (synopsis "A subsite for displaying git information.")
    (description
     "(Please see the readme) https://github.com/DanBurton/yesod-gitrev#readme")
    (license license:bsd-3)))

haskell-8.10-yesod-gitrev

(define-public haskell-8.10-yesod-newsfeed
  (package
    (name "haskell-8.10-yesod-newsfeed")
    (version "1.7.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-newsfeed/yesod-newsfeed-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0g7n99zsrfinal2kcmrfyj3gcxrd390az93yz3c1kxzd5w1ffb4g"))))
    (properties `((upstream-name . "yesod-newsfeed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-blaze-markup)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-shakespeare)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-xml-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Helper functions and data types for producing News feeds.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-newsfeed>")
    (license license:expat)))

haskell-8.10-yesod-newsfeed

(define-public haskell-8.10-yesod-persistent
  (package
    (name "haskell-8.10-yesod-persistent")
    (version "1.6.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-persistent/yesod-persistent-"
                    version ".tar.gz"))
              (sha256
               (base32
                "102xmp7n08sk1g5rv31jpln2v9kqf1zsqsnmi83mnhmgggcbj1k4"))))
    (properties `((upstream-name . "yesod-persistent") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-persistent)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-persistent-sqlite)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-persistent-template)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-resource-pool)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-wai-extra)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Some helpers for using Persistent from Yesod.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-persistent>")
    (license license:expat)))

haskell-8.10-yesod-persistent

(define-public haskell-8.10-yesod-sitemap
  (package
    (name "haskell-8.10-yesod-sitemap")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-sitemap/yesod-sitemap-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mnv658z36ja1avig0g4pirb2i9vqriycykhfky74xymvjmhdyp5"))))
    (properties `((upstream-name . "yesod-sitemap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-xml-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-xml-types)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Generate XML sitemaps.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-sitemap>")
    (license license:expat)))

haskell-8.10-yesod-sitemap

(define-public haskell-8.10-yesod-test
  (package
    (name "haskell-8.10-yesod-test")
    (version "1.6.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-test/yesod-test-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1xgy7dzhqjgllqcpyyxs0spdg6vlz2c1sjvni7w7qnsf0ckyw2l8"))))
    (properties `((upstream-name . "yesod-test") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-cookie)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-hspec-core)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-html-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-pretty-show)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-wai-extra)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-xml-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-xml-types)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com")
    (synopsis "integration testing for WAI/Yesod Applications")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-test>")
    (license license:expat)))

haskell-8.10-yesod-test

