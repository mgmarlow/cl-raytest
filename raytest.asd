(asdf:defsystem "raytest"
  :version "0.1.0"
  :depends-on (:cffi :cffi-libffi)
  :serial t
  :components ((:file "package")
               (:file "raylib")
               (:file "main")))

(defsystem "raytest/executable"
  :build-operation program-op
  :build-pathname "raytest"
  :entry-point "raytest::main"
  :depends-on ("raytest")
  :components nil)
