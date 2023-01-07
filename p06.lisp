#!/usr/local/bin/clisp

(defun is-palindrome (xs)
  (let* ((r t)
         (i 0)
         (size (1- (length xs)))
         (middle (/ size 2)))
    (loop while (<= i middle)
          do (let ((j (- size i)))
               (setf r (string-equal (nth i xs) (nth j xs)))
               (if (null r)
                 (return-from nil)
                 (setf i (1+ i)))))
    r))

(setf in *args*)
(pprint in)

(setf out (is-palindrome in))
(pprint out)
