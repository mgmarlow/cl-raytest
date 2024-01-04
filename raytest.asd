(asdf:defsystem #:raytest
  :version "0.1.0"
  :depends-on (:cffi :cffi-libffi)
  :components ((:file "package")
               (:file "raylib")
               (:file "main")))
