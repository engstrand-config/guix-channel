(define-module (engstrand packages engstrand-dsblocks)
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

(define-public engstrand-dsblocks
 (package
    (inherit slstatus)
    (name "engstrand-dsblocks")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
          (url "https://github.com/engstrand-config/dsblocks.git")
          (commit "c94507553586ed6f542804d32c4e801c386c529f")))
	(sha256
	  (base32 "06yaf1jbbvmj5qkg6h9a75fyvxvavk5nry3ri38a8f3m9vvxbdq2"))))
      (arguments
	`(#:tests? #f                      ; no tests
	  #:make-flags
	  (list (string-append "CC=" ,(cc-for-target))
	     (string-append "PREFIX=" %output)
             (string-append "FREETYPEINC="
                            (assoc-ref %build-inputs "freetype")
                            "/include/freetype2"))
	  #:phases
	  (modify-phases %standard-phases (delete 'configure))))
    (inputs
	`(("x11" ,libx11)
	  ("libxft" ,libxft)
       	  ("libxinerama" ,libxinerama)
	  ("libmpdclient" ,libmpdclient)
	  ("gio-2.0" ,glib)))
    (home-page "https://github.com/engstrand-config/dsblocks")
    (description "Custom statusbar for dwm with blocks written in C. Based on dwmblocks")
    (synopsis "Engstrand dsblocks")))
