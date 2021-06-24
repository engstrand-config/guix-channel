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
          (commit "a2d8be393b8bbe8fc19a219837427863cb03962b")))
	(sha256
	  (base32 "1fly68qgx9f3kjrrxqw3p4xlvr22qg77l1qn520h0jqp2azjzvb2"))))
    (home-page "https://github.com/engstrand-config/dwm")
    (synopsis "Engstrand dwm")))

