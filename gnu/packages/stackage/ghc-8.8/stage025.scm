;;; generated file
(define-module (gnu packages stackage ghc-8.8 stage025)
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
(define-public haskell-8.8-gtk-sni-tray
  (package
    (name "haskell-8.8-gtk-sni-tray")
    (version "0.1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gtk-sni-tray/gtk-sni-tray-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i8k6jk6jq97cahlgbj8acqdqw4zkh0cyy8i6clznbknl02qqp2i"))))
    (properties `((upstream-name . "gtk-sni-tray") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) gtk+)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-dbus)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-dbus-hslogger)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-enclosed-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-gi-cairo)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-gi-cairo-connector)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-gi-cairo-render)
                  (@ (gnu packages stackage ghc-8.8 stage024)
                     haskell-8.8-gi-dbusmenugtk3)
                  (@ (gnu packages stackage ghc-8.8 stage022)
                     haskell-8.8-gi-gdk)
                  (@ (gnu packages stackage ghc-8.8 stage021)
                     haskell-8.8-gi-gdkpixbuf)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-gi-glib)
                  (@ (gnu packages stackage ghc-8.8 stage023)
                     haskell-8.8-gi-gtk)
                  (@ (gnu packages stackage ghc-8.8 stage024)
                     haskell-8.8-gtk-strut)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-haskell-gi)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-hslogger)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-status-notifier-item)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/IvanMalison/gtk-sni-tray#readme")
    (synopsis "A standalone StatusNotifierItem/AppIndicator tray")
    (description
     "Please see the README on Github at <https://github.com/IvanMalison/gtk-sni-tray#readme>")
    (license license:bsd-3)))

haskell-8.8-gtk-sni-tray

