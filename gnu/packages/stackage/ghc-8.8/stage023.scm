;;; generated file
(define-module (gnu packages stackage ghc-8.8 stage023)
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
(define-public haskell-8.8-gi-gdkx11
  (package
    (name "haskell-8.8-gi-gdkx11")
    (version "3.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-gdkx11/gi-gdkx11-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0z3vwwpv8a85nvg2bc4cdaa8w4jmdl5mm5bxfpwmssyxcnm1xdnc"))))
    (properties `((upstream-name . "gi-gdkx11") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) gdk-pixbuf)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-gi-cairo)
                  (@ (gnu packages stackage ghc-8.8 stage022)
                     haskell-8.8-gi-gdk)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-gi-gio)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-gi-gobject)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-gi-xlib)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-haskell-gi)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "GdkX11 bindings")
    (description "Bindings for GdkX11, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.8-gi-gdkx11

(define-public haskell-8.8-gi-gtk
  (package
    (name "haskell-8.8-gi-gtk")
    (version "3.0.33")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-gtk/gi-gtk-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "03fvazdkg1m9svp39bn4gz7cfy23pp01yfcf6ambkdrq9msqsjak"))))
    (properties `((upstream-name . "gi-gtk") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (inputs (list (@ (gnu packages gtk) gtk+)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-gi-atk)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-gi-cairo)
                  (@ (gnu packages stackage ghc-8.8 stage022)
                     haskell-8.8-gi-gdk)
                  (@ (gnu packages stackage ghc-8.8 stage021)
                     haskell-8.8-gi-gdkpixbuf)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-gi-gio)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-gi-glib)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-gi-gobject)
                  (@ (gnu packages stackage ghc-8.8 stage020)
                     haskell-8.8-gi-pango)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-haskell-gi)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Gtk bindings")
    (description "Bindings for Gtk, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.8-gi-gtk

