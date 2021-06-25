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
          (commit "5f8207102e9039856499636d815b1bea7c7b83d6")))
	(sha256
	  (base32 "0ph40alzkczbbs5wlkv4ph251kf96whmzah8d0hz0whndl99p292"))))
    (home-page "https://github.com/engstrand-config/dwm")
    (synopsis "Engstrand dwm")))

