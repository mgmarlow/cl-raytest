(defpackage :raylib
  (:use :common-lisp :cffi)
  (:export
   #:init-window
   #:set-target-fps
   #:window-should-close
   #:clear-background
   #:draw-fps
   #:with-drawing
   #:+white+))
