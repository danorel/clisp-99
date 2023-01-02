#!/usr/local/bin/clisp

(defun my-last (xs)
  (if (null xs)
    nil
    (let* ((li (- (length xs) 1)))
      (nth li xs))
    )
  )

(setf in *args*)
(pprint in)

(setf out (my-last in))

(pprint out)
