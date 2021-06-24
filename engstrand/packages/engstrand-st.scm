(define-module (engstrand packages engstrand-st)
    #:use-module (gnu packages suckless)
    #:use-module (gnu packages gtk)
    #:use-module (guix git-download)
    #:use-module (guix packages)
    #:use-module (engstrand packages))

(define-public engstrand-st
    (package
	(inherit st)
	(name "engstrand-st")
	(source
	    (origin
		(method git-fetch)
		(uri (git-reference
		    (url "https://github.com/engstrand-config/st.git")
		    (commit "0af4782a47cc1b0918bdc41fb61b1a5d358f75f6")))
		(sha256
		    (base32 "097ifphqpb6v9zvmlh8v2nx3kgccwlgkfa1c9l21574kzsx1q1qq"))))
	(home-page "https://github.com/engstrand-config/st")
    	(inputs
     	    `(("libx11" ,libx11)
       	      ("libxft" ,libxft)
	      ("fontconfig" ,fontconfig)
	      ("freetype" ,freetype)
	      ("harfbuzz" ,harfbuzz)))
	(synopsis "Engstrand st")))

