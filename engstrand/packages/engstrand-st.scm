(define-module (engstrand packages engstrand-st)
    #:use-module (gnu packages suckless)
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
		    (base32 "1ny8di1s932r5am5scbhgp89fqvgri6q8f55kqg7v3nhf5cvim8s"))))
	(home-page "https://github.com/engstrand-config/st")
	(synopsis "Engstrand st")))

