(define-module (engstrand packages engstrand-dmenu)
    #:use-module (gnu packages suckless)
    #:use-module (guix git-download)
    #:use-module (guix packages)
    #:use-module (engstrand packages))

(define-public engstrand-dmenu
    (package
	(inherit dmenu)
	(name "engstrand-dmenu")
	(source
	    (origin
		(method git-fetch)
		(uri (git-reference
		    (url "https://github.com/engstrand-config/dmenu.git")
		    (commit "eeb3448e0a76d55b75882bd633adf2b6a4ac2412")))
		(sha256
		  (base32 "0lyvrvrllq2k7y21n9hh1dn7vj9iv9682hynvs6kn71lcz0aakga"))))
	(arguments '(#:validate-runpath? #f))
	(home-page "https://github.com/engstrand-config/dmenu")
	(synopsis "Engstrand dmenu")))

