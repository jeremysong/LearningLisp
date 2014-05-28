(defun foo (x)
  (format t "Parameter: ~a~%" x)
  (let ((x 2))
    (format t "Outer LET: ~a~%" x)
    (let ((x 3))
      (format t "Inner LET: ~a~%" x))
    (format t "Outer LET: ~a~%" x))
  (format t "Parameter: ~a~%" x))

(defparameter *fn* 
  (let ((count 0))
    #'(lambda () (setf count (1+ count)))))

(defparameter *fn-list*
  (let ((count 0))
    (list
      #'(lambda () (incf count))
      #'(lambda () (decf count))
      #'(lambda () count))))

(defvar *count* 0
  "Count of widgets made so far.")

(defparameter *gap-tolerance* 0.001
  "Tolerance to be allowed in widget gaps.")

(defvar *x* 10)

(defun foo1 ()
  (format t "Before assignment~18tX: ~d~%" *x*)
  (setf *x* (+ 1 *x*))
  (format t "After assignment~18tX: ~d~%" *x*))

(defun bar ()
  (foo1)
  (let ((*x* 20)) (foo1))
  (foo1))

(defun foo2 ()
  (let ((y 20))
    (foo y)
    (print y)))

(defun foo3 ()
  (let ((y 20))
    (setf y 10)
    (print y)))
