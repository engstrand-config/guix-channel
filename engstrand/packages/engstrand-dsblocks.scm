(define-module (engstrand packages engstrand-dsblocks)
    #:use-module (guix download)
    #:use-module (guix git-download)
    #:use-module (gnu packages)
    #:use-module (gnu packages suckless)
    #:use-module (gnu packages mpd)
    #:use-module (gnu packages xorg)
    #:use-module (gnu packages glib)
    #:use-module (engstrand packages))

(define-public engstrand-dsblocks
 (package
    (inherit slstatus)
    (name "engstrand-dsblocks")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
          (url "https://github.com/engstrand-config/dsblocks.git")
          (commit "404d436455f8ab1de058d7c94363556dbdada0d6")))
	(sha256
	  (base32 "1kb9an9bmfg9vms4jkz8z400ydrs72plz6rqaakrrfh3in6msjyc"))))
    (inputs
	`(("libx11" ,libx11)
	  ("libxft" ,libxft)
       	  ("libxinerama" ,libxinerama)
       	  ("freetype" ,freetype)))
    (propagated-inputs
         `(("mpd", mpd)
           ("glib", glib)
           ("engstrand-dwm", engstrand-dwm)
           ("libmpdclient", libmpdclient)))
    (home-page "https://github.com/engstrand-config/dsblocks")
    (description "Custom statusbar for dwm with blocks written in C. Based on dwmblocks")
    (synopsis "Engstrand dsblocks")))
