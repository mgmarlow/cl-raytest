(in-package :raylib)

(defmacro with-drawing (&body body)
  `(progn (begin-drawing)
          (unwind-protect (progn ,@body))
          (end-drawing)))
