(define-module (engstrand packages python-pywalfox)
               #:use-module (guix packages)
               #:use-module (guix download)
               #:use-module (guix build-system python)
               #:use-module (guix licenses)
               #:use-module (engstrand packages))

(define* (pypi-uri name version #:optional (extension ".tar.gz"))
  "Return a URI string for the Python package hosted on the Python Package
Index (PyPI) corresponding to NAME and VERSION.  EXTENSION is the file name
extension, such as '.tar.gz'."
  (string-append "https://test-files.pythonhosted.org/packages/source/"
                 (string-take name 1) "/" name "/"
                 name "-" version extension))

(define-public python-pywalfox-dev
  (package
    (name "python-pywalfox-dev")
    (version "2.8.0")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "pywalfox" version))
        (sha256
          (base32
            "1fx32ylxc7mlfic4wc1l2z6gglbhq48lh99q386k0panljsxv6qb"))))
    (build-system python-build-system)
    (home-page
      "https://github.com/frewacom/pywalfox")
    (synopsis
      "Native app used alongside the Pywalfox browser extension")
    (description
      "Native app used alongside the Pywalfox browser extension")
    (license #f)))
