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
		    (commit "d316edfcb23d1b344416c16b608a340dad001d2d")))
		(sha256
		  (base32 "1xla26v13g9j60wdc0ncg2bnr83cpsi1yxvfny2zpnlynas8d4fs"))))
	(home-page "https://github.com/engstrand-config/dmenu")
	(synopsis "Engstrand dmenu")))

