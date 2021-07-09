(define-module (engstrand packages tuxedo-control-center)
    #:use-module (guix utils)
    #:use-module (guix packages)
    #:use-module (guix download)
    #:use-module (guix git-download)
    #:use-module (guix build-system node)
    #:use-module ((guix licenses) #:prefix license:))

(define-public tuxedo-control-center
    (package
        (name "tuxedo-control-center")
        (version "1.0.14")
        (source (origin
            (method git-fetch)
                (uri
                    (git-reference
                        (url "https://github.com/tuxedocomputers/tuxedo-control-center.git")
                        (commit (string-append "v" version))))
                    (file-name (git-file-name name version))
                        (sha256
                            (base32
                                "00gpsvjbli9f6vj31lbs7flmcz215r91iz6rg1kbzklc3y5k2ifj"))))
        (build-system node-build-system)
        (arguments
            '(#:phases
                (modify-phases %standard-phases
                    (replace 'configure
                        (lambda* (#:key inputs #:allow-other-keys)
                            (let ((npm (string-append (assoc-ref inputs "node") "/bin/npm")))
                                (invoke npm "install")))))))
        (home-page "https://github.com/tuxedocomputers/tuxedo-control-center")
        (synopsis "A tool to help you control performance, energy, fan and comfort settings on TUXEDO laptops")
        (description "The TUXEDO Control Center (short: TCC) gives TUXEDO laptop users full control over their hardware like CPU cores, fan speed and more")
        (license license:gpl2)))
