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
          (commit "125e6363ce0680be588807b0b0a3d4c83bfe4d95")))
	(sha256
	  (base32 "0axjsx2ci1c1ww04g5hjzd5mnzb0ncbm9x5dvndrmq5fkv51fxsz"))))
    (home-page "https://github.com/engstrand-config/dwm")
    (synopsis "Engstrand dwm")))

