(asdf:defsystem "game"
  :version "0.1.0"
  :depends-on (:raylib)
  :serial t
  :components ((:file "package")
               (:file "main")))

(defsystem "game/executable"
  :build-operation program-op
  :build-pathname "game"
  :entry-point "game::main"
  :depends-on ("game")
  :components nil)
