(defun comp (a b)
  (when (< a b)
    (format t "Comparing ~D and ~D~%" a b)
    (format t "~D is smaller than ~D" a b)))

(defun neg-comp (a b)
  (unless (<  a b)
    (format t "Comparing ~D and ~D~%" a b)
    (format t "~D is not smaller than ~D" a b)))

(defun choose (a)
  (cond ((= a 1) (format t "Choose 1~%"))
        ((= a 1) (format t "Choose 2~%"))
        (t (format t "Choose ~D" a))))

(defun print-list (l)
  (dolist (e l)
    (print e)
    (if (evenp e) (return))))

(defun print-times (times)
  (dotimes (i times)
    (print i)))

(defun times-table ()
  (dotimes (x 20)
    (dotimes (y 20)
      (format t "~4d" (* (1+ x) (1+ y))))
    (format t "~%")))

(defun fibonacci (m)
  (do ((n 0 (1+ n))
       (cur 0 next)
       (next 1 (+ cur next)))
      ((= m n) cur)))

(defun do-times (n)
  (do ((i 0 (1+ i)))
      ((>= i n))
    (print i)))

(defun fibonacci-2 (m)
  ;; This function is different from fibonacci function as 'print' is in statement form
  ;; rather than in result form. 
  (do ((n 0 (1+ n))
       (cur 0 next)
       (next 1 (+ cur next)))
      ((< m n))
    (if (= m n) (return cur))))

(defun generate-list (n)
  (do ((nums nil) (i 1 (1+ i)))
      ((> i n) (nreverse nums))
    (push i nums)))

(defun generate-list-2 (n)
  (loop for x from 1 to n collecting x))

(defun sum (n)
  (loop for x from 1 to n summing (expt x 2)))

(defun count-vowels (str)
  (loop for x across str counting (find x "aeiou")))

(defun fibonacci-3 (n)
  (loop for i below n
        and a = 0 then b
        and b = 1 then (+ b a)
        finally (return a)))
