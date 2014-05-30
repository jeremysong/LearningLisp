(defun primep (number)
  (when (> number 1)
    (loop for fac from 2 to (isqrt number) never (zerop (mod number fac)))))

(defun next-prime (number)
  (loop for n from number when (primep n) return n))

(defun print-primes (from to)
  (do ((p (next-prime from) (next-prime (1+ p))))
      ((> p to))
    (format t "~d " p)))

(defun print-primes-2 (a b)
  (loop for p from (next-prime a) to (next-prime b) when (and (< p b) (primep p)) do (format t "~d " p)))
