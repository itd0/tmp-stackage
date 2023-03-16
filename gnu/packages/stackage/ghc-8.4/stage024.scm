;;; generated file
(define-module (gnu packages stackage ghc-8.4 stage024)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-8.4))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-8.4-amazonka-apigateway
  (package
    (name "haskell-8.4-amazonka-apigateway")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-apigateway/amazonka-apigateway-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1s2snyx9s23435wsan8hbi1vnql3n3rgh23ffv9d0n43pp7kxrjn"))))
    (properties `((upstream-name . "amazonka-apigateway") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-apigateway

(define-public haskell-8.4-amazonka-application-autoscaling
  (package
    (name "haskell-8.4-amazonka-application-autoscaling")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-application-autoscaling/amazonka-application-autoscaling-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xqxlrw02r4w5h348ab04lrwp4cxk3sksx5xhmxr1macqb8sfdjm"))))
    (properties `((upstream-name . "amazonka-application-autoscaling")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-application-autoscaling

(define-public haskell-8.4-amazonka-appstream
  (package
    (name "haskell-8.4-amazonka-appstream")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-appstream/amazonka-appstream-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ps76yri9bnfkr4ya1yc9myrzpf44a01nrkd03kw8qidjcmnk47b"))))
    (properties `((upstream-name . "amazonka-appstream") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-appstream

(define-public haskell-8.4-amazonka-autoscaling
  (package
    (name "haskell-8.4-amazonka-autoscaling")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-autoscaling/amazonka-autoscaling-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lzqsn7bmq2yrdmn2hnic5cghmw7kxfmkvqcs8vrk2gg4cmi6lhv"))))
    (properties `((upstream-name . "amazonka-autoscaling") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-autoscaling

(define-public haskell-8.4-amazonka-budgets
  (package
    (name "haskell-8.4-amazonka-budgets")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-budgets/amazonka-budgets-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dz4gi6qkkmfhz3yqj0pcjgsac4a2036bpiwayxdyzbzda2r5inc"))))
    (properties `((upstream-name . "amazonka-budgets") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-budgets

(define-public haskell-8.4-amazonka-certificatemanager
  (package
    (name "haskell-8.4-amazonka-certificatemanager")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-certificatemanager/amazonka-certificatemanager-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sma4rbylmj7dl0irab5vh32na52l1qb34xpa6l4icx1hp397pqz"))))
    (properties `((upstream-name . "amazonka-certificatemanager")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-certificatemanager

(define-public haskell-8.4-amazonka-cloudformation
  (package
    (name "haskell-8.4-amazonka-cloudformation")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cloudformation/amazonka-cloudformation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dc3zb50vq3kkw65kkmrgz1vyjrzm1bmm3znj39i6slhfhjwiqhm"))))
    (properties `((upstream-name . "amazonka-cloudformation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-cloudformation

(define-public haskell-8.4-amazonka-cloudfront
  (package
    (name "haskell-8.4-amazonka-cloudfront")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cloudfront/amazonka-cloudfront-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18ilsfm3918x3lzwr0v470n7pkc2r1iknlmz8bqbxfgkiyc60slm"))))
    (properties `((upstream-name . "amazonka-cloudfront") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-cloudfront

(define-public haskell-8.4-amazonka-cloudhsm
  (package
    (name "haskell-8.4-amazonka-cloudhsm")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cloudhsm/amazonka-cloudhsm-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pqvliw77nk9c4ac3zhmbszlxcd13ibrg28rj31yi1lllcw708p4"))))
    (properties `((upstream-name . "amazonka-cloudhsm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-cloudhsm

(define-public haskell-8.4-amazonka-cloudsearch
  (package
    (name "haskell-8.4-amazonka-cloudsearch")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cloudsearch/amazonka-cloudsearch-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1533ii94iyi7z0nsnldxmf0hgkpx01xz10mgsd7z9n5cfrak85yx"))))
    (properties `((upstream-name . "amazonka-cloudsearch") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-cloudsearch

(define-public haskell-8.4-amazonka-cloudsearch-domains
  (package
    (name "haskell-8.4-amazonka-cloudsearch-domains")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cloudsearch-domains/amazonka-cloudsearch-domains-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19vwiyrcc591cpaflv0ji8fg7xjx1vba1f4kv0gh9mgfk9px7w14"))))
    (properties `((upstream-name . "amazonka-cloudsearch-domains")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-cloudsearch-domains

(define-public haskell-8.4-amazonka-cloudtrail
  (package
    (name "haskell-8.4-amazonka-cloudtrail")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cloudtrail/amazonka-cloudtrail-"
                    version ".tar.gz"))
              (sha256
               (base32
                "090w96krmwd2h4l6s4hz04rfwwi4y6bifzfsw0hn7r62dbwrvnfr"))))
    (properties `((upstream-name . "amazonka-cloudtrail") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-cloudtrail

(define-public haskell-8.4-amazonka-cloudwatch
  (package
    (name "haskell-8.4-amazonka-cloudwatch")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cloudwatch/amazonka-cloudwatch-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lgfvca9gsqd38ly7f6dvvivi34qbpbqqng3hb89cbdjcjri5j15"))))
    (properties `((upstream-name . "amazonka-cloudwatch") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-cloudwatch

(define-public haskell-8.4-amazonka-cloudwatch-events
  (package
    (name "haskell-8.4-amazonka-cloudwatch-events")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cloudwatch-events/amazonka-cloudwatch-events-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kgcsbsxi6z84avfzmx9z1111h49yliyyiqww3b39if4dx1mxyqk"))))
    (properties `((upstream-name . "amazonka-cloudwatch-events")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-cloudwatch-events

(define-public haskell-8.4-amazonka-cloudwatch-logs
  (package
    (name "haskell-8.4-amazonka-cloudwatch-logs")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cloudwatch-logs/amazonka-cloudwatch-logs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zgfhz5646s6hkzw2n686rwhz5g9l1mrakagq3ngaagvy15fgr40"))))
    (properties `((upstream-name . "amazonka-cloudwatch-logs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-cloudwatch-logs

(define-public haskell-8.4-amazonka-codebuild
  (package
    (name "haskell-8.4-amazonka-codebuild")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-codebuild/amazonka-codebuild-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ax0am75zy8xddzkn36sc9dpda1j5d28pbrdddhlr98airbl7gzx"))))
    (properties `((upstream-name . "amazonka-codebuild") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-codebuild

(define-public haskell-8.4-amazonka-codecommit
  (package
    (name "haskell-8.4-amazonka-codecommit")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-codecommit/amazonka-codecommit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0594d3frpxc2d9sw265dhph8q1gvzsx9n6l1vcgwglxbpwq2cbwa"))))
    (properties `((upstream-name . "amazonka-codecommit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-codecommit

(define-public haskell-8.4-amazonka-codedeploy
  (package
    (name "haskell-8.4-amazonka-codedeploy")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-codedeploy/amazonka-codedeploy-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1py2sfnwgavqhb8z2ngxx6b3gh0f9r3l84r5w5dcn6l5p2dbj59k"))))
    (properties `((upstream-name . "amazonka-codedeploy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-codedeploy

(define-public haskell-8.4-amazonka-codepipeline
  (package
    (name "haskell-8.4-amazonka-codepipeline")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-codepipeline/amazonka-codepipeline-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hy05s7wl410319z2svppg6aqc00zsix6m4l8gniqq1i34iflvn4"))))
    (properties `((upstream-name . "amazonka-codepipeline") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-codepipeline

(define-public haskell-8.4-amazonka-cognito-identity
  (package
    (name "haskell-8.4-amazonka-cognito-identity")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cognito-identity/amazonka-cognito-identity-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mdnr66nq86ndh80ymgvh12crdqyqv212qkb2r2hzz6k23i31b1s"))))
    (properties `((upstream-name . "amazonka-cognito-identity")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-cognito-identity

(define-public haskell-8.4-amazonka-cognito-idp
  (package
    (name "haskell-8.4-amazonka-cognito-idp")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cognito-idp/amazonka-cognito-idp-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zqzx0l3g7kb22synk0hsy48zz320j906y7jnj7r7fqhrb48k2d9"))))
    (properties `((upstream-name . "amazonka-cognito-idp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-cognito-idp

(define-public haskell-8.4-amazonka-cognito-sync
  (package
    (name "haskell-8.4-amazonka-cognito-sync")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cognito-sync/amazonka-cognito-sync-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dgldjisp3sxq3csnn7ffsh0bn1r2w32vlyz6dj6f7pkw7c11pjz"))))
    (properties `((upstream-name . "amazonka-cognito-sync") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-cognito-sync

(define-public haskell-8.4-amazonka-config
  (package
    (name "haskell-8.4-amazonka-config")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-config/amazonka-config-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kf98bz7jikj3xh2k49lpf04i0p9y046x4mb93xwrywy0jy3xc2w"))))
    (properties `((upstream-name . "amazonka-config") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-config

(define-public haskell-8.4-amazonka-datapipeline
  (package
    (name "haskell-8.4-amazonka-datapipeline")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-datapipeline/amazonka-datapipeline-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1r9sbzc6z5md9z1yzb3sr41ih3kfjg5dx9z38p61rvv413bjs88v"))))
    (properties `((upstream-name . "amazonka-datapipeline") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-datapipeline

(define-public haskell-8.4-amazonka-devicefarm
  (package
    (name "haskell-8.4-amazonka-devicefarm")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-devicefarm/amazonka-devicefarm-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sf56mzd6kbyhq927wys8ayp9mvr0rpisjs6rs3s8m62n2w786yq"))))
    (properties `((upstream-name . "amazonka-devicefarm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-devicefarm

(define-public haskell-8.4-amazonka-directconnect
  (package
    (name "haskell-8.4-amazonka-directconnect")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-directconnect/amazonka-directconnect-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ciqadw5kam6b51irx45kc3g03qh50pdp8d321v83b2yhv7bk1cd"))))
    (properties `((upstream-name . "amazonka-directconnect") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-directconnect

(define-public haskell-8.4-amazonka-discovery
  (package
    (name "haskell-8.4-amazonka-discovery")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-discovery/amazonka-discovery-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04wj34lm7amxjcg9bm77nsfjgx76n9b4scj8pspc44qldgbpmikv"))))
    (properties `((upstream-name . "amazonka-discovery") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-discovery

(define-public haskell-8.4-amazonka-dms
  (package
    (name "haskell-8.4-amazonka-dms")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-dms/amazonka-dms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ww0l7xi9ia6danlm4mdh5d3y38jv56g4dd1jw588hkn5bf1jpx7"))))
    (properties `((upstream-name . "amazonka-dms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-dms

(define-public haskell-8.4-amazonka-ds
  (package
    (name "haskell-8.4-amazonka-ds")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-ds/amazonka-ds-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12fkcqhckmrkmh5prfrjdc6dq5cm0g3wsm9pz60jzrmf724k7yh6"))))
    (properties `((upstream-name . "amazonka-ds") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-ds

(define-public haskell-8.4-amazonka-dynamodb
  (package
    (name "haskell-8.4-amazonka-dynamodb")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-dynamodb/amazonka-dynamodb-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gwsgyjvqzyhzkfn73854s6hr55va6l6a3m074ajz5wqz3j4xx9k"))))
    (properties `((upstream-name . "amazonka-dynamodb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-dynamodb

(define-public haskell-8.4-amazonka-dynamodb-streams
  (package
    (name "haskell-8.4-amazonka-dynamodb-streams")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-dynamodb-streams/amazonka-dynamodb-streams-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zz590xdpjabic8m7if6a4pcfrdafqr66wcxnwn2758fyzfk5y5k"))))
    (properties `((upstream-name . "amazonka-dynamodb-streams")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-dynamodb-streams

(define-public haskell-8.4-amazonka-ec2
  (package
    (name "haskell-8.4-amazonka-ec2")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-ec2/amazonka-ec2-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1k2mm5ypkwr07iwc76b15q823sv5rq5jxfz4r7qckal8w72c4892"))))
    (properties `((upstream-name . "amazonka-ec2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Elastic Compute Cloud SDK.")
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

See \"Network.AWS.EC2\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.4-amazonka-ec2

(define-public haskell-8.4-amazonka-ecr
  (package
    (name "haskell-8.4-amazonka-ecr")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-ecr/amazonka-ecr-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0l44xxify9k87imc09wvn56xnmvgf3n2ydvs4s3iph6lnka8l222"))))
    (properties `((upstream-name . "amazonka-ecr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-ecr

(define-public haskell-8.4-amazonka-ecs
  (package
    (name "haskell-8.4-amazonka-ecs")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-ecs/amazonka-ecs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gyy9iglv8744p3h249j0mdd5n4f756ci2048frpb51mx2mkb59h"))))
    (properties `((upstream-name . "amazonka-ecs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-ecs

(define-public haskell-8.4-amazonka-efs
  (package
    (name "haskell-8.4-amazonka-efs")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-efs/amazonka-efs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fxg86zzjyv5lvlmn2f2iph5rwcfmwk740i2jjs3xmh68hlmd116"))))
    (properties `((upstream-name . "amazonka-efs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-efs

(define-public haskell-8.4-amazonka-elasticache
  (package
    (name "haskell-8.4-amazonka-elasticache")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-elasticache/amazonka-elasticache-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s9rfrv128dsir497g9r6pp68xgfl34rshlcfgyk95fqw8n4m9z4"))))
    (properties `((upstream-name . "amazonka-elasticache") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-elasticache

(define-public haskell-8.4-amazonka-elasticbeanstalk
  (package
    (name "haskell-8.4-amazonka-elasticbeanstalk")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-elasticbeanstalk/amazonka-elasticbeanstalk-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0siqna1fcxwpbdvjicyv09l2wcfddda8c47nmdd70ns7cdbhdp61"))))
    (properties `((upstream-name . "amazonka-elasticbeanstalk")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-elasticbeanstalk

(define-public haskell-8.4-amazonka-elasticsearch
  (package
    (name "haskell-8.4-amazonka-elasticsearch")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-elasticsearch/amazonka-elasticsearch-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10rhbwic050ncinjklllygg3jnv169smkwdcr2xmxv3g3jpgqa9l"))))
    (properties `((upstream-name . "amazonka-elasticsearch") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-elasticsearch

(define-public haskell-8.4-amazonka-elastictranscoder
  (package
    (name "haskell-8.4-amazonka-elastictranscoder")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-elastictranscoder/amazonka-elastictranscoder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02n1yg4vks5sc8mqm5prz2clgf7pyn9yf98mx1h1mk89gv4sf4mb"))))
    (properties `((upstream-name . "amazonka-elastictranscoder")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-elastictranscoder

(define-public haskell-8.4-amazonka-elb
  (package
    (name "haskell-8.4-amazonka-elb")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-elb/amazonka-elb-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kbyz4czsfjfgfw49wqrkkk2ma4k333kd5xfcz9gf9ick8079jar"))))
    (properties `((upstream-name . "amazonka-elb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-elb

(define-public haskell-8.4-amazonka-elbv2
  (package
    (name "haskell-8.4-amazonka-elbv2")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-elbv2/amazonka-elbv2-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j92qr8sfsidax606pyzv1zn08c2rcij0853c5raq4xn55gd6lra"))))
    (properties `((upstream-name . "amazonka-elbv2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-elbv2

(define-public haskell-8.4-amazonka-emr
  (package
    (name "haskell-8.4-amazonka-emr")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-emr/amazonka-emr-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kvpv655dk619lq2ahkljxdhscj22lyci3z9ybpsvzk1xrc79879"))))
    (properties `((upstream-name . "amazonka-emr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-emr

(define-public haskell-8.4-amazonka-gamelift
  (package
    (name "haskell-8.4-amazonka-gamelift")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-gamelift/amazonka-gamelift-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1z2zfzpag9v8mb6wa479hfkhdqf84x5jyc6pl302vl688d5bvkgb"))))
    (properties `((upstream-name . "amazonka-gamelift") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-gamelift

(define-public haskell-8.4-amazonka-glacier
  (package
    (name "haskell-8.4-amazonka-glacier")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-glacier/amazonka-glacier-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04zrw3rqly4qm5hkwddr0p73xyjx5vm5xsvcnmabmpxx3x6l61sk"))))
    (properties `((upstream-name . "amazonka-glacier") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-glacier

(define-public haskell-8.4-amazonka-health
  (package
    (name "haskell-8.4-amazonka-health")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-health/amazonka-health-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yx6bdhkgf6fgrc8i6abbpwnxlzqdnmw6pqan02gz679jf7b25n2"))))
    (properties `((upstream-name . "amazonka-health") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-health

(define-public haskell-8.4-amazonka-iam
  (package
    (name "haskell-8.4-amazonka-iam")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-iam/amazonka-iam-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pchhnrfvry7v6gwn1rxx0hyd8xd2hdlzfcm1d02hgawg4x82dd3"))))
    (properties `((upstream-name . "amazonka-iam") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-iam

(define-public haskell-8.4-amazonka-importexport
  (package
    (name "haskell-8.4-amazonka-importexport")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-importexport/amazonka-importexport-"
                    version ".tar.gz"))
              (sha256
               (base32
                "016dgp4s2669jd3db1f8ngynhjrkr77l981rmf3wc92fsyyg4l89"))))
    (properties `((upstream-name . "amazonka-importexport") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-importexport

(define-public haskell-8.4-amazonka-inspector
  (package
    (name "haskell-8.4-amazonka-inspector")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-inspector/amazonka-inspector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gp1rkrm2xv13cdn3shr5824g942yn2dwqvw3ln78fz671g01vxw"))))
    (properties `((upstream-name . "amazonka-inspector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-inspector

(define-public haskell-8.4-amazonka-iot
  (package
    (name "haskell-8.4-amazonka-iot")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-iot/amazonka-iot-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1l16ib9p6qzs4079a02hg852f0g79yv75k0ky3jj3l3vr5lj22qq"))))
    (properties `((upstream-name . "amazonka-iot") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-iot

(define-public haskell-8.4-amazonka-iot-dataplane
  (package
    (name "haskell-8.4-amazonka-iot-dataplane")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-iot-dataplane/amazonka-iot-dataplane-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hl7m3s6ck01k5h00q414sc3yzpr41gamj7pfr7wr97cwv03prmf"))))
    (properties `((upstream-name . "amazonka-iot-dataplane") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-iot-dataplane

(define-public haskell-8.4-amazonka-kinesis
  (package
    (name "haskell-8.4-amazonka-kinesis")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-kinesis/amazonka-kinesis-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0f1gwa92pcdrb1ijxinhq8vjspgigk5kcr37hnj6mzs6kv9437jl"))))
    (properties `((upstream-name . "amazonka-kinesis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-kinesis

(define-public haskell-8.4-amazonka-kinesis-analytics
  (package
    (name "haskell-8.4-amazonka-kinesis-analytics")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-kinesis-analytics/amazonka-kinesis-analytics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vl5yski9fqpwv9f4aq3i2zqkjgkmn3lnpm3phg59x3fb4w59yvy"))))
    (properties `((upstream-name . "amazonka-kinesis-analytics")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-kinesis-analytics

(define-public haskell-8.4-amazonka-kinesis-firehose
  (package
    (name "haskell-8.4-amazonka-kinesis-firehose")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-kinesis-firehose/amazonka-kinesis-firehose-"
                    version ".tar.gz"))
              (sha256
               (base32
                "172ljz8ihcb8cx800xy0wpicdsqip52ng2ig1clk3h48r36la18j"))))
    (properties `((upstream-name . "amazonka-kinesis-firehose")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-kinesis-firehose

(define-public haskell-8.4-amazonka-kms
  (package
    (name "haskell-8.4-amazonka-kms")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-kms/amazonka-kms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16cfkvl7n7drx0z6fr5j88lyg9rkg3bfly2zb2jx155lhcsk79bs"))))
    (properties `((upstream-name . "amazonka-kms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-kms

(define-public haskell-8.4-amazonka-lambda
  (package
    (name "haskell-8.4-amazonka-lambda")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-lambda/amazonka-lambda-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01lvr775kakpbr2p7126nw3022dyp5p41s98asf9fwkmda4jd5k4"))))
    (properties `((upstream-name . "amazonka-lambda") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-lambda

(define-public haskell-8.4-amazonka-lightsail
  (package
    (name "haskell-8.4-amazonka-lightsail")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-lightsail/amazonka-lightsail-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sxcc0hbvngxxjg0mg2rb3wkdax8123qbak8k3z0h3igzxm4q6vl"))))
    (properties `((upstream-name . "amazonka-lightsail") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-lightsail

(define-public haskell-8.4-amazonka-marketplace-analytics
  (package
    (name "haskell-8.4-amazonka-marketplace-analytics")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-marketplace-analytics/amazonka-marketplace-analytics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sjxrnzcrzgd75kd841r9hadpg9zqmxx4g5hqqqm2yy1x6q0sv2d"))))
    (properties `((upstream-name . "amazonka-marketplace-analytics")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-marketplace-analytics

(define-public haskell-8.4-amazonka-marketplace-metering
  (package
    (name "haskell-8.4-amazonka-marketplace-metering")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-marketplace-metering/amazonka-marketplace-metering-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xszzcmaz2d5h8cbdqaar1f3am35h31k5w1wihy6fyf5r95f2bb7"))))
    (properties `((upstream-name . "amazonka-marketplace-metering")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-marketplace-metering

(define-public haskell-8.4-amazonka-ml
  (package
    (name "haskell-8.4-amazonka-ml")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-ml/amazonka-ml-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zkdal599npbylic9sgvzpfss15ri9k61pp9xwhafbm7f5xjvhcx"))))
    (properties `((upstream-name . "amazonka-ml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-ml

(define-public haskell-8.4-amazonka-opsworks
  (package
    (name "haskell-8.4-amazonka-opsworks")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-opsworks/amazonka-opsworks-"
                    version ".tar.gz"))
              (sha256
               (base32
                "066rfarz6cbdcal6l5qn11pi3n2byzxbb6013crmdicfkcrp4hws"))))
    (properties `((upstream-name . "amazonka-opsworks") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-opsworks

(define-public haskell-8.4-amazonka-opsworks-cm
  (package
    (name "haskell-8.4-amazonka-opsworks-cm")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-opsworks-cm/amazonka-opsworks-cm-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1x28lxvjz6sdkzlghw94h97yw8ywypz0v3d0rqazvzvhbxsrp7jg"))))
    (properties `((upstream-name . "amazonka-opsworks-cm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-opsworks-cm

(define-public haskell-8.4-amazonka-pinpoint
  (package
    (name "haskell-8.4-amazonka-pinpoint")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-pinpoint/amazonka-pinpoint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01dh2vwigisbx4jrpaq76l1463v7qy1wx6brd1d7sdczpnmcvy5h"))))
    (properties `((upstream-name . "amazonka-pinpoint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-pinpoint

(define-public haskell-8.4-amazonka-polly
  (package
    (name "haskell-8.4-amazonka-polly")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-polly/amazonka-polly-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1l4ajm7ca0s4xwzs9brdhbjz1mhw8smmy7wzddhrxjr84vxdqgkp"))))
    (properties `((upstream-name . "amazonka-polly") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-polly

(define-public haskell-8.4-amazonka-rds
  (package
    (name "haskell-8.4-amazonka-rds")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-rds/amazonka-rds-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kf23dgv1zirxp35g1czlfnzq9ccwr1a67yvqnl3nfvpacy634y7"))))
    (properties `((upstream-name . "amazonka-rds") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-rds

(define-public haskell-8.4-amazonka-redshift
  (package
    (name "haskell-8.4-amazonka-redshift")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-redshift/amazonka-redshift-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0adkj055f7kb1klxnvl9n1p8l504jgcpdw1ibgc2xm786rlvjsj2"))))
    (properties `((upstream-name . "amazonka-redshift") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-redshift

(define-public haskell-8.4-amazonka-rekognition
  (package
    (name "haskell-8.4-amazonka-rekognition")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-rekognition/amazonka-rekognition-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1a1jynpr7bkzd5rs5p4781wrvnf1wivlzfjmn53jfdp545q44bj6"))))
    (properties `((upstream-name . "amazonka-rekognition") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-rekognition

(define-public haskell-8.4-amazonka-route53
  (package
    (name "haskell-8.4-amazonka-route53")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-route53/amazonka-route53-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05v3m8fcpxbhhsh8nm0m35c357cx94z6xn36c75jhjy4v4xpgvv8"))))
    (properties `((upstream-name . "amazonka-route53") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-route53

(define-public haskell-8.4-amazonka-route53-domains
  (package
    (name "haskell-8.4-amazonka-route53-domains")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-route53-domains/amazonka-route53-domains-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sm5w4r6kb8fl3wikp9n2hda3bxwr83397s729s3dispbwpzwnzp"))))
    (properties `((upstream-name . "amazonka-route53-domains") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-route53-domains

(define-public haskell-8.4-amazonka-s3
  (package
    (name "haskell-8.4-amazonka-s3")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-s3/amazonka-s3-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0irz8vyklapjy3w3qasidpvq4hk2qwkmhrnrd23sf4yzs2xqx8gc"))))
    (properties `((upstream-name . "amazonka-s3") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-s3

(define-public haskell-8.4-amazonka-sdb
  (package
    (name "haskell-8.4-amazonka-sdb")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-sdb/amazonka-sdb-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zdxbwzkvj1fi9lay3zyqxbb2vzviwc6h2gfmjh7invg68hqphmr"))))
    (properties `((upstream-name . "amazonka-sdb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-sdb

(define-public haskell-8.4-amazonka-servicecatalog
  (package
    (name "haskell-8.4-amazonka-servicecatalog")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-servicecatalog/amazonka-servicecatalog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0r7j8v5mn048hqlp2h2mv7lyld457k22i95mdriyqhrb3cxxzy0i"))))
    (properties `((upstream-name . "amazonka-servicecatalog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-servicecatalog

(define-public haskell-8.4-amazonka-ses
  (package
    (name "haskell-8.4-amazonka-ses")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-ses/amazonka-ses-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00mxab03vhmmb0d5xfa00x4c0qz0vkfnfap1lz8kzbps73kk53bp"))))
    (properties `((upstream-name . "amazonka-ses") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-ses

(define-public haskell-8.4-amazonka-shield
  (package
    (name "haskell-8.4-amazonka-shield")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-shield/amazonka-shield-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1x7b8wvv50iqvdxydpnmvncz3yx3026vq4f9rg1pnqas5ddsi0xr"))))
    (properties `((upstream-name . "amazonka-shield") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-shield

(define-public haskell-8.4-amazonka-sms
  (package
    (name "haskell-8.4-amazonka-sms")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-sms/amazonka-sms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zx4rpq5k18lqv5x55hf30s30g8x6yrsbv55h13n1mw856fkakgw"))))
    (properties `((upstream-name . "amazonka-sms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-sms

(define-public haskell-8.4-amazonka-snowball
  (package
    (name "haskell-8.4-amazonka-snowball")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-snowball/amazonka-snowball-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09gf0balrk7hzmg9ynasz4jf3jywj57lyp0wiggixfh5jbz30jsk"))))
    (properties `((upstream-name . "amazonka-snowball") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-snowball

(define-public haskell-8.4-amazonka-sns
  (package
    (name "haskell-8.4-amazonka-sns")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-sns/amazonka-sns-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wvmwca48rqls0szbvdvfr796iq8i3kp5l8l7dcysn8k0d4ba5hx"))))
    (properties `((upstream-name . "amazonka-sns") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-sns

(define-public haskell-8.4-amazonka-sqs
  (package
    (name "haskell-8.4-amazonka-sqs")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-sqs/amazonka-sqs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cq4j16f12z4lzsi9clh3pzcad7zfpcg5z8af2ap0w18gmq3hf3l"))))
    (properties `((upstream-name . "amazonka-sqs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-sqs

(define-public haskell-8.4-amazonka-ssm
  (package
    (name "haskell-8.4-amazonka-ssm")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-ssm/amazonka-ssm-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06kh3id8l24rq5wvjakfz1w62fr3cyzl2axdsp7hcb8afr4q488i"))))
    (properties `((upstream-name . "amazonka-ssm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-ssm

(define-public haskell-8.4-amazonka-stepfunctions
  (package
    (name "haskell-8.4-amazonka-stepfunctions")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-stepfunctions/amazonka-stepfunctions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gxci7x94jc7187wv8mrd8g8vy0ns9r6b8l0w5jxgmr8bma8xb4r"))))
    (properties `((upstream-name . "amazonka-stepfunctions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-stepfunctions

(define-public haskell-8.4-amazonka-storagegateway
  (package
    (name "haskell-8.4-amazonka-storagegateway")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-storagegateway/amazonka-storagegateway-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gdl905h9d5g20npx4ihc0fajgcqn5vjnqiss7mhfcgha1k3f1kg"))))
    (properties `((upstream-name . "amazonka-storagegateway") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-storagegateway

(define-public haskell-8.4-amazonka-sts
  (package
    (name "haskell-8.4-amazonka-sts")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-sts/amazonka-sts-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04lsm5wpzrykkq94fcrkj4cwc5slzcwmzqvsgw9mnyprsrknn19n"))))
    (properties `((upstream-name . "amazonka-sts") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-sts

(define-public haskell-8.4-amazonka-support
  (package
    (name "haskell-8.4-amazonka-support")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-support/amazonka-support-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sakd3r8g9r0ms7mrnvzh679i26pamh1ranpp7a1fa2zjzpllhvz"))))
    (properties `((upstream-name . "amazonka-support") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-support

(define-public haskell-8.4-amazonka-swf
  (package
    (name "haskell-8.4-amazonka-swf")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-swf/amazonka-swf-"
                    version ".tar.gz"))
              (sha256
               (base32
                "145aali4pqzra7r34g6ykbizwrqnapj6mwadqr31ylf1m5xl63hz"))))
    (properties `((upstream-name . "amazonka-swf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-swf

(define-public haskell-8.4-amazonka-waf
  (package
    (name "haskell-8.4-amazonka-waf")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-waf/amazonka-waf-"
                    version ".tar.gz"))
              (sha256
               (base32
                "105rpfal53qyjavknpkpiglndr8cgcsybl8iaw7zpn725g2rw2w8"))))
    (properties `((upstream-name . "amazonka-waf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-waf

(define-public haskell-8.4-amazonka-workspaces
  (package
    (name "haskell-8.4-amazonka-workspaces")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-workspaces/amazonka-workspaces-"
                    version ".tar.gz"))
              (sha256
               (base32
                "110wr4ah80lz9yjxsx3yng2mx5r2z361rs4k6sr4v6jiij6k9ksn"))))
    (properties `((upstream-name . "amazonka-workspaces") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-workspaces

(define-public haskell-8.4-amazonka-xray
  (package
    (name "haskell-8.4-amazonka-xray")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-xray/amazonka-xray-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1w4ham3rzkyz8ns5xrnclyw0gvaswm6kyxjrfz6h19hs6rsh0lcg"))))
    (properties `((upstream-name . "amazonka-xray") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka-test)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-amazonka-xray

(define-public haskell-8.4-cachix-api
  (package
    (name "haskell-8.4-cachix-api")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cachix-api/cachix-api-" version
                    ".tar.gz"))
              (sha256
               (base32
                "00j5m3pqnlwwvbj4669lpng6awsn5xzz67c6qq5dmc5q7ii2vzdf"))))
    (properties `((upstream-name . "cachix-api") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-amazonka)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-cookie)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-http-api-data)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-http-media)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-protolude)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-servant-auth)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-servant-auth-server)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-servant-auth-swagger)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-servant-streaming)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-servant-swagger)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-servant-swagger-ui-core)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-string-conv)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-swagger2)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/cachix/cachix#readme")
    (synopsis "Servant HTTP API specification for https://cachix.org")
    (description "")
    (license license:asl2.0)))

haskell-8.4-cachix-api

(define-public haskell-8.4-diagrams-canvas
  (package
    (name "haskell-8.4-diagrams-canvas")
    (version "1.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-canvas/diagrams-canvas-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ihmv42412d8dk3s894zd70xd386wrk9ycxkid19barry1vz5plj"))))
    (properties `((upstream-name . "diagrams-canvas") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0yajv3bnzhqwr673rch0wd9vhc4kcfdpdw5p5a2x1xbrpzghksac")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-NumInstances)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-blank-canvas)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cmdargs)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-diagrams-core)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-diagrams-lib)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-statestack)))
    (propagated-inputs (list (@ (gnu packages curl) curl)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://diagrams.github.io/")
    (synopsis "HTML5 canvas backend for diagrams drawing EDSL")
    (description "This package provides a modular backend for rendering
diagrams created with the diagrams EDSL using an
HTML5 canvas.")
    (license license:bsd-3)))

haskell-8.4-diagrams-canvas

(define-public haskell-8.4-gi-gdkpixbuf
  (package
    (name "haskell-8.4-gi-gdkpixbuf")
    (version "2.0.16")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-gdkpixbuf/gi-gdkpixbuf-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vqnskshbfp9nsgyfg4pifrh007rb7k176ci8niik96kxh95zfzx"))))
    (properties `((upstream-name . "gi-gdkpixbuf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) gdk-pixbuf)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-gi-gio)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-gi-glib)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-gi-gobject)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-haskell-gi)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "GdkPixbuf bindings")
    (description "Bindings for GdkPixbuf, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.4-gi-gdkpixbuf

(define-public haskell-8.4-gym-http-api
  (package
    (name "haskell-8.4-gym-http-api")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gym-http-api/gym-http-api-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0469n34s0p313nwnw8zpg1n9aaf6sqn5h7yl0jhc6yydc6rdjgrc"))))
    (properties `((upstream-name . "gym-http-api") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-servant-client)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-servant-lucid)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/stites/gym-http-api#readme")
    (synopsis "REST client to the gym-http-api project")
    (description
     "This library provides a REST client to the gym open-source library. gym-http-api itself provides a <https://github.com/openai/gym-http-api/blob/master/gym_http_server.py python-based REST> server to the gym open-source library, allowing development in languages other than python.

Note that the <https://github.com/openai/gym-http-api/ openai/gym-http-api> is a monorepo of all language-clients. This hackage library tracks <https://github.com/stites/gym-http-api/ stites/gym-http-api> which is the actively-maintained haskell fork.")
    (license license:expat)))

haskell-8.4-gym-http-api

(define-public haskell-8.4-hakyll
  (package
    (name "haskell-8.4-hakyll")
    (version "4.12.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hakyll/hakyll-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0kflvb86maqn15h0dh2r2p415q9k351gl9mpb3vnbmfn0nhvg1x1"))))
    (properties `((upstream-name . "hakyll") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fpreviewserver" "-fwatchserver" "-fcheckexternal" "-f-buildwebsite" "-fusepandoc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-blaze-markup)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-cryptohash)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-file-embed)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-fsnotify)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-http-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-lrucache)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-pandoc)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-pandoc-citeproc)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-tagsoup)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-wai-app-static)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://jaspervdj.be/hakyll")
    (synopsis "A static website compiler library")
    (description
     "Hakyll is a static website compiler library. It provides you with the tools to
create a simple or advanced static website using a Haskell DSL and formats
such as markdown or RST. You can find more information, including a tutorial,
on the website:

* <http://jaspervdj.be/hakyll>

If you seek assistance, there's:

* A google group: <http://groups.google.com/group/hakyll>

* An IRC channel, @@#hakyll@@ on freenode

Additionally, there's the Haddock documentation in the different modules,
meant as a reference.")
    (license license:bsd-3)))

haskell-8.4-hakyll

(define-public haskell-8.4-haskell-tools-builtin-refactorings
  (package
    (name "haskell-8.4-haskell-tools-builtin-refactorings")
    (version "1.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-tools-builtin-refactorings/haskell-tools-builtin-refactorings-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wm7c63cw4izg6vlrm2xdyrfvf4cwcqs2n144y8k0zf442xaq5l9"))))
    (properties `((upstream-name . "haskell-tools-builtin-refactorings")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-classyplate)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-ghc-paths)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-haskell-tools-ast)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-haskell-tools-backend-ghc)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-haskell-tools-prettyprint)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-haskell-tools-refactor)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-haskell-tools-rewrite)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-minisat-solver)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-portable-lines)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-references)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-uniplate)))
    (home-page "https://github.com/haskell-tools/haskell-tools")
    (synopsis "Refactoring Tool for Haskell")
    (description
     "Contains a set of refactorings based on the Haskell-Tools framework to easily transform a Haskell program. For the descriptions of the implemented refactorings, see the homepage.")
    (license license:bsd-3)))

haskell-8.4-haskell-tools-builtin-refactorings

(define-public haskell-8.4-miso
  (package
    (name "haskell-8.4-miso")
    (version "0.21.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/miso/miso-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "061bjvxcs6psh8hj947p4jm9ki9ngrwvn23szvk8i3x4xd87jbfm"))))
    (properties `((upstream-name . "miso") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-examples" "-f-tests" "-f-jsaddle")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-http-api-data)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-lucid)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-servant-lucid)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/dmjio/miso")
    (synopsis "A tasty Haskell front-end framework")
    (description
     "Miso is a small \"isomorphic\" Haskell front-end framework featuring a virtual-dom, diffing / patching algorithm, event delegation, event batching, SVG, Server-sent events, Websockets, type-safe servant-style routing and an extensible Subscription-based subsystem. Inspired by Elm, Redux and Bobril. Miso is pure by default, but side effects (like XHR) can be introduced into the system via the Effect data type. Miso makes heavy use of the GHCJS FFI and therefore has minimal dependencies.")
    (license license:bsd-3)))

haskell-8.4-miso

(define-public haskell-8.4-servant-auth-client
  (package
    (name "haskell-8.4-servant-auth-client")
    (version "0.3.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-auth-client/servant-auth-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pxkwpg1in3anamfvrp8gd7iihng0ikhl4k7ymz5d75ma1qwa2j9"))))
    (properties `((upstream-name . "servant-auth-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fservant-client-core")
       #:cabal-revision
       ("3" "1kzyqd9hg7xld5s8qpm76l9ym48z81j6ycdwp3lb0f1p2d3aagcd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-jose)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-servant-auth)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-servant-auth-server)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-servant-client)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-servant-client-core)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-servant-server)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/haskell-servant/servant-auth#readme")
    (synopsis "servant-client/servant-auth compatibility")
    (description
     "This package provides instances that allow generating clients from
<https://hackage.haskell.org/package/servant servant>
APIs that use
<https://hackage.haskell.org/package/servant-auth servant-auth's> @@Auth@@ combinator.

For a quick overview of the usage, see the <http://github.com/haskell-servant/servant-auth#readme README>.")
    (license license:bsd-3)))

haskell-8.4-servant-auth-client

(define-public haskell-8.4-servant-streaming-client
  (package
    (name "haskell-8.4-servant-streaming-client")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-streaming-client/servant-streaming-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h3haws61m064zziyzn03n0450swffmr46gsv9k88lrpz8lv5qj2"))))
    (properties `((upstream-name . "servant-streaming-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "07xkgnhi8aspnqms5gx67ssw5m595gda8yqypdg2q59wwc6ib68d")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-http-media)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-servant-client)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-servant-client-core)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-servant-server)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-servant-streaming)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-servant-streaming-server)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-streaming)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/plow-technologies/servant-streaming#readme")
    (synopsis "Client instances for the 'servant-streaming' package.")
    (description
     "This package defines instances that allow using the 'StreamBody' and 'StreamResponse' combinators in 'servant' clients.")
    (license license:bsd-3)))

haskell-8.4-servant-streaming-client

(define-public haskell-8.4-servant-swagger-ui
  (package
    (name "haskell-8.4-servant-swagger-ui")
    (version "0.3.0.3.13.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-swagger-ui/servant-swagger-ui-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0llkcag9bnhvni6ddar966i0pwql93s5icvw6pxa9ra5v14v7p5n"))))
    (properties `((upstream-name . "servant-swagger-ui") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0sz08w56f7p74saass6xdzmbpyk78hpa9d79kkd2nclwinajpkgr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-file-embed-lzma)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-servant-server)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-servant-swagger-ui-core)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-swagger2)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) lzip)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-servant/servant-swagger-ui")
    (synopsis "Servant swagger ui")
    (description
     "Provide embedded swagger UI for servant and swagger (i.e. servant-swagger)")
    (license license:bsd-3)))

haskell-8.4-servant-swagger-ui

(define-public haskell-8.4-yesod-form
  (package
    (name "haskell-8.4-yesod-form")
    (version "1.6.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-form/yesod-form-" version
                    ".tar.gz"))
              (sha256
               (base32
                "15wvgrkqp57wrh8xv1ix86navy6llvagwp393w4b6azv758dims0"))))
    (properties `((upstream-name . "yesod-form") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-blaze-markup)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-byteable)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-email-validate)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-persistent)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-shakespeare)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-xss-sanitize)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-yesod-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-yesod-persistent)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Form handling support for Yesod Web Framework")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-form>.  Third-party packages which you can find useful: <http://hackage.haskell.org/package/yesod-form-richtext yesod-form-richtext> - richtext form fields (currntly it provides only Summernote support).")
    (license license:expat)))

haskell-8.4-yesod-form

