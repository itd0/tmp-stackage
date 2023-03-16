;;; generated file
(define-module (gnu packages stackage ghc-8.10 stage009)
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
(define-public haskell-8.10-GLUT
  (package
    (name "haskell-8.10-GLUT")
    (version "2.7.0.16")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/GLUT/GLUT-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0vdkfj4wjzigdpzgr5l001y9wkhwgl00mclr26gf93kps14fkymn"))))
    (properties `((upstream-name . "GLUT") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fusenativewindowslibraries" "-f-buildexamples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-OpenGL)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-OpenGLRaw)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-StateVar)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "http://www.haskell.org/haskellwiki/Opengl")
    (synopsis "A binding for the OpenGL Utility Toolkit")
    (description
     "A Haskell binding for the OpenGL Utility Toolkit, a window system independent
toolkit for writing OpenGL programs. For more information about the C library
on which this binding is based, please see:
<http://www.opengl.org/resources/libraries/glut/>.")
    (license license:bsd-3)))

haskell-8.10-GLUT

(define-public haskell-8.10-HTTP
  (package
    (name "haskell-8.10-HTTP")
    (version "4000.3.16")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HTTP/HTTP-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0bgyj3ahqlyg0jw6qsm2sncp8mklc4h0dj91s043vb3ig01iq2fn"))))
    (properties `((upstream-name . "HTTP") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-mtl1" "-f-warn-as-error" "-f-conduit10" "-f-warp-tests" "-fnetwork-uri")
       #:cabal-revision
       ("1" "0wagwgzfy2mqkha88fjl37ah0l7h4biz34v65993xd502ly68hk0")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)))
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

haskell-8.10-HTTP

(define-public haskell-8.10-MissingH
  (package
    (name "haskell-8.10-MissingH")
    (version "1.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/MissingH/MissingH-" version
                    ".tar.gz"))
              (sha256
               (base32
                "100x3315lk0zs58cv951jxcy6cgip18cq25r8f2bsgwbvv6gh2by"))))
    (properties `((upstream-name . "MissingH") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fnetwork--ge-3_0_0")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-hslogger)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-network-bsd)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-old-time)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-regex-compat)))
    (home-page "https://hackage.haskell.org/package/MissingH")
    (synopsis "Large utility library")
    (description
     "@@MissingH@@ is a library of all sorts of utility functions for Haskell
programmers.  It is written in pure Haskell and thus should be
extremely portable and easy to use.")
    (license license:bsd-3)))

haskell-8.10-MissingH

(define-public haskell-8.10-OpenAL
  (package
    (name "haskell-8.10-OpenAL")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-ObjectName)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-OpenGL)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-StateVar)
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

haskell-8.10-OpenAL

(define-public haskell-8.10-atom-basic
  (package
    (name "haskell-8.10-atom-basic")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)))
    (home-page "https://hackage.haskell.org/package/atom-basic")
    (synopsis "Basic Atom feed construction")
    (description
     "<https://hackage.haskell.org/package/atom-basic atom-basic> provides a
relatively type-safe <http://tools.ietf.org/html/rfc4287 RFC4287> Atom feed
that can be used to generate feed or entry XML using the types of any
Haskell XML library. Please see the 'Web.Atom' module documentation for
more information.")
    (license license:bsd-3)))

haskell-8.10-atom-basic

(define-public haskell-8.10-cgi
  (package
    (name "haskell-8.10-cgi")
    (version "3001.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cgi/cgi-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "09wvp9vkqasns4flw9z46nhcy96r4qxjv6h47d5f90drz77pmm8a"))))
    (properties `((upstream-name . "cgi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-install-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-multipart)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)))
    (home-page "https://github.com/cheecheeo/haskell-cgi")
    (synopsis "A library for writing CGI programs")
    (description "This is a Haskell library for writing CGI programs.")
    (license license:bsd-3)))

haskell-8.10-cgi

(define-public haskell-8.10-cursor
  (package
    (name "haskell-8.10-cursor")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-validity-containers)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-validity-text)))
    (home-page "https://github.com/NorfairKing/cursor")
    (synopsis "Purely Functional Cursors")
    (description "Purely Functional Cursors for common data structures

See https://cs-syd.eu/tags/cursors for more information.")
    (license license:expat)))

haskell-8.10-cursor

(define-public haskell-8.10-fuzzy-time
  (package
    (name "haskell-8.10-fuzzy-time")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fuzzy-time/fuzzy-time-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1l9gpirnnr8lzdcnqz1sdi998v7gka9x6sld2pz4d8y906mdhclj"))))
    (properties `((upstream-name . "fuzzy-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-validity-time)))
    (home-page "https://github.com/NorfairKing/fuzzy-time")
    (synopsis "")
    (description "Fuzzy time types, parsing and resolution")
    (license license:expat)))

haskell-8.10-fuzzy-time

(define-public haskell-8.10-httpd-shed
  (package
    (name "haskell-8.10-httpd-shed")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-network-bsd)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)))
    (home-page "https://hackage.haskell.org/package/httpd-shed")
    (synopsis "A simple web-server with an interact style API")
    (description
     "This web server promotes a Request to IO Response function
into a local web server. The user can decide how to interpret
the requests, and the library is intended for implementing Ajax APIs.")
    (license license:bsd-3)))

haskell-8.10-httpd-shed

(define-public haskell-8.10-hxt
  (package
    (name "haskell-8.10-hxt")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hxt-charproperties)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hxt-regex-xmlschema)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-hxt-unicode)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)))
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

haskell-8.10-hxt

(define-public haskell-8.10-io-streams-haproxy
  (package
    (name "haskell-8.10-io-streams-haproxy")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-io-streams)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-hunit)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://snapframework.com/")
    (synopsis "HAProxy protocol 1.5 support for io-streams")
    (description
     "HAProxy protocol version 1.5 support (see
<http://haproxy.1wt.eu/download/1.5/doc/proxy-protocol.txt>) for applications
using io-streams. The proxy protocol allows information about a networked
peer (like remote address and port) to be propagated through a forwarding
proxy that is configured to speak this protocol.")
    (license license:bsd-3)))

haskell-8.10-io-streams-haproxy

(define-public haskell-8.10-mltool
  (package
    (name "haskell-8.10-mltool")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mltool/mltool-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1zz06c0xv718faygnsgzmhg17xc5hrjsj9xkdaf3qmzbr1gwfvki"))))
    (properties `((upstream-name . "mltool") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-MonadRandom)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-ascii-progress)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hmatrix)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-hmatrix-gsl)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-hmatrix-morpheus)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/aligusnet/mltool")
    (synopsis "Machine Learning Toolbox")
    (description
     "Haskell Machine Learning Toolkit
includes various methods of supervised learning:
linear regression, logistic regression, SVN, neural networks, etc.
as well as some methods of unsupervised methods: K-Means and PCA.")
    (license license:bsd-3)))

haskell-8.10-mltool

(define-public haskell-8.10-netwire-input-glfw
  (package
    (name "haskell-8.10-netwire-input-glfw")
    (version "0.0.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/netwire-input-glfw/netwire-input-glfw-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sizk0c8mbm6ad984gaf933h1bg4dgwi9k8hzrm9wp5rwbqjvcz8"))))
    (properties `((upstream-name . "netwire-input-glfw") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-GLFW-b)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-OpenGL)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-netwire)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-netwire-input)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxcursor)
                             (@ (gnu packages xorg) libxi)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxxf86vm)))
    (home-page "https://www.github.com/Mokosha/netwire-input-glfw")
    (synopsis "GLFW instance of netwire-input")
    (description "This package contains the necessary glue to allow the use
of wires from the netwire-input package. In general, the
types associated here should be used only sparingly to
plumb the input state through your netwire program.
Otherwise, the state should not be modified directly.")
    (license license:expat)))

haskell-8.10-netwire-input-glfw

(define-public haskell-8.10-openssl-streams
  (package
    (name "haskell-8.10-openssl-streams")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0vfawnfcjrw29qg1n7k6z6bk4bmnk869gjlr9mxw4mzxgl80b2vp")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-HsOpenSSL)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-io-streams)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-hunit)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/openssl-streams")
    (synopsis "OpenSSL network support for io-streams.")
    (description
     "The openssl-streams library contains io-streams routines for secure
networking using OpenSSL (by way of HsOpenSSL).")
    (license license:bsd-3)))

haskell-8.10-openssl-streams

(define-public haskell-8.10-optparse-simple
  (package
    (name "haskell-8.10-optparse-simple")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-githash)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-th-compat)))
    (home-page "https://github.com/fpco/optparse-simple#readme")
    (synopsis "Simple interface to optparse-applicative")
    (description
     "Please see the README at <https://www.stackage.org/package/optparse-simple>")
    (license license:bsd-3)))

haskell-8.10-optparse-simple

(define-public haskell-8.10-parser-combinators-tests
  (package
    (name "haskell-8.10-parser-combinators-tests")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/parser-combinators-tests/parser-combinators-tests-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0iy4iajpjka1diy660x3mvmh8kldwf3svwdmvlxh26dsqy2s8sx8"))))
    (properties `((upstream-name . "parser-combinators-tests") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("2" "07j1y8iqljaqyqhy37db2xvs7y9z91r3sndzmz4gga7w2jpkhq2b")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-megaparsec-tests)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-parser-combinators)))
    (home-page "https://github.com/mrkkrp/parser-combinators")
    (synopsis "Test suite of parser-combinators")
    (description "Test suite of parser-combinators.")
    (license license:bsd-3)))

haskell-8.10-parser-combinators-tests

(define-public haskell-8.10-pdfinfo
  (package
    (name "haskell-8.10-pdfinfo")
    (version "1.5.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pdfinfo/pdfinfo-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04894cwvcn910j2b0j95dc6i9v6xriqa0v97z3vyi9dhi9yiysls"))))
    (properties `((upstream-name . "pdfinfo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-process-extras)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-time-locale-compat)))
    (home-page "https://github.com/chrisdone/pdfinfo")
    (synopsis "Wrapper around the pdfinfo command.")
    (description
     "Just a wrapper around the pdfinfo command (for collecting PDF file info). See man pdfinfo.")
    (license license:bsd-3)))

haskell-8.10-pdfinfo

(define-public haskell-8.10-pipes-network
  (package
    (name "haskell-8.10-pipes-network")
    (version "0.6.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-network/pipes-network-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15f7kn9vpzsm8s108cly80pi6yqpv6v04w032ng0wr9g78an393l"))))
    (properties `((upstream-name . "pipes-network") (hidden? . #f)))
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
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-simple)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-pipes)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-pipes-safe)))
    (home-page "https://github.com/k0001/pipes-network")
    (synopsis "Use network sockets together with the pipes library.")
    (description
     "Use network sockets together with the @@pipes@@ library.

This package is organized using the following namespaces:

* \"Pipes.Network.TCP\" exports pipes and utilities for using TCP connections in
a streaming fashion.

* \"Pipes.Network.TCP.Safe\" subsumes \"Pipes.Network.TCP\", exporting pipes and
functions that allow you to safely establish new TCP connections within a
pipeline using the @@pipes-safe@@ facilities. You only need to use this module
if you want to safely acquire and release operating system resources within a
pipeline.

See the @@changelog@@ file in the source distribution to learn about any
important changes between version.")
    (license license:bsd-3)))

haskell-8.10-pipes-network

(define-public haskell-8.10-pvar
  (package
    (name "haskell-8.10-pvar")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-genvalidity)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)))
    (home-page "https://github.com/lehins/pvar#readme")
    (synopsis "Mutable variable with primitive values")
    (description
     "Mutable variable `PVar` that is backed by a single value `MutableByteArray`")
    (license license:bsd-3)))

haskell-8.10-pvar

(define-public haskell-8.10-relational-record
  (package
    (name "haskell-8.10-relational-record")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/relational-record/relational-record-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1nmkjq5jrs38d0mmdpy8ygkjncg3j5yjbkcv7mxrm8wlqdijdg8b"))))
    (properties `((upstream-name . "relational-record") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-persistable-record)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-persistable-types-HDBC-pg)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-product-isomorphic)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-relational-query)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-relational-query-HDBC)))
    (home-page "http://khibino.github.io/haskell-relational-record/")
    (synopsis "Meta package of Relational Record")
    (description "Meta package to install Relational Record quickly")
    (license license:bsd-3)))

haskell-8.10-relational-record

(define-public haskell-8.10-safe-coloured-text
  (package
    (name "haskell-8.10-safe-coloured-text")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safe-coloured-text/safe-coloured-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fcqwllpbp9x1r1bvyry6bmp2s9rp8rlr3i94hdiydc71hpl7a0w"))))
    (properties `((upstream-name . "safe-coloured-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-validity-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-validity-text)))
    (home-page "https://github.com/NorfairKing/safe-coloured-text#readme")
    (synopsis "Safely output coloured text")
    (description "")
    (license license:expat)))

haskell-8.10-safe-coloured-text

(define-public haskell-8.10-seqid-streams
  (package
    (name "haskell-8.10-seqid-streams")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-io-streams)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-seqid)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/bitnomial/seqid-streams")
    (synopsis "Sequence ID IO-Streams")
    (description "Uniquely identify elements in a sequenced stream")
    (license license:bsd-3)))

haskell-8.10-seqid-streams

(define-public haskell-8.10-tasty-ant-xml
  (package
    (name "haskell-8.10-tasty-ant-xml")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-generic-deriving)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-xml)))
    (home-page "http://github.com/ocharles/tasty-ant-xml")
    (synopsis "Render tasty output to XML for Jenkins")
    (description
     "A tasty ingredient to output test results in XML, using the Ant schema. This XML can be consumed by the Jenkins continuous integration framework.")
    (license license:bsd-3)))

haskell-8.10-tasty-ant-xml

(define-public haskell-8.10-tasty-bench
  (package
    (name "haskell-8.10-tasty-bench")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-bench/tasty-bench-"
                    version ".tar.gz"))
              (sha256
               (base32
                "146i1vkp9008hik7qyi8m9qq3ij5kji84qscsf598rzjmjga7igd"))))
    (properties `((upstream-name . "tasty-bench") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0rcsdiwri52wng5dj30k3c5qrn8qfr14qs53cs1y99mbqfpzs02g")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)))
    (home-page "https://github.com/Bodigrim/tasty-bench")
    (synopsis "Featherlight benchmark framework")
    (description
     "Featherlight framework (only one file!)
for performance measurement with API mimicking
@@criterion@@ and @@gauge@@, featuring built-in comparison
against previous runs and between benchmarks. Our benchmarks are just
regular @@tasty@@ tests.")
    (license license:expat)))

haskell-8.10-tasty-bench

(define-public haskell-8.10-tasty-dejafu
  (package
    (name "haskell-8.10-tasty-dejafu")
    (version "2.0.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-dejafu/tasty-dejafu-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0v0vkbj8nr4jg62a5c0qygj1pjkz1vnssiicafv87qis02j36myx"))))
    (properties `((upstream-name . "tasty-dejafu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-dejafu)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)))
    (home-page "https://github.com/barrucadu/dejafu")
    (synopsis "Deja Fu support for the Tasty test framework.")
    (description
     "Integration between the <https://hackage.haskell.org/package/dejafu dejafu>
library for concurrency testing and
<https://hackage.haskell.org/package/tasty tasty>. This lets you
easily incorporate concurrency testing into your existing test
suites.")
    (license license:expat)))

haskell-8.10-tasty-dejafu

(define-public haskell-8.10-tasty-expected-failure
  (package
    (name "haskell-8.10-tasty-expected-failure")
    (version "0.12.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-expected-failure/tasty-expected-failure-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zlgxs24d54byfhvwdg85xk1572zpjs71bjlxxrxcvralrfcq1yb"))))
    (properties `((upstream-name . "tasty-expected-failure") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unbounded-delays)))
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

haskell-8.10-tasty-expected-failure

(define-public haskell-8.10-tasty-hunit
  (package
    (name "haskell-8.10-tasty-hunit")
    (version "0.10.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-hunit/tasty-hunit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gz6zz3w7s44pymw33xcxnawryl27zk33766sab96nz2xh91kvxp"))))
    (properties `((upstream-name . "tasty-hunit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-call-stack)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)))
    (home-page "https://github.com/feuerbach/tasty")
    (synopsis "HUnit support for the Tasty test framework.")
    (description "HUnit support for the Tasty test framework.

Note that this package does not depend on HUnit but
implements the relevant subset of its API. The name is a
legacy of the early versions of tasty-hunit and of
test-framework-hunit, which did depend on HUnit.")
    (license license:expat)))

haskell-8.10-tasty-hunit

(define-public haskell-8.10-tasty-inspection-testing
  (package
    (name "haskell-8.10-tasty-inspection-testing")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-inspection-testing/tasty-inspection-testing-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18awafrclxg8lfw8gg4ndzfwwpaz8qmad23fi24rhpdj9c7xdyhw"))))
    (properties `((upstream-name . "tasty-inspection-testing") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1a72ccjxaa1db5bvg6awar4v01fi6xw1w8p4fbcjcm1pm8c2c0gp")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-inspection-testing)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)))
    (home-page "https://github.com/Bodigrim/tasty-inspection-testing")
    (synopsis "Inspection testing support for tasty")
    (description
     "Integrate @@inspection-testing@@ into @@tasty@@ test suites.")
    (license license:expat)))

haskell-8.10-tasty-inspection-testing

(define-public haskell-8.10-tasty-leancheck
  (package
    (name "haskell-8.10-tasty-leancheck")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-leancheck/tasty-leancheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1083xs3pvvwfindhkvd7g4bbiaa4g293vi7l2r25adbxz13snpdz"))))
    (properties `((upstream-name . "tasty-leancheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-leancheck)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)))
    (home-page "https://github.com/rudymatela/tasty-leancheck#readme")
    (synopsis "LeanCheck support for the Tasty test framework.")
    (description
     "LeanCheck support for the Tasty test framework.

This package can be used to incorporate LeanCheck tests into Tasty test
suites.

Please see the Haddock documentation and README for more details.")
    (license license:bsd-3)))

haskell-8.10-tasty-leancheck

(define-public haskell-8.10-tasty-program
  (package
    (name "haskell-8.10-tasty-program")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)))
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

haskell-8.10-tasty-program

(define-public haskell-8.10-tasty-rerun
  (package
    (name "haskell-8.10-tasty-rerun")
    (version "1.1.18")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-rerun/tasty-rerun-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sccp5zx9v2rx741nbmgd8mzjhy5m4v74hk26d23xz93ph8aqx7s"))))
    (properties `((upstream-name . "tasty-rerun") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1i2van23247h62sz94kjiyyb6xvz88z6kkjqqsbxi4m74pga27hn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)))
    (home-page "http://github.com/ocharles/tasty-rerun")
    (synopsis "Rerun only tests which failed in a previous test run")
    (description
     "This ingredient
for the <https://hackage.haskell.org/package/tasty tasty> testing framework
allows filtering a test tree depending
on the outcome of the previous run.
This may be useful in many scenarios,
especially when a test suite grows large.")
    (license license:bsd-3)))

haskell-8.10-tasty-rerun

(define-public haskell-8.10-unliftio-streams
  (package
    (name "haskell-8.10-unliftio-streams")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-io-streams)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/unliftio-streams")
    (synopsis "Generalization of io-streams to MonadUnliftIO")
    (description "Generalization of io-streams to MonadUnliftIO.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-unliftio-streams

(define-public haskell-8.10-uri-encode
  (package
    (name "haskell-8.10-uri-encode")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)))
    (home-page "https://hackage.haskell.org/package/uri-encode")
    (synopsis "Unicode aware uri-encoding")
    (description "This package allows you to uri encode and uri decode
Strings, Texts and ByteString values.")
    (license license:bsd-3)))

haskell-8.10-uri-encode

(define-public haskell-8.10-vector-space
  (package
    (name "haskell-8.10-vector-space")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-Boolean)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-MemoTrie)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-NumInstances)))
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

haskell-8.10-vector-space

(define-public haskell-8.10-xss-sanitize
  (package
    (name "haskell-8.10-xss-sanitize")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-css-text)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-tagsoup)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)))
    (home-page "https://github.com/yesodweb/haskell-xss-sanitize#readme")
    (synopsis "sanitize untrusted HTML to prevent XSS attacks")
    (description
     "run untrusted HTML through Text.HTML.SanitizeXSS.sanitizeXSS to prevent XSS attacks. see README.md <http://github.com/yesodweb/haskell-xss-sanitize> for more details")
    (license license:bsd-2)))

haskell-8.10-xss-sanitize

