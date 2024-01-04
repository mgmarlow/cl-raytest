(asdf:defsystem "raylib"
  :version "0.1.0"
  :depends-on (:cffi :cffi-libffi)
  :serial t
  :components ((:file "package")
               (:file "raylib")
               (:file "macro")))
