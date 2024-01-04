(in-package :raytest)

(defun update ())

(defun draw ()
  (with-drawing
    (clear-background +white+)
    (draw-fps 5 5)))

(defun main ()
  (init-window 800 450 "raytest")
  (set-target-fps 60)
  (loop until (window-should-close)
        do (progn
             (update)
             (draw))))
