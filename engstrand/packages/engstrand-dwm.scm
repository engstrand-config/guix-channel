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
          (commit "f1111536868415585ecce18a2aaa4d0078b2ca76")))
	(sha256
	  (base32 "01np7ph87fakllwcgkzgvn8yh8d1zkfmywx1502x45qxcq8h4z29"))))
    (home-page "https://github.com/engstrand-config/dwm")
    (synopsis "Engstrand dwm")))

