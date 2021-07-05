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
		    (commit "78f90961e12be38f0a58e2fe6076a130ca24d040")))
		(sha256
		  (base32 "07m9rvsny24akyi8gpc6r26cdm4qscqbky5zg07xyk9z5l3808rh"))))
        (build-system copy-build-system)
        (propagated-inputs
                `(("xcape", xcape)
                  ("xmodmap", xmodmap)
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
