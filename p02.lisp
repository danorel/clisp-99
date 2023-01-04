#!/usr/local/bin/clisp

(defun my-last-box (xs)
  (if (null xs)
    nil
    (let ((li (- (length xs) 1)))
     (values (nth (- li 1) xs) (nth li xs)))))

(setf in *args*)
(pprint in)

(setf out (multiple-value-bind (first second)
  (my-last-box in)
  (list first second)))
(pprint out)
