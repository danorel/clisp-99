#!/usr/local/bin/clisp

(defun my-flatten (xs)
  (if (null xs)
    nil
    (let ((ys nil))
      (loop for x in xs
         do (cond ((typep x 'integer) (push x ys))
                  ((typep x 'list) (setf ys (append ys (my-flatten x))))))
      ys)))

(setf out (my-flatten '(1 (2 (3 4)) 5)))
(pprint out)
