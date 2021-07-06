(define-module (engstrand packages rust-lule)
    #:use-module (guix utils)
    #:use-module (guix packages)
    #:use-module (guix download)
    #:use-module (guix git-download)
    #:use-module (guix build-system cargo)
    #:use-module ((guix licenses) #:prefix license:)
    #:use-module (gnu packages suckless)
    #:use-module (gnu packages xorg))

(define-public rust-lule
    (package
        (name "rust-lule")
        (version "0.1.0")
        (source
	    (origin
	        (method git-fetch)
		(uri (git-reference
		    (url "https://github.com/warpwm/lule.git")
		    (commit "dd429596aa32895bd19ba814951ba1fda65275c3")))
		(sha256
		    (base32 "00xpg5rl618dj593vi3w66vxyb7zgk82kdvf0gq0hycw368mph5i"))))
        (build-system cargo-build-system)
        (home-page "https://github.com/warpwm/lule")
        (synopsis
            "a command line tool for generating colors derived on wallpaper")
        (description
            "a command line tool to set 255 colors on tty's and other places that use ANSI colors")
        (license license:expat)))
