(define-module (engstrand packages engstrand-dmenu)
    #:use-module (guix utils)
    #:use-module (guix packages)
    #:use-module (guix download)
    #:use-module (guix git-download)
    #:use-module (guix build-system gnu)
    #:use-module (guix build-system glib-or-gtk)
    #:use-module ((guix licenses) #:prefix license:)
    #:use-module (gnu packages)
    #:use-module (gnu packages suckless)
    #:use-module (gnu packages gtk)
    #:use-module (gnu packages base)
    #:use-module (gnu packages compression)
    #:use-module (gnu packages cups)
    #:use-module (gnu packages fonts)
    #:use-module (gnu packages fontutils)
    #:use-module (gnu packages gawk)
    #:use-module (gnu packages gnome)
    #:use-module (gnu packages image)
    #:use-module (gnu packages libbsd)
    #:use-module (gnu packages linux)
    #:use-module (gnu packages mpd)
    #:use-module (gnu packages ncurses)
    #:use-module (gnu packages pkg-config)
    #:use-module (gnu packages webkit)
    #:use-module (gnu packages xorg)
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
	(arguments
	    `(#:validate-runpath? #f ; skip validation
     	      #:tests? #f            ; no tests
       	      #:make-flags
	      (list (string-append "CC=" ,(cc-for-target))
		(string-append "PREFIX=" %output)
		(string-append "FREETYPEINC="
		    (assoc-ref %build-inputs "freetype")
                        "/include/freetype2"))
	      #:phases
	      (modify-phases %standard-phases (delete 'configure))))
        (propagated-inputs
             `(("xrdb", xrdb)
               ("fontawesome", font-awesome)
               ("font-jetbrains-mono", font-jetbrains-mono)))
	(home-page "https://github.com/engstrand-config/dmenu")
	(synopsis "Engstrand dmenu")))

