#!/usr/local/bin/clisp

(defun reverse-list (xs)
  (let* ((i 0)
         (size (- (length xs) 1))
         (middle (round (/ size 2))))
    (loop while (<= i middle)
          do (let ((temp (nth i xs))
                   (j (- size i)))
              (setf (nth i xs) (nth j xs))
              (setf (nth j xs) temp)
              (setf i (+ i 1))))
    xs))

(setf in *args*)
(pprint in)

(setf out (reverse-list in))
(pprint out)
