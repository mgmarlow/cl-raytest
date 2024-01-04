(asdf:load-system :cffi)
(asdf:load-system :cffi-libffi)

(load "package.lisp")
(load "raylib.lisp")
(load "main.lisp")

(raytest::main)
