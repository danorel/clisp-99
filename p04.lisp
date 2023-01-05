#!/usr/local/bin/clisp

(defun size-list (xs)
  (let ((size 0)
        (i 0))
    (loop while (not (eq (nth i xs) nil))
        do (setf i (1+ i))
        do (setf size (1+ size)))
    size))

(setf in *args*)
(pprint in)

(setf out (size-list in)) 
(pprint out)
