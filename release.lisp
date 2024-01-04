(asdf:load-system :cffi)
(asdf:load-system :cffi-libffi)

(load "package.lisp")
(load "raylib.lisp")
(load "main.lisp")

(sb-ext:save-lisp-and-die "raytest" :executable t :toplevel #'raytest::main)
