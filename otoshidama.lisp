(defun otoshidama (n y)
  (let ((res10000 -1)
        (res5000 -1)
        (res1000 -1)
        (c 0)
        (total 0))
    (dotimes (a (1+ n))
      (dotimes (b (- (1+ n) a))
        (setf c (- n a b))
        (setf total (+ (* 10000 a) (* 5000 b) (* 1000 c)))
        (when (= total y)
          (setf res10000 a)
          (setf res5000 b)
          (setf res1000 c))))
    (values res10000 res5000 res1000)))

(multiple-value-bind (res10000 res5000 res1000) (otoshidama (read) (read))
  (format t "~A ~A ~A~%" res10000 res5000 res1000))
