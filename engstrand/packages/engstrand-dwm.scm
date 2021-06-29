(define-module (engstrand packages engstrand-dwm)
  #:use-module (gnu packages suckless)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module (engstrand packages))

(define-public engstrand-dwm
  (package
    (inherit dwm)
    (name "engstrand-dwm")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
          (url "https://github.com/engstrand-config/dwm.git")
          (commit "2e3cbe39a862c886e64275b3458bb80cc4316044")))
	(sha256
	  (base32 "1ldzz1z002146wy6bvdf6ic7gsrap8v6ak8ikm5chakl6wr8rnyk"))))
    (home-page "https://github.com/engstrand-config/dwm")
    (synopsis "Engstrand dwm")))

