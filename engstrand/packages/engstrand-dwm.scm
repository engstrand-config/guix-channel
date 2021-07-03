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
          (commit "86f0361d987dd50f9d85300172920fe556295c6e")))
	(sha256
	  (base32 "07clvwvwjxs1gwhnmbd3gq6rzyr0cphxk3ibkzmd53xikrighlm9"))))
    (propagated-inputs
         `(("xrdb", xrdb)
           ("maim", maim)
           ("xclip", xclip)
           ("fontawesome", font-awesome)
           ("font-jetbrains-mono", font-jetbrains-mono)
           ("picom", picom)
           ("xwallpaper", xwallpaper)))
    (home-page "https://github.com/engstrand-config/dwm")
    (synopsis "Engstrand dwm")))

