(define-module (engstrand packages engstrand-utils)
    #:use-module (guix utils)
    #:use-module (guix packages)
    #:use-module (guix download)
    #:use-module (guix git-download)
    #:use-module (guix build-system copy)
    #:use-module ((guix licenses) #:prefix license:)
    #:use-module (gnu packages xorg)
    #:use-module (gnu packages xdisorg)
    #:use-module (engstrand packages))

(define-public engstrand-utils
    (package
	(name "engstrand-utils")
        (version "1.0.0")
        (description "Engstrand utilities and scripts")
	(source
	    (origin
		(method git-fetch)
		(uri (git-reference
		    (url "https://github.com/engstrand-config/utils.git")
		    (commit "86af1ac37eae5ba7d26981afd7c0b31ed1c1875a")))
		(sha256
		  (base32 "1zsc3r40v12hpfdpxsz6ckcj4hz4rsmy9yc931kd4i3pl5zb2frs"))))
        (build-system copy-build-system)
        (propagated-inputs
                `(("xcape", xcape)
                  ("setxkbmap", setxkbmap)
                  ("xprop", xprop)
                  ("xset", xset)
                  ("xclip", xclip)
                  ("xdotool", xdotool)
                  ("maim", maim)
                  ("xwallpaper", xwallpaper)
                  ("xrdb", xrdb)))
	(home-page "https://github.com/engstrand-config/utils")
	(synopsis "Engstrand utilities and scripts")
        (license license:gpl3)))
