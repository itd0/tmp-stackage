;;; generated file
(define-module (gnu packages stackage ghc-9.4 stage026)
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
(define-public haskell-9.4-Spock-lucid
  (package
    (name "haskell-9.4-Spock-lucid")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/Spock-lucid/Spock-lucid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15r3vk78vbhqi09liq0a3zabya845zfmblqahgw6r2jjx49da9ii"))))
    (properties `((upstream-name . "Spock-lucid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage025)
                     haskell-9.4-Spock)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-lucid)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/aelve/Spock-lucid")
    (synopsis "Lucid support for Spock")
    (description "Functions to use Lucid-generated HTML in Spock responses.")
    (license license:bsd-3)))

haskell-9.4-Spock-lucid

(define-public haskell-9.4-Spock-worker
  (package
    (name "haskell-9.4-Spock-worker")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/Spock-worker/Spock-worker-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jywfrfdaklncp0dwl5mhppa9a10yy980yw8xqxsna75kzahkh7d"))))
    (properties `((upstream-name . "Spock-worker") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-HTF)
                  (@ (gnu packages stackage ghc-9.4 stage025)
                     haskell-9.4-Spock)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-errors)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-lifted-base)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/agrafix/Spock-worker")
    (synopsis "Background workers for Spock")
    (description "Adds a background-job queue to Spock")
    (license license:expat)))

haskell-9.4-Spock-worker

(define-public haskell-9.4-blank-canvas
  (package
    (name "haskell-9.4-blank-canvas")
    (version "0.7.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blank-canvas/blank-canvas-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g10959ly5nv2xfhax4pamzxnxkqbniahplc5za8k5r4nq1vjrm2"))))
    (properties `((upstream-name . "blank-canvas") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("11" "1dyg4f4ji23lvq8ma7j7423z5ssd4ahbb1qgw1w586abbhziicn2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-base-compat-batteries)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-colour)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-fail)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage025)
                     haskell-9.4-kansas-comet)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-mime-types)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-scotty)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-text-show)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-wai-extra)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/ku-fpg/blank-canvas/wiki")
    (synopsis "HTML5 Canvas Graphics Library")
    (description
     "@@blank-canvas@@ is a Haskell binding to the complete
<https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API HTML5 Canvas API>.
@@blank-canvas@@ allows Haskell users to write, in Haskell,
interactive images onto their web browsers. @@blank-canvas@@
gives the user a single full-window canvas, and provides
many well-documented functions for rendering
images.

@@
&#123;-&#35; LANGUAGE OverloadedStrings &#35;-&#125;
module Main where
import Graphics.Blank                     -- import the blank canvas

main = blankCanvas 3000 $ \\\\ context -> do -- start blank canvas on port 3000
&#32;&#32;send context $ do                       -- send commands to this specific context
&#32;&#32;&#32;&#32;moveTo(50,50)
&#32;&#32;&#32;&#32;lineTo(200,100)
&#32;&#32;&#32;&#32;lineWidth 10
&#32;&#32;&#32;&#32;strokeStyle \\\"red\\\"
&#32;&#32;&#32;&#32;stroke()                              -- this draws the ink into the canvas
@@

<<https://github.com/ku-fpg/blank-canvas/wiki/images/Red_Line.png>>

For more details, read the <https://github.com/ku-fpg/blank-canvas/wiki blank-canvas wiki>.
")
    (license license:bsd-3)))

haskell-9.4-blank-canvas

(define-public haskell-9.4-fedora-dists
  (package
    (name "haskell-9.4-fedora-dists")
    (version "2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fedora-dists/fedora-dists-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0790akym2rrcch9jjky9v4qc6y22vg1w6ffi9nbx42zijkqmsm1f"))))
    (properties `((upstream-name . "fedora-dists") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage025)
                     haskell-9.4-cached-json-file)
                  (@ (gnu packages stackage ghc-9.4 stage025) haskell-9.4-pdc)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/fedora-dists")
    (synopsis "Library for Fedora distribution versions")
    (description "This library provides the Dist and Branch datatypes
and various associated metadata functions for
Red Hat distributions (Fedora, EPEL, RHEL) needed for
packaging development and building.
It uses current release data from Fedora PDC.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-fedora-dists

(define-public haskell-9.4-gi-dbusmenugtk3
  (package
    (name "haskell-9.4-gi-dbusmenugtk3")
    (version "0.4.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-dbusmenugtk3/gi-dbusmenugtk3-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ky4x665p5f7zlfckz7fykgnl9n839vz5pv4l0lprhp0l04f32hz"))))
    (properties `((upstream-name . "gi-dbusmenugtk3") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-gi-atk)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-gi-dbusmenu)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-gi-gdk)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-gi-gdkpixbuf)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-gi-glib)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-gi-gobject)
                  (@ (gnu packages stackage ghc-9.4 stage025)
                     haskell-9.4-gi-gtk)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-haskell-gi)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-haskell-gi-overloading)
                  (@ (gnu packages gtk) libdbusmenu)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "DbusmenuGtk bindings")
    (description "Bindings for libdbusgtk3, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.4-gi-dbusmenugtk3

(define-public haskell-9.4-gi-gtk-hs
  (package
    (name "haskell-9.4-gi-gtk-hs")
    (version "0.3.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-gtk-hs/gi-gtk-hs-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0w9bjhny6l2ll83ffcdmdzgnza0gfgyqv8v161pj080lsq00fdli"))))
    (properties `((upstream-name . "gi-gtk-hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-gi-gdk)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-gi-gdkpixbuf)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-gi-glib)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-gi-gobject)
                  (@ (gnu packages stackage ghc-9.4 stage025)
                     haskell-9.4-gi-gtk)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-haskell-gi-base)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis
     "A wrapper for gi-gtk, adding a few more idiomatic API parts on top")
    (description
     "A wrapper for gi-gtk, adding a few more idiomatic API parts on top")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.4-gi-gtk-hs

(define-public haskell-9.4-gi-gtksource
  (package
    (name "haskell-9.4-gi-gtksource")
    (version "3.0.26")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-gtksource/gi-gtksource-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xax0w5zxiqw2nhz3ndl6kyxfa61n1ldwq3r6s1i0khz0xx79k5q"))))
    (properties `((upstream-name . "gi-gtksource") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) gtksourceview)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-gi-atk)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-gi-cairo)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-gi-gdk)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-gi-gdkpixbuf)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-gi-gio)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-gi-glib)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-gi-gobject)
                  (@ (gnu packages stackage ghc-9.4 stage025)
                     haskell-9.4-gi-gtk)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-gi-pango)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-haskell-gi)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "GtkSource bindings")
    (description "Bindings for GtkSource, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.4-gi-gtksource

(define-public haskell-9.4-gi-vte
  (package
    (name "haskell-9.4-gi-vte")
    (version "2.91.30")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-vte/gi-vte-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1n787xacng9279y7vi2g4lmxvx8xgb967v55fxvmxhjyds35fy4w"))))
    (properties `((upstream-name . "gi-vte") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-gi-atk)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-gi-gdk)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-gi-gio)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-gi-glib)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-gi-gobject)
                  (@ (gnu packages stackage ghc-9.4 stage025)
                     haskell-9.4-gi-gtk)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-gi-pango)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-haskell-gi)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages gnome) vte)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Vte bindings")
    (description "Bindings for Vte, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.4-gi-vte

(define-public haskell-9.4-gi-webkit2
  (package
    (name "haskell-9.4-gi-webkit2")
    (version "4.0.29")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-webkit2/gi-webkit2-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ccpa6dvl68drpbpi372arjx3rw5ypgbdifvl5cd4c822hvjbq4h"))))
    (properties `((upstream-name . "gi-webkit2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-gi-atk)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-gi-cairo)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-gi-gdk)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-gi-gio)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-gi-glib)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-gi-gobject)
                  (@ (gnu packages stackage ghc-9.4 stage025)
                     haskell-9.4-gi-gtk)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-gi-javascriptcore)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-gi-soup)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-haskell-gi)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages webkit) webkitgtk)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "WebKit2 bindings")
    (description "Bindings for WebKit2, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.4-gi-webkit2

(define-public haskell-9.4-gtk-strut
  (package
    (name "haskell-9.4-gtk-strut")
    (version "0.1.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gtk-strut/gtk-strut-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0rymacvllin8ni2fd7yyfq43rbbyb921c4nm4z7aa2z82fsrkw3q"))))
    (properties `((upstream-name . "gtk-strut") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-gi-gdk)
                  (@ (gnu packages stackage ghc-9.4 stage025)
                     haskell-9.4-gi-gtk)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-hslogger)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/IvanMalison/gtk-strut#readme")
    (synopsis "Library for creating strut windows with gi-gtk")
    (description
     "Please see the README on Github at <https://github.com/IvanMalison/gtk-strut#readme>")
    (license license:bsd-3)))

haskell-9.4-gtk-strut

(define-public haskell-9.4-keyed-vals-redis
  (package
    (name "haskell-9.4-keyed-vals-redis")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/keyed-vals-redis/keyed-vals-redis-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fxb1r6c19sslhmml04w7adpqwq1glavm5mfix7iiaxly358jdy6"))))
    (properties `((upstream-name . "keyed-vals-redis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-hedis)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-hspec-tmp-proc)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-keyed-vals)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-keyed-vals-hspec-tests)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-read-env-var)
                  (@ (gnu packages stackage ghc-9.4 stage025)
                     haskell-9.4-tmp-proc-redis)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/adetokunbo/keyed-vals#readme")
    (synopsis "Access Redis using a keyed-vals Handle")
    (description
     "[keyed-vals](https://hackage.haskell.org/package/keyed-vals) specifies
a focussed client of storage services like [Redis](https://redis.io).

I.e, while Redis supports many features; the abstract Handle in keyed-vals
just supports operations that access collections of key-values

Also, keyed-vals provides a typed interface to a storage backend that allows
the path in the storage backend to be declaratively linked to the types of
data stored via a straightforward typeclass declaration.

Read this [short example](https://github.com/adetokunbo/keyed-vals/tree/main/keyed-vals#example)
for an introduction its usage.

This package, keyed-vals-redis, provides a concrete implementation of Handle
that uses Redis as the underlying storage service.")
    (license license:bsd-3)))

haskell-9.4-keyed-vals-redis

(define-public haskell-9.4-mega-sdist
  (package
    (name "haskell-9.4-mega-sdist")
    (version "0.4.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mega-sdist/mega-sdist-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0bv490zs2a25r0kwb7kqmami3xfxmjg9fqb1j4azn7jyf14jg367"))))
    (properties `((upstream-name . "mega-sdist") (hidden? . #f)))
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
                     haskell-9.4-optparse-simple)
                  (@ (gnu packages stackage ghc-9.4 stage025)
                     haskell-9.4-pantry)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-path-io)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-rio)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-rio-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/mega-sdist#readme")
    (synopsis "Handles uploading to Hackage from mega repos")
    (description
     "Please see the description on Github at <https://github.com/snoyberg/mega-sdist#readme>")
    (license license:expat)))

haskell-9.4-mega-sdist

(define-public haskell-9.4-pagure-cli
  (package
    (name "haskell-9.4-pagure-cli")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pagure-cli/pagure-cli-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1w0z6c3i91di9ixbpiwp610xyfp26g325571c0j5abscr1d2fbv7"))))
    (properties `((upstream-name . "pagure-cli") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage025)
                     haskell-9.4-pagure)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-simple-cmd-args)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/pagure-cli")
    (synopsis "Pagure client")
    (description
     "A command-line Pagure client for querying projects and users.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-pagure-cli

(define-public haskell-9.4-servant-static-th
  (package
    (name "haskell-9.4-servant-static-th")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-static-th/servant-static-th-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1iky6bk92vzhsw31hfdhgclr4nq1kmic6w9mwd5fzjhbs5vcmm15"))))
    (properties `((upstream-name . "servant-static-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexample")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-http-media)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-servant)
                  (@ (gnu packages stackage ghc-9.4 stage025)
                     haskell-9.4-servant-blaze)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-servant-server)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/cdepillabout/servant-static-th")
    (synopsis "Embed a directory of static files in your Servant server")
    (description
     "Please see <https://github.com/cdepillabout/servant-static-th#readme README.md>.")
    (license license:bsd-3)))

haskell-9.4-servant-static-th

(define-public haskell-9.4-servant-swagger-ui-core
  (package
    (name "haskell-9.4-servant-swagger-ui-core")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-swagger-ui-core/servant-swagger-ui-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ckvrwrb3x39hfl2hixcj3fhibh0vqsh6y7n1lsm25yvzfrg02zd"))))
    (properties `((upstream-name . "servant-swagger-ui-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "1v80wydj605b1la1pa5b4l6c3ba86x2dlpnravvhmx32mkkxk7v2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-blaze-markup)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-http-media)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-servant)
                  (@ (gnu packages stackage ghc-9.4 stage025)
                     haskell-9.4-servant-blaze)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-servant-server)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-wai-app-static)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-servant/servant-swagger-ui")
    (synopsis "Servant swagger ui core components")
    (description
     "Provide embedded swagger UI for servant and swagger (i.e. servant-swagger)

See servant-swagger-ui, servant-swagger-ui-jensoleg or
servant-swagger-ui-redoc for \"concrete\" implementations.")
    (license license:bsd-3)))

haskell-9.4-servant-swagger-ui-core

(define-public haskell-9.4-stack-all
  (package
    (name "haskell-9.4-stack-all")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stack-all/stack-all-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0aw5bx737cg0isdnnrhlwba0ddjki57p4ygav4piv5d3ffzhrfzm"))))
    (properties `((upstream-name . "stack-all") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage025)
                     haskell-9.4-cached-json-file)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-config-ini)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-http-query)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-simple-cmd)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-simple-cmd-args)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/stack-all")
    (synopsis "CLI tool for building across Stackage major versions")
    (description
     "Build your Haskell project over Stackage major LTS versions.")
    (license license:bsd-3)))

haskell-9.4-stack-all

(define-public haskell-9.4-yesod
  (package
    (name "haskell-9.4-yesod")
    (version "1.6.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/yesod/yesod-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1qglaxqx96c7wi4817ff67c9g2fxlnjzdpgic458i80khpdlmb5c"))))
    (properties `((upstream-name . "yesod") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-fast-logger)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-file-embed)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-monad-logger)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-shakespeare)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-streaming-commons)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-wai-extra)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-wai-logger)
                  (@ (gnu packages stackage ghc-9.4 stage021) haskell-9.4-warp)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-yesod-core)
                  (@ (gnu packages stackage ghc-9.4 stage025)
                     haskell-9.4-yesod-form)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-yesod-persistent)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Creation of type-safe, RESTful web applications.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod>")
    (license license:expat)))

haskell-9.4-yesod

(define-public haskell-9.4-yesod-auth
  (package
    (name "haskell-9.4-yesod-auth")
    (version "1.6.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-auth/yesod-auth-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0fdahk5mc63g0zsafk8axry01qaxahmclpmmwygp2lhfsjy8mby2"))))
    (properties `((upstream-name . "yesod-auth") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-authenticate)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-blaze-markup)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-email-validate)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-file-embed)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-nonce)
                  (@ (gnu packages stackage ghc-9.4 stage021)
                     haskell-9.4-persistent)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-shakespeare)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-yesod-core)
                  (@ (gnu packages stackage ghc-9.4 stage025)
                     haskell-9.4-yesod-form)
                  (@ (gnu packages stackage ghc-9.4 stage024)
                     haskell-9.4-yesod-persistent)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Authentication for Yesod.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-auth>")
    (license license:expat)))

haskell-9.4-yesod-auth

(define-public haskell-9.4-yesod-form-bootstrap4
  (package
    (name "haskell-9.4-yesod-form-bootstrap4")
    (version "3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-form-bootstrap4/yesod-form-bootstrap4-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yf4b14y8b5066lwdr7r2ayiavsnkar3s8q984yb1nrz5956f7qd"))))
    (properties `((upstream-name . "yesod-form-bootstrap4") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-blaze-markup)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-shakespeare)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-yesod-core)
                  (@ (gnu packages stackage ghc-9.4 stage025)
                     haskell-9.4-yesod-form)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/ncaq/yesod-form-bootstrap4#readme")
    (synopsis "renderBootstrap4")
    (description "")
    (license license:expat)))

haskell-9.4-yesod-form-bootstrap4

(define-public haskell-9.4-yesod-recaptcha2
  (package
    (name "haskell-9.4-yesod-recaptcha2")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-recaptcha2/yesod-recaptcha2-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ql05yxq3k8sywncaz3cf3xaihf4pd0ijn139ms8snyps36k6l8h"))))
    (properties `((upstream-name . "yesod-recaptcha2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-http-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-string-transform)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-yesod-core)
                  (@ (gnu packages stackage ghc-9.4 stage025)
                     haskell-9.4-yesod-form)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/ncaq/yesod-recaptcha2#readme")
    (synopsis "yesod recaptcha2")
    (description "recaptcha2 for yesod-form")
    (license license:expat)))

haskell-9.4-yesod-recaptcha2

(define-public haskell-9.4-yesod-test
  (package
    (name "haskell-9.4-yesod-test")
    (version "1.6.15")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-test/yesod-test-" version
                    ".tar.gz"))
              (sha256
               (base32
                "16q4f1l3m4l8iy5vmaa8c0vm2iiqhpghf3kykymlh41xy96mqpn3"))))
    (properties `((upstream-name . "yesod-test") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-blaze-markup)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-cookie)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-hspec-core)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-html-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-pretty-show)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage022)
                     haskell-9.4-wai-extra)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-xml-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-xml-types)
                  (@ (gnu packages stackage ghc-9.4 stage023)
                     haskell-9.4-yesod-core)
                  (@ (gnu packages stackage ghc-9.4 stage025)
                     haskell-9.4-yesod-form)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com")
    (synopsis "integration testing for WAI/Yesod Applications")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-test>")
    (license license:expat)))

haskell-9.4-yesod-test

