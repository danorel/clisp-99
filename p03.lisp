#!/usr/local/bin/clisp

(defun element-at (xs i)
  (cond 
    ((null xs) nil)
    ((> i (length xs)) nil)
    (t (elt xs i))))

(setf in *args*)
(pprint in)

(setf i (parse-integer (car in)))
(pprint i)

(setf xs (mapcar 'parse-integer (nthcdr 1 in)))
(pprint xs)

(setf out (element-at xs i))
(pprint out)
