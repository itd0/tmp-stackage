;;; generated file
(define-module (gnu packages stackage ghc-8.10 stage024)
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
(define-public haskell-8.10-amazonka-apigateway
  (package
    (name "haskell-8.10-amazonka-apigateway")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-apigateway/amazonka-apigateway-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11gkml1xp2h5j9idgk84h6nlz2fvszrrn9hmqjm4b76hj3a3v11v"))))
    (properties `((upstream-name . "amazonka-apigateway") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon API Gateway SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.APIGateway\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-apigateway

(define-public haskell-8.10-amazonka-application-autoscaling
  (package
    (name "haskell-8.10-amazonka-application-autoscaling")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-application-autoscaling/amazonka-application-autoscaling-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11njiad7rzx2vbzr6m3qwrvzqaplnp6h1zkd92mcc16chaial3ns"))))
    (properties `((upstream-name . "amazonka-application-autoscaling")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Application Auto Scaling SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.ApplicationAutoScaling\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-application-autoscaling

(define-public haskell-8.10-amazonka-appstream
  (package
    (name "haskell-8.10-amazonka-appstream")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-appstream/amazonka-appstream-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1308gj35ibv54asgwng2rxsvwyz5gmcnfigikm1ib950a33zli36"))))
    (properties `((upstream-name . "amazonka-appstream") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon AppStream SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.AppStream\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-appstream

(define-public haskell-8.10-amazonka-athena
  (package
    (name "haskell-8.10-amazonka-athena")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-athena/amazonka-athena-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17avw47p6jkfbwgr4hlv0kx10xbjgm2rfpdj26whjzwv1mpy83ip"))))
    (properties `((upstream-name . "amazonka-athena") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Athena SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Athena\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-athena

(define-public haskell-8.10-amazonka-autoscaling
  (package
    (name "haskell-8.10-amazonka-autoscaling")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-autoscaling/amazonka-autoscaling-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0569mjl9k4v0z740vhaz665zy5s3jzrvp562n4j6mkim9p0svd1g"))))
    (properties `((upstream-name . "amazonka-autoscaling") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Auto Scaling SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.AutoScaling\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-autoscaling

(define-public haskell-8.10-amazonka-budgets
  (package
    (name "haskell-8.10-amazonka-budgets")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-budgets/amazonka-budgets-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wv25m25dnwsv3r8njjjg4ffy8d3r1xw5q56adhpifir0j2j1aw4"))))
    (properties `((upstream-name . "amazonka-budgets") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Budgets SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Budgets\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-budgets

(define-public haskell-8.10-amazonka-certificatemanager
  (package
    (name "haskell-8.10-amazonka-certificatemanager")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-certificatemanager/amazonka-certificatemanager-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wlyd1wn11ngq5pbh3mcg1acknsycyc9j41l7miwir5swxkpngc3"))))
    (properties `((upstream-name . "amazonka-certificatemanager")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Certificate Manager SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CertificateManager\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-certificatemanager

(define-public haskell-8.10-amazonka-cloudformation
  (package
    (name "haskell-8.10-amazonka-cloudformation")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cloudformation/amazonka-cloudformation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j5gsgswcflfrmry777drc7f7619azr1qffdz636y2vb8nsyl8z8"))))
    (properties `((upstream-name . "amazonka-cloudformation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon CloudFormation SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CloudFormation\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-cloudformation

(define-public haskell-8.10-amazonka-cloudfront
  (package
    (name "haskell-8.10-amazonka-cloudfront")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cloudfront/amazonka-cloudfront-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yd7vx90wnjid99gq4vypxfmgqjrfa4ws2s7x77qx1rl1pxh0ncc"))))
    (properties `((upstream-name . "amazonka-cloudfront") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon CloudFront SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CloudFront\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-cloudfront

(define-public haskell-8.10-amazonka-cloudhsm
  (package
    (name "haskell-8.10-amazonka-cloudhsm")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cloudhsm/amazonka-cloudhsm-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06d0w3h3njblqjh95crf6gslkdcjx29g1h66f6z0gqikrwiy5prl"))))
    (properties `((upstream-name . "amazonka-cloudhsm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon CloudHSM SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CloudHSM\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-cloudhsm

(define-public haskell-8.10-amazonka-cloudsearch
  (package
    (name "haskell-8.10-amazonka-cloudsearch")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cloudsearch/amazonka-cloudsearch-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1p3srndrj4kgwwz9021mfh91za8qgrhf4hzk02nva6awdp114j6h"))))
    (properties `((upstream-name . "amazonka-cloudsearch") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon CloudSearch SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CloudSearch\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-cloudsearch

(define-public haskell-8.10-amazonka-cloudsearch-domains
  (package
    (name "haskell-8.10-amazonka-cloudsearch-domains")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cloudsearch-domains/amazonka-cloudsearch-domains-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07xihv4bay6vz9pw89y3issfmi7iicryzi1wh22sxw3qb1jnq6q4"))))
    (properties `((upstream-name . "amazonka-cloudsearch-domains")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon CloudSearch Domain SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CloudSearchDomains\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-cloudsearch-domains

(define-public haskell-8.10-amazonka-cloudtrail
  (package
    (name "haskell-8.10-amazonka-cloudtrail")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cloudtrail/amazonka-cloudtrail-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1abx1xp75fdnavxwxi2ak5gk3b2vc2380znv3mi28s72l8aprk2m"))))
    (properties `((upstream-name . "amazonka-cloudtrail") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon CloudTrail SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CloudTrail\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-cloudtrail

(define-public haskell-8.10-amazonka-cloudwatch
  (package
    (name "haskell-8.10-amazonka-cloudwatch")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cloudwatch/amazonka-cloudwatch-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0v9j950qlfhy4dz77kq0329877050lpwaqi5h5s00kxiqwbvcmjf"))))
    (properties `((upstream-name . "amazonka-cloudwatch") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon CloudWatch SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CloudWatch\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-cloudwatch

(define-public haskell-8.10-amazonka-cloudwatch-events
  (package
    (name "haskell-8.10-amazonka-cloudwatch-events")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cloudwatch-events/amazonka-cloudwatch-events-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ikn7z6fp648qi5ch664wnym6v1mcq37khxw7fwfnfqnir13sclb"))))
    (properties `((upstream-name . "amazonka-cloudwatch-events")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon CloudWatch Events SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CloudWatchEvents\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-cloudwatch-events

(define-public haskell-8.10-amazonka-cloudwatch-logs
  (package
    (name "haskell-8.10-amazonka-cloudwatch-logs")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cloudwatch-logs/amazonka-cloudwatch-logs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "146llix63givxlry48la1m5c28q9008bmpfmbj3x5mwrgjxxxpv1"))))
    (properties `((upstream-name . "amazonka-cloudwatch-logs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon CloudWatch Logs SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CloudWatchLogs\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-cloudwatch-logs

(define-public haskell-8.10-amazonka-codebuild
  (package
    (name "haskell-8.10-amazonka-codebuild")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-codebuild/amazonka-codebuild-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1c56766yz3dj1zq643503mphdw7kb82kfn63ldi6f7i6dc5yyx8k"))))
    (properties `((upstream-name . "amazonka-codebuild") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon CodeBuild SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CodeBuild\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-codebuild

(define-public haskell-8.10-amazonka-codecommit
  (package
    (name "haskell-8.10-amazonka-codecommit")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-codecommit/amazonka-codecommit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cq73pd93la058sgpcvhmrqc5r4splh5x9w571fxrilmc08a6fdn"))))
    (properties `((upstream-name . "amazonka-codecommit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon CodeCommit SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CodeCommit\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-codecommit

(define-public haskell-8.10-amazonka-codedeploy
  (package
    (name "haskell-8.10-amazonka-codedeploy")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-codedeploy/amazonka-codedeploy-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1yjlbcbzfp72621sj458b2lv35rf8fcr88ljb47mrp7ihb86zzrx"))))
    (properties `((upstream-name . "amazonka-codedeploy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon CodeDeploy SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CodeDeploy\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-codedeploy

(define-public haskell-8.10-amazonka-codepipeline
  (package
    (name "haskell-8.10-amazonka-codepipeline")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-codepipeline/amazonka-codepipeline-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jb5775n31yhbqahv8jiiz5i1qzvq5rls3f1jf35wnwjvzzzz85z"))))
    (properties `((upstream-name . "amazonka-codepipeline") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon CodePipeline SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CodePipeline\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-codepipeline

(define-public haskell-8.10-amazonka-cognito-identity
  (package
    (name "haskell-8.10-amazonka-cognito-identity")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cognito-identity/amazonka-cognito-identity-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0142kq7hfdala7bl9l1d5s0rkf50zz89qm6m0f3mpfp4iiaphxxr"))))
    (properties `((upstream-name . "amazonka-cognito-identity")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Cognito Identity SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CognitoIdentity\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-cognito-identity

(define-public haskell-8.10-amazonka-cognito-idp
  (package
    (name "haskell-8.10-amazonka-cognito-idp")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cognito-idp/amazonka-cognito-idp-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06zhx3rajqf0llc5xvyp9nd77pb0h5mfv8f83kbp9696yi7c6qnz"))))
    (properties `((upstream-name . "amazonka-cognito-idp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Cognito Identity Provider SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CognitoIdentityProvider\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-cognito-idp

(define-public haskell-8.10-amazonka-cognito-sync
  (package
    (name "haskell-8.10-amazonka-cognito-sync")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cognito-sync/amazonka-cognito-sync-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qyvj02y7c0lvw5axr50l22pvmzj8l6c8ivdlf6myrdmfb8gjj70"))))
    (properties `((upstream-name . "amazonka-cognito-sync") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Cognito Sync SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CognitoSync\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-cognito-sync

(define-public haskell-8.10-amazonka-config
  (package
    (name "haskell-8.10-amazonka-config")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-config/amazonka-config-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0d38y292gwq7ix0gvrkznc7007jlr8an2wzrxn0rjca0f24vldpz"))))
    (properties `((upstream-name . "amazonka-config") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Config SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Config\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-config

(define-public haskell-8.10-amazonka-datapipeline
  (package
    (name "haskell-8.10-amazonka-datapipeline")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-datapipeline/amazonka-datapipeline-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08mig2diwr6ryyvin3w9rj3w37lm02v85c3bhnz5k7649s255xvb"))))
    (properties `((upstream-name . "amazonka-datapipeline") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Data Pipeline SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.DataPipeline\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-datapipeline

(define-public haskell-8.10-amazonka-devicefarm
  (package
    (name "haskell-8.10-amazonka-devicefarm")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-devicefarm/amazonka-devicefarm-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1v43k8vyal9zi91yad3518jlr5qj975l27hbdri7q7w9iax5pn5y"))))
    (properties `((upstream-name . "amazonka-devicefarm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Device Farm SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.DeviceFarm\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-devicefarm

(define-public haskell-8.10-amazonka-directconnect
  (package
    (name "haskell-8.10-amazonka-directconnect")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-directconnect/amazonka-directconnect-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nq4zax36am2y5p51g4giqln26nbjyykgprqa6z1hl8ls659jqfw"))))
    (properties `((upstream-name . "amazonka-directconnect") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Direct Connect SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.DirectConnect\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-directconnect

(define-public haskell-8.10-amazonka-discovery
  (package
    (name "haskell-8.10-amazonka-discovery")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-discovery/amazonka-discovery-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17a47yhqy7hs9vhj0iwby14irh732j2d00sm7zh3xpvipwrckaq2"))))
    (properties `((upstream-name . "amazonka-discovery") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Application Discovery Service SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Discovery\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-discovery

(define-public haskell-8.10-amazonka-dms
  (package
    (name "haskell-8.10-amazonka-dms")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-dms/amazonka-dms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11zdwcl0cz7fpamc7a9smg6qjnkc3a77l1g8k9q5y0yprhbzcycc"))))
    (properties `((upstream-name . "amazonka-dms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Database Migration Service SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.DMS\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-dms

(define-public haskell-8.10-amazonka-ds
  (package
    (name "haskell-8.10-amazonka-ds")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-ds/amazonka-ds-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zy8sr49ls5qzijr7phsbc5xmxsc4hqc1dwrzkm5cmc69abhfj7v"))))
    (properties `((upstream-name . "amazonka-ds") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Directory Service SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.DirectoryService\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-ds

(define-public haskell-8.10-amazonka-dynamodb
  (package
    (name "haskell-8.10-amazonka-dynamodb")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-dynamodb/amazonka-dynamodb-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10hxbkq15l2hcyjjspi3kf05m3294ywk51vw82j3c1pii1n4h804"))))
    (properties `((upstream-name . "amazonka-dynamodb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon DynamoDB SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.DynamoDB\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-dynamodb

(define-public haskell-8.10-amazonka-dynamodb-streams
  (package
    (name "haskell-8.10-amazonka-dynamodb-streams")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-dynamodb-streams/amazonka-dynamodb-streams-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nfr9sqiirxb9a8j6ix2l1mhyrwx061q4h7lr57ar7arj9lanbgy"))))
    (properties `((upstream-name . "amazonka-dynamodb-streams")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon DynamoDB Streams SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.DynamoDBStreams\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-dynamodb-streams

(define-public haskell-8.10-amazonka-ecr
  (package
    (name "haskell-8.10-amazonka-ecr")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-ecr/amazonka-ecr-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0n3kdkmmwasqg7gkhmszkhvzsfp90mjlhfwx02v12gpn83b5s39d"))))
    (properties `((upstream-name . "amazonka-ecr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon EC2 Container Registry SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.ECR\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-ecr

(define-public haskell-8.10-amazonka-ecs
  (package
    (name "haskell-8.10-amazonka-ecs")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-ecs/amazonka-ecs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fhv3b62anx1zlspmdi5l44qgsk4xd7s0p2vxczvzf82mcli21sm"))))
    (properties `((upstream-name . "amazonka-ecs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon EC2 Container Service SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.ECS\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-ecs

(define-public haskell-8.10-amazonka-efs
  (package
    (name "haskell-8.10-amazonka-efs")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-efs/amazonka-efs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "135isr1khawf2ap3ba791aynlm74hay7jddhrf6vsfscn1z087kl"))))
    (properties `((upstream-name . "amazonka-efs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Elastic File System SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.EFS\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-efs

(define-public haskell-8.10-amazonka-elasticache
  (package
    (name "haskell-8.10-amazonka-elasticache")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-elasticache/amazonka-elasticache-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0q7bzr3xcc78163md6i1gzxhbqrb98x8clisp9vynhvw5vh8lbad"))))
    (properties `((upstream-name . "amazonka-elasticache") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon ElastiCache SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.ElastiCache\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-elasticache

(define-public haskell-8.10-amazonka-elasticbeanstalk
  (package
    (name "haskell-8.10-amazonka-elasticbeanstalk")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-elasticbeanstalk/amazonka-elasticbeanstalk-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sczhwhckhgyf3dbmp0hnaikqkym94kyndyqzpsl9m8p0blgkm1a"))))
    (properties `((upstream-name . "amazonka-elasticbeanstalk")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Elastic Beanstalk SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.ElasticBeanstalk\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-elasticbeanstalk

(define-public haskell-8.10-amazonka-elasticsearch
  (package
    (name "haskell-8.10-amazonka-elasticsearch")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-elasticsearch/amazonka-elasticsearch-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04ya0s83gakhbkpgimmgjax09caww8y7cx1nm1j02fminifivycy"))))
    (properties `((upstream-name . "amazonka-elasticsearch") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Elasticsearch Service SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.ElasticSearch\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-elasticsearch

(define-public haskell-8.10-amazonka-elastictranscoder
  (package
    (name "haskell-8.10-amazonka-elastictranscoder")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-elastictranscoder/amazonka-elastictranscoder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nzvjzb91jka0wiimvjh5hlfqw92bsn16m1dvgnk315p7pgfg06z"))))
    (properties `((upstream-name . "amazonka-elastictranscoder")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Elastic Transcoder SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.ElasticTranscoder\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-elastictranscoder

(define-public haskell-8.10-amazonka-elb
  (package
    (name "haskell-8.10-amazonka-elb")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-elb/amazonka-elb-"
                    version ".tar.gz"))
              (sha256
               (base32
                "178hpbk35vbc6lrmpjkdc57d8961bbv8nqn1bajxm65q3nwfqpjv"))))
    (properties `((upstream-name . "amazonka-elb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Elastic Load Balancing SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.ELB\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-elb

(define-public haskell-8.10-amazonka-elbv2
  (package
    (name "haskell-8.10-amazonka-elbv2")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-elbv2/amazonka-elbv2-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ybv5wwfn0cnd3qwk7r343jihq6m0h15f6xr2a2yxjs8wizr0h37"))))
    (properties `((upstream-name . "amazonka-elbv2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Elastic Load Balancing SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.ELBv2\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-elbv2

(define-public haskell-8.10-amazonka-emr
  (package
    (name "haskell-8.10-amazonka-emr")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-emr/amazonka-emr-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g475pn0sxf4widb2xqpsm4awvqj6glpdj3ryyqhp7i38wvcg4sb"))))
    (properties `((upstream-name . "amazonka-emr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Elastic MapReduce SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.EMR\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-emr

(define-public haskell-8.10-amazonka-gamelift
  (package
    (name "haskell-8.10-amazonka-gamelift")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-gamelift/amazonka-gamelift-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cp3w3xi5icwh9ss168hsz49rq0d4wqns8kbx1aar7lchm85bj69"))))
    (properties `((upstream-name . "amazonka-gamelift") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon GameLift SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.GameLift\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-gamelift

(define-public haskell-8.10-amazonka-glacier
  (package
    (name "haskell-8.10-amazonka-glacier")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-glacier/amazonka-glacier-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11q8ajyx8nf9lc7wr7vwpg1gvp4wwb83zyv17cdpr60g7mrwymav"))))
    (properties `((upstream-name . "amazonka-glacier") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Glacier SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Glacier\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-glacier

(define-public haskell-8.10-amazonka-glue
  (package
    (name "haskell-8.10-amazonka-glue")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-glue/amazonka-glue-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17z8bcgahxw7apanj9nm9srj47dxwshmkwm828jm49wpkcvk0akb"))))
    (properties `((upstream-name . "amazonka-glue") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Glue SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Glue\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-glue

(define-public haskell-8.10-amazonka-health
  (package
    (name "haskell-8.10-amazonka-health")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-health/amazonka-health-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xs6fsl7z8qq40vi79nasfxwlxxm2ljpzh4c1b77v6q1mkak7dd2"))))
    (properties `((upstream-name . "amazonka-health") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Health APIs and Notifications SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.AWSHealth\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-health

(define-public haskell-8.10-amazonka-iam
  (package
    (name "haskell-8.10-amazonka-iam")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-iam/amazonka-iam-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mz7qdk19n3cs9iy5sf7h4g7a7sfimbb4lrk992f9ykmmyj0cl8x"))))
    (properties `((upstream-name . "amazonka-iam") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Identity and Access Management SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.IAM\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-iam

(define-public haskell-8.10-amazonka-importexport
  (package
    (name "haskell-8.10-amazonka-importexport")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-importexport/amazonka-importexport-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13nxssqayp917g2ynmvva2mk0dqd724f891jx4z0cnlxrja2856f"))))
    (properties `((upstream-name . "amazonka-importexport") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Import/Export SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.ImportExport\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-importexport

(define-public haskell-8.10-amazonka-inspector
  (package
    (name "haskell-8.10-amazonka-inspector")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-inspector/amazonka-inspector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0x5nxw2nb64ahjw4hy8lp7w32mqsq0zj0skj116pa4yf6p1v7d38"))))
    (properties `((upstream-name . "amazonka-inspector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Inspector SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Inspector\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-inspector

(define-public haskell-8.10-amazonka-iot
  (package
    (name "haskell-8.10-amazonka-iot")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-iot/amazonka-iot-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10y65lma8m8cyz753r3pkaayqfyhxs8103y63v0dardrvci3jxji"))))
    (properties `((upstream-name . "amazonka-iot") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon IoT SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.IoT\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-iot

(define-public haskell-8.10-amazonka-iot-dataplane
  (package
    (name "haskell-8.10-amazonka-iot-dataplane")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-iot-dataplane/amazonka-iot-dataplane-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j0bqaw6nc3nhq6wbm1jlm7kdkf497xnba4yxk3q27gbx5zzjhvv"))))
    (properties `((upstream-name . "amazonka-iot-dataplane") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon IoT Data Plane SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.IoTData\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-iot-dataplane

(define-public haskell-8.10-amazonka-kinesis
  (package
    (name "haskell-8.10-amazonka-kinesis")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-kinesis/amazonka-kinesis-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rsipc64ia9hwcvw5bn0055bisq04kihnhzb4wzfvbgrzgrxrqsz"))))
    (properties `((upstream-name . "amazonka-kinesis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Kinesis SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Kinesis\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-kinesis

(define-public haskell-8.10-amazonka-kinesis-analytics
  (package
    (name "haskell-8.10-amazonka-kinesis-analytics")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-kinesis-analytics/amazonka-kinesis-analytics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16bf0sqyrgphhbqi8lxzmgb818m7yajmdcwmzgz3w99zzad9qn5g"))))
    (properties `((upstream-name . "amazonka-kinesis-analytics")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Kinesis Analytics SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.KinesisAnalytics\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-kinesis-analytics

(define-public haskell-8.10-amazonka-kinesis-firehose
  (package
    (name "haskell-8.10-amazonka-kinesis-firehose")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-kinesis-firehose/amazonka-kinesis-firehose-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bc7d36zs3b0nx2889hpnk45fcrn3dknn2c6gg19wk1k7zz0p8g4"))))
    (properties `((upstream-name . "amazonka-kinesis-firehose")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Kinesis Firehose SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Firehose\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-kinesis-firehose

(define-public haskell-8.10-amazonka-kms
  (package
    (name "haskell-8.10-amazonka-kms")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-kms/amazonka-kms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11b2jnfdj2z3v65cbwwryr35n9pjf488mrs90j2prx6ijb1kwcvd"))))
    (properties `((upstream-name . "amazonka-kms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Key Management Service SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.KMS\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-kms

(define-public haskell-8.10-amazonka-lambda
  (package
    (name "haskell-8.10-amazonka-lambda")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-lambda/amazonka-lambda-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18yc1wk7dbyxjdqkdyp1hi45i8vc95imaj0xfr29yq5dbkqmyawp"))))
    (properties `((upstream-name . "amazonka-lambda") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Lambda SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Lambda\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-lambda

(define-public haskell-8.10-amazonka-lightsail
  (package
    (name "haskell-8.10-amazonka-lightsail")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-lightsail/amazonka-lightsail-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07lknfz41jc4vjd76ql32h6bbbhpb82wafj7w3ifwnxaz2h8wrvw"))))
    (properties `((upstream-name . "amazonka-lightsail") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Lightsail SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Lightsail\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-lightsail

(define-public haskell-8.10-amazonka-marketplace-analytics
  (package
    (name "haskell-8.10-amazonka-marketplace-analytics")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-marketplace-analytics/amazonka-marketplace-analytics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0z8kl946ssilj4vb50a5pv21kyfd0fp1bs3l3xyxjc1ynypq5xbg"))))
    (properties `((upstream-name . "amazonka-marketplace-analytics")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Marketplace Commerce Analytics SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.MarketplaceAnalytics\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-marketplace-analytics

(define-public haskell-8.10-amazonka-marketplace-metering
  (package
    (name "haskell-8.10-amazonka-marketplace-metering")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-marketplace-metering/amazonka-marketplace-metering-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dshx2nyhsywmx491cvzfcr3dz847q7mjdj9zwli9f6kzgldp2wj"))))
    (properties `((upstream-name . "amazonka-marketplace-metering")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Marketplace Metering SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.MarketplaceMetering\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-marketplace-metering

(define-public haskell-8.10-amazonka-ml
  (package
    (name "haskell-8.10-amazonka-ml")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-ml/amazonka-ml-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wmqlx4k17m3zywkj39z3fv6jbmhhz9w7ax1g465gzizcswc1ixq"))))
    (properties `((upstream-name . "amazonka-ml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Machine Learning SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.MachineLearning\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-ml

(define-public haskell-8.10-amazonka-opsworks
  (package
    (name "haskell-8.10-amazonka-opsworks")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-opsworks/amazonka-opsworks-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15magxqrylyxdkqa5xyihq00nfh4pv0g7wl6gp9smvg5svq1c5qa"))))
    (properties `((upstream-name . "amazonka-opsworks") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon OpsWorks SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.OpsWorks\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-opsworks

(define-public haskell-8.10-amazonka-opsworks-cm
  (package
    (name "haskell-8.10-amazonka-opsworks-cm")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-opsworks-cm/amazonka-opsworks-cm-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mya7swx8x4p7wz17p62jn8ixw4xi72w6691r4ay5gphl81pi1ai"))))
    (properties `((upstream-name . "amazonka-opsworks-cm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon OpsWorks for Chef Automate SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.OpsWorksCM\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-opsworks-cm

(define-public haskell-8.10-amazonka-pinpoint
  (package
    (name "haskell-8.10-amazonka-pinpoint")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-pinpoint/amazonka-pinpoint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11zw2xkn39c75frqpm67x2qpb63xzl25633ny0b3rbdpak8w4f5a"))))
    (properties `((upstream-name . "amazonka-pinpoint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Pinpoint SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Pinpoint\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-pinpoint

(define-public haskell-8.10-amazonka-polly
  (package
    (name "haskell-8.10-amazonka-polly")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-polly/amazonka-polly-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vyckykw1in9qlz824k4zmn9xixlf2ak479vfcb1p872ri2pb25h"))))
    (properties `((upstream-name . "amazonka-polly") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Polly SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Polly\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-polly

(define-public haskell-8.10-amazonka-rds
  (package
    (name "haskell-8.10-amazonka-rds")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-rds/amazonka-rds-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08cl73fczrf94k5z92w2cpf3ngrcqhb6xiygbh3vv4wh6l541lpw"))))
    (properties `((upstream-name . "amazonka-rds") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Relational Database Service SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.RDS\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-rds

(define-public haskell-8.10-amazonka-redshift
  (package
    (name "haskell-8.10-amazonka-redshift")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-redshift/amazonka-redshift-"
                    version ".tar.gz"))
              (sha256
               (base32
                "051281bgr65xsyac3vy1zbjs3v3avw4f2wk1743cqdjnarg8bsl7"))))
    (properties `((upstream-name . "amazonka-redshift") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Redshift SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Redshift\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-redshift

(define-public haskell-8.10-amazonka-rekognition
  (package
    (name "haskell-8.10-amazonka-rekognition")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-rekognition/amazonka-rekognition-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1y7qm7k9y9w0lm09qpzi5p1jld3i78x0pr446q37li15m3pgn81y"))))
    (properties `((upstream-name . "amazonka-rekognition") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Rekognition SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Rekognition\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-rekognition

(define-public haskell-8.10-amazonka-route53
  (package
    (name "haskell-8.10-amazonka-route53")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-route53/amazonka-route53-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wspqzdz0i07b4jg80w9vbzmd12pzv7l5dpjnhk2mvbdbgd44r3w"))))
    (properties `((upstream-name . "amazonka-route53") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Route 53 SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Route53\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-route53

(define-public haskell-8.10-amazonka-route53-domains
  (package
    (name "haskell-8.10-amazonka-route53-domains")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-route53-domains/amazonka-route53-domains-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1s529dzwf92scjwbvyvrcfcs9ma1yvcgrwla79fj74f38mscsarc"))))
    (properties `((upstream-name . "amazonka-route53-domains") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Route 53 Domains SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Route53Domains\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-route53-domains

(define-public haskell-8.10-amazonka-s3
  (package
    (name "haskell-8.10-amazonka-s3")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-s3/amazonka-s3-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a3y2q3xmb249giwjvsgva26ky315bnsii6s9gqvhd5g9q9b1827"))))
    (properties `((upstream-name . "amazonka-s3") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Simple Storage Service SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.S3\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-s3

(define-public haskell-8.10-amazonka-sdb
  (package
    (name "haskell-8.10-amazonka-sdb")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-sdb/amazonka-sdb-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yiap66yqkr453dgkn9q74xmc1g6afqj6ghnhp795lf35igmid2k"))))
    (properties `((upstream-name . "amazonka-sdb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon SimpleDB SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.SDB\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-sdb

(define-public haskell-8.10-amazonka-servicecatalog
  (package
    (name "haskell-8.10-amazonka-servicecatalog")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-servicecatalog/amazonka-servicecatalog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jzm0xsn52qh9ihjn73wgnkil6gnrxvp97x7d881nzyvg5yavmml"))))
    (properties `((upstream-name . "amazonka-servicecatalog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Service Catalog SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.ServiceCatalog\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-servicecatalog

(define-public haskell-8.10-amazonka-ses
  (package
    (name "haskell-8.10-amazonka-ses")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-ses/amazonka-ses-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1s7c2jvg8y2vi7lzy3wgp352xnf0bfnc36l6g771279l61nmfk05"))))
    (properties `((upstream-name . "amazonka-ses") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Simple Email Service SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.SES\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-ses

(define-public haskell-8.10-amazonka-shield
  (package
    (name "haskell-8.10-amazonka-shield")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-shield/amazonka-shield-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06bml09gg5pq8vsj145jwbqpmbx6n07yx0ds030yhmahxyl732hv"))))
    (properties `((upstream-name . "amazonka-shield") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Shield SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Shield\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-shield

(define-public haskell-8.10-amazonka-sms
  (package
    (name "haskell-8.10-amazonka-sms")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-sms/amazonka-sms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11ab1f09l7p33mvbgrxl5j09z6higs37a5v9d07hh94lvr5l7syn"))))
    (properties `((upstream-name . "amazonka-sms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Server Migration Service SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.SMS\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-sms

(define-public haskell-8.10-amazonka-snowball
  (package
    (name "haskell-8.10-amazonka-snowball")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-snowball/amazonka-snowball-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lvw8ym5xlxjiyflg1xr2cqcvf4flamwpd6pgqzbnwzdkyv1zha8"))))
    (properties `((upstream-name . "amazonka-snowball") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Import/Export Snowball SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Snowball\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-snowball

(define-public haskell-8.10-amazonka-sns
  (package
    (name "haskell-8.10-amazonka-sns")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-sns/amazonka-sns-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dg72gkb3graaq2bh0dbpd4mx8scmx6zrk9q77rwzpxd80yab66v"))))
    (properties `((upstream-name . "amazonka-sns") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Simple Notification Service SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.SNS\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-sns

(define-public haskell-8.10-amazonka-sqs
  (package
    (name "haskell-8.10-amazonka-sqs")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-sqs/amazonka-sqs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1m2313w5z0mdzhqdx7qkd6k9k5bxbb4dalg37v9jmbsidza7s1pf"))))
    (properties `((upstream-name . "amazonka-sqs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Simple Queue Service SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.SQS\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-sqs

(define-public haskell-8.10-amazonka-ssm
  (package
    (name "haskell-8.10-amazonka-ssm")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-ssm/amazonka-ssm-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bxh7hqsm2jfxza4dr2cami39sc2wzkck4yzqp7pk3ds3xggybcm"))))
    (properties `((upstream-name . "amazonka-ssm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Simple Systems Manager (SSM) SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.SSM\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-ssm

(define-public haskell-8.10-amazonka-stepfunctions
  (package
    (name "haskell-8.10-amazonka-stepfunctions")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-stepfunctions/amazonka-stepfunctions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04yhgmbj129kaj6dxl6ck9clai551j5kmfnwck6nbfpq3mi7dbv0"))))
    (properties `((upstream-name . "amazonka-stepfunctions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Step Functions SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.StepFunctions\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-stepfunctions

(define-public haskell-8.10-amazonka-storagegateway
  (package
    (name "haskell-8.10-amazonka-storagegateway")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-storagegateway/amazonka-storagegateway-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gvyh6qjfcr3ndv17rcjxnsa13dghwdd420cnc8xsafq54qbah8h"))))
    (properties `((upstream-name . "amazonka-storagegateway") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Storage Gateway SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.StorageGateway\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-storagegateway

(define-public haskell-8.10-amazonka-sts
  (package
    (name "haskell-8.10-amazonka-sts")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-sts/amazonka-sts-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fcg3hg88427h9fgqpxwa599gh19i1lc2wfjlf554cg92jxn88zf"))))
    (properties `((upstream-name . "amazonka-sts") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Security Token Service SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.STS\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-sts

(define-public haskell-8.10-amazonka-support
  (package
    (name "haskell-8.10-amazonka-support")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-support/amazonka-support-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fhrqwbv84np82nddkxxp7bkws2830yb3pz52nwng800vpahsbas"))))
    (properties `((upstream-name . "amazonka-support") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Support SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Support\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-support

(define-public haskell-8.10-amazonka-swf
  (package
    (name "haskell-8.10-amazonka-swf")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-swf/amazonka-swf-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jklp28c7kanlkl6mciam2gj6b6w25fs7aidf83ndr3z9xqfd73v"))))
    (properties `((upstream-name . "amazonka-swf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Simple Workflow Service SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.SWF\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-swf

(define-public haskell-8.10-amazonka-waf
  (package
    (name "haskell-8.10-amazonka-waf")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-waf/amazonka-waf-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sjian917kc7vzq34sbd4cifx5qwf9lkkrvhbsl1z2aqv0bzbhj5"))))
    (properties `((upstream-name . "amazonka-waf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon WAF SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.WAF\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-waf

(define-public haskell-8.10-amazonka-workspaces
  (package
    (name "haskell-8.10-amazonka-workspaces")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-workspaces/amazonka-workspaces-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1grpbka4baw81qz4sds52ag4nj4ial6kbjii11yrkyc6i9dki2g5"))))
    (properties `((upstream-name . "amazonka-workspaces") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon WorkSpaces SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.WorkSpaces\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-workspaces

(define-public haskell-8.10-amazonka-xray
  (package
    (name "haskell-8.10-amazonka-xray")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-xray/amazonka-xray-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03fhlls2n1cih0z4fcs1bcsr1d97qnllcknq90dqmmr9fmmg131l"))))
    (properties `((upstream-name . "amazonka-xray") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-amazonka-core)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-amazonka-test)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon X-Ray SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.XRay\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-amazonka-xray

(define-public haskell-8.10-gi-gdk
  (package
    (name "haskell-8.10-gi-gdk")
    (version "3.0.24")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-gdk/gi-gdk-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "17slysv7zj3nbzh302w8jkvcfkvwfk5s80n99lqhggd6lnhf5fjx"))))
    (properties `((upstream-name . "gi-gdk") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages gtk) gdk-pixbuf)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-gi-cairo)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-gi-gdkpixbuf)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-gi-gio)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-gi-glib)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-gi-gobject)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-gi-pango)
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
    (synopsis "Gdk bindings")
    (description "Bindings for Gdk, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.10-gi-gdk

(define-public haskell-8.10-hasql-pool
  (package
    (name "haskell-8.10-hasql-pool")
    (version "0.5.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasql-pool/hasql-pool-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0sr8ifvkyd5g7ajaqd7bbqgfpnpkazv7fbq5ix07h94kdf1idqq5"))))
    (properties `((upstream-name . "hasql-pool") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-prelude)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-hasql)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-resource-pool)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql)))
    (home-page "https://github.com/nikita-volkov/hasql-pool ")
    (synopsis "A pool of connections for Hasql")
    (description "")
    (license license:expat)))

haskell-8.10-hasql-pool

(define-public haskell-8.10-hasql-queue
  (package
    (name "haskell-8.10-hasql-queue")
    (version "1.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasql-queue/hasql-queue-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0d8ylf92ydhg12v2rjxxnijzjkkpmws0r1nnxm63w5arwz947n5m"))))
    (properties `((upstream-name . "hasql-queue") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cryptohash-sha1)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-hasql)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-here)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-postgresql-libpq)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-postgresql-libpq-notify)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-resource-pool)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-tmp-postgres)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql)))
    (home-page "https://github.com/jfischoff/hasql-queue#readme")
    (synopsis "A PostgreSQL backed queue")
    (description "A PostgreSQL backed queue. Please see README.md")
    (license license:bsd-3)))

haskell-8.10-hasql-queue

(define-public haskell-8.10-hasql-transaction
  (package
    (name "haskell-8.10-hasql-transaction")
    (version "1.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasql-transaction/hasql-transaction-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ajk7g9sk83sig2bkfajxpwasqrswxr0f82mxzwfy9j08z3ks235"))))
    (properties `((upstream-name . "hasql-transaction") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-bytestring-tree-builder)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-contravariant)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-contravariant-extras)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-hasql)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql)))
    (home-page "https://github.com/nikita-volkov/hasql-transaction")
    (synopsis "Composable abstraction over retryable transactions for Hasql")
    (description "")
    (license license:expat)))

haskell-8.10-hasql-transaction

(define-public haskell-8.10-hledger-web
  (package
    (name "haskell-8.10-hledger-web")
    (version "1.21")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-web/hledger-web-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ivszqcypw0j2wn4r7fv7dqm1pvr0b1y6rqpxagzyk8cxn3ic9g2"))))
    (properties `((upstream-name . "hledger-web") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-dev" "-f-library-only" "-fthreaded")
       #:cabal-revision
       ("1" "1hnw10ibhbafbsfj5lzlxwjg4cjnqr5bb51n6mqbi30qqabgq78x")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-Decimal)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-blaze-markup)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-clientsession)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cmdargs)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-hjsmin)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-hledger)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-hledger-lib)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-shakespeare)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unix-compat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-wai-cors)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-wai-extra)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-wai-handler-launch)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-warp)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-yesod)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-yesod-core)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-yesod-form)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-yesod-static)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-yesod-test)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://hledger.org")
    (synopsis "Web-based user interface for the hledger accounting system")
    (description
     "A simple web-based user interface for the hledger accounting system,
providing a more modern UI than the command-line or terminal interfaces.
It can be used as a local single-user UI, or as a multi-user UI for
viewing\\/adding\\/editing on the web.

hledger is a robust, cross-platform set of tools for tracking money,
time, or any other commodity, using double-entry accounting and a
simple, editable file format, with command-line, terminal and web
interfaces. It is a Haskell rewrite of Ledger, and one of the leading
implementations of Plain Text Accounting. Read more at:
<https://hledger.org>")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-hledger-web

(define-public haskell-8.10-nri-observability
  (package
    (name "haskell-8.10-nri-observability")
    (version "0.1.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/nri-observability/nri-observability-"
                    version ".tar.gz"))
              (sha256
               (base32
                "077zj96iapjp6cn38z0g6didpwq866xz5m03d8kbp3pwdmfpr65c"))))
    (properties `((upstream-name . "nri-observability") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-bugsnag-hs)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hostname)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-nri-env-parser)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-nri-prelude)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-uuid)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page
     "https://github.com/NoRedInk/haskell-libraries/tree/trunk/nri-observability#readme")
    (synopsis "Report log spans collected by nri-prelude.")
    (description
     "Please see the README at <https://github.com/NoRedInk/haskell-libraries/tree/trunk/nri-observability#readme>.")
    (license license:bsd-3)))

haskell-8.10-nri-observability

(define-public haskell-8.10-opentelemetry-lightstep
  (package
    (name "haskell-8.10-opentelemetry-lightstep")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/opentelemetry-lightstep/opentelemetry-lightstep-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1yd6gzhwwmjjh41ipz2kifzpn7hha9nli3war2rqdjvhj349lrw8"))))
    (properties `((upstream-name . "opentelemetry-lightstep") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-clock)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-ghc-events)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-opentelemetry)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-opentelemetry-extra)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-splitmix)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-typed-process)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/opentelemetry-lightstep")
    (synopsis "")
    (description
     "The OpenTelemetry Haskell Client (Lightstep exporter) https://opentelemetry.io")
    (license license:asl2.0)))

haskell-8.10-opentelemetry-lightstep

(define-public haskell-8.10-pagure-cli
  (package
    (name "haskell-8.10-pagure-cli")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-pagure)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-simple-cmd-args)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/juhp/pagure-cli")
    (synopsis "Pagure client")
    (description
     "A command-line Pagure client for querying projects and users.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-pagure-cli

(define-public haskell-8.10-stack
  (package
    (name "haskell-8.10-stack")
    (version "2.7.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/stack/stack-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0i2v5i6bg90n6i4clcaww8m8702d3y5z8r03xdizdisjhf0zijj7"))))
    (properties `((upstream-name . "stack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-developer-mode" "-f-disable-git-info" "-f-hide-dependency-versions" "-f-integration-tests" "-f-static" "-f-supported-build")
       #:cabal-revision
       ("3" "1g2i0559q5nis2h29mqx3kzqkx2rmfb93h3idgdfvij5fzb15yrx")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-annotated-wl-pprint)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-casa-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-casa-types)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-colour)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-cryptonite-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-echo)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-file-embed)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-filelock)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-fsnotify)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-generic-deriving)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-githash)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hackage-security)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-hi-file-parser)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-hpack)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hsc2hs)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-http-download)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-mintty)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-mono-traversable)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-mustache)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-neat-interpolation)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-open-browser)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-optparse-generic)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-optparse-simple)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-pantry)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-path)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-path-io)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-persistent)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-persistent-sqlite)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-persistent-template)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-project-template)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-regex-applicative-text)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-retry)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-rio)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-rio-prettyprint)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-streaming-commons)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tar)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-text-metrics)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-th-reify-many)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-tls)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-typed-process)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unicode-transforms)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unix-compat)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-zip-archive)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://haskellstack.org")
    (synopsis "The Haskell Tool Stack")
    (description
     "Please see the documentation at <https://docs.haskellstack.org>
for usage information.

If building a 'stack' executable for distribution, please download the
source code from <https://github.com/commercialhaskell/stack/releases>
and build it using Stack itself in order to ensure identical behaviour
to official binaries.  This package on Hackage is provided for convenience
and bootstrapping purposes.

Note that the API for the library is not currently stable, and may
change significantly, even between minor releases. It is
currently only intended for use by the executable.")
    (license license:bsd-3)))

haskell-8.10-stack

(define-public haskell-8.10-wss-client
  (package
    (name "haskell-8.10-wss-client")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wss-client/wss-client-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1licynhnyhfdq4gxpsya3gaypjs9inqzr2xqmjs9f99ymbvin8d8"))))
    (properties `((upstream-name . "wss-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-sample")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-envy)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-http-client-tls)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-skews)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-websockets)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/iij-ii/direct-hs/tree/master/wss-client")
    (synopsis "A-little-higher-level WebSocket client.")
    (description
     "A-little-higher-level WebSocket client. Based on http-client and http-client-tls.")
    (license license:bsd-3)))

haskell-8.10-wss-client

(define-public haskell-8.10-yesod-auth-hashdb
  (package
    (name "haskell-8.10-yesod-auth-hashdb")
    (version "1.7.1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-auth-hashdb/yesod-auth-hashdb-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1daibkn5qhw131pp0sfyahyicwlgpin90zkcrwr2qk05ms5j3hj5"))))
    (properties `((upstream-name . "yesod-auth-hashdb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-basic-prelude)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-monad-logger)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-persistent)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-persistent-sqlite)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-wai-extra)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-yesod)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-yesod-auth)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-yesod-core)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-yesod-form)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-yesod-persistent)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-yesod-test)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/paul-rouse/yesod-auth-hashdb")
    (synopsis "Authentication plugin for Yesod.")
    (description
     "This package is the Yesod.Auth.HashDB plugin, originally included as part
of yesod-auth, but now modified to be more secure and placed in a separate
package.

It provides authentication using hashed passwords stored in a database,
and works best in situations where an administrator is involved in
setting up a user with an initial password.

The complete login process, including a default form, is implemented by
this plugin, but the application developer must design the interfaces
for setting up users and allowing them to change their own passwords,
since only the low-level password-setting functions are provided by this
package.  (Note that other authentication plugins may be more appropriate
if you wish to use email verification to set up accounts).")
    (license license:expat)))

haskell-8.10-yesod-auth-hashdb

(define-public haskell-8.10-yesod-auth-oauth2
  (package
    (name "haskell-8.10-yesod-auth-oauth2")
    (version "0.6.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-auth-oauth2/yesod-auth-oauth2-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hy90iz3f52kg7vs5k27mqpzhfncvag9sb9vs8gl7v89caa1pdjz"))))
    (properties `((upstream-name . "yesod-auth-oauth2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-example")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-errors)
                  (@ (gnu packages stackage ghc-8.10 stage022)
                     haskell-8.10-hoauth2)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-http-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-load-env)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-uri-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-warp)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-yesod)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-yesod-auth)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/freckle/yesod-auth-oauth2")
    (synopsis "OAuth 2.0 authentication plugins")
    (description
     "Library to authenticate with OAuth 2.0 for Yesod web applications.")
    (license license:expat)))

haskell-8.10-yesod-auth-oauth2

(define-public haskell-8.10-yesod-page-cursor
  (package
    (name "haskell-8.10-yesod-page-cursor")
    (version "2.0.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-page-cursor/yesod-page-cursor-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13wvivls1yqaanvkc9bpbiwx6qxa78ffgivm4qws4fyicqp628ak"))))
    (properties `((upstream-name . "yesod-page-cursor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-hspec-expectations-lifted)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-http-link-header)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-lens-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-monad-logger)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-persistent)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-persistent-sqlite)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-persistent-template)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-wai-extra)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-yesod)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-yesod-core)
                  (@ (gnu packages stackage ghc-8.10 stage021)
                     haskell-8.10-yesod-test)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/freckle/yesod-page-cursor#readme")
    (synopsis "")
    (description "Cursor based pagination for Yesod")
    (license license:expat)))

haskell-8.10-yesod-page-cursor

(define-public haskell-8.10-yesod-paginator
  (package
    (name "haskell-8.10-yesod-paginator")
    (version "1.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-paginator/yesod-paginator-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06zbmklxpxlxy422k01phanj5zj940mm67gjn9vnz5lrs798q7cj"))))
    (properties `((upstream-name . "yesod-paginator") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-blaze-markup)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-path-pieces)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-persistent)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-uri-encode)
                  (@ (gnu packages stackage ghc-8.10 stage019)
                     haskell-8.10-warp)
                  (@ (gnu packages stackage ghc-8.10 stage023)
                     haskell-8.10-yesod)
                  (@ (gnu packages stackage ghc-8.10 stage020)
                     haskell-8.10-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/pbrisbin/yesod-paginator")
    (synopsis "A pagination approach for yesod")
    (description
     "Paginate a list showing a per-item widget and links to other pages")
    (license license:bsd-3)))

haskell-8.10-yesod-paginator

