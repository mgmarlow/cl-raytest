(in-package :raytest)

(define-foreign-library raylib
  (:darwin "libraylib.dylib")
  (:unix "libraylib.so")
  (:windows "raylib.dll")
  (t (:default "libraylib")))

(use-foreign-library raylib)

(defcfun ("InitWindow" init-window) :void
  (width :int)
  (height :int)
  (title :string))

(defcfun ("SetTargetFPS" set-target-fps) :void
  (fps :int))

(defcfun ("WindowShouldClose" window-should-close) :bool)

(defcfun ("DrawFPS" draw-fps) :void
  (pos-x :int)
  (pos-y :int))

(defcfun ("BeginDrawing" begin-drawing) :void)

(defcfun ("EndDrawing" end-drawing) :void)

(defcstruct color "Color"
  (r :unsigned-char)
  (g :unsigned-char)
  (b :unsigned-char)
  (a :unsigned-char))

(defun make-color (&key r g b a)
  (list 'r r 'g g 'b b 'a a))

(defcfun ("ClearBackground" clear-background) :void
  (color (:struct color)))

(defparameter +white+ '(r 255 g 255 b 255 a 255))
(defparameter +raywhite+ '(r 245 g 245 b 245 a 255))
(defparameter +red+ '(r 255 g 0 b 0 a 255))
(defparameter +black+ '(r 0 g 0 b 0 a 255))
(defparameter +brown+ '(r 165 g 42 b 42 a 255))
(defparameter +blue+ '(r 0 g 121 b 241 a 255))
(defparameter +blank+ '(r 0 g 0 b 0 a 0))
(defparameter +gold+ '(r 255 g 203 b 0 a 255))
(defparameter +lime+ '(r 0 g 158 b 47 a 255))
(defparameter +yellow+ '(r 253 g 249 b 0 a 255))
(defparameter +purple+ '(r 200 g 122 b 255 a 255))

(defmacro with-drawing (&body body)
  `(progn (begin-drawing)
          (unwind-protect (progn ,@body))
          (end-drawing)))
