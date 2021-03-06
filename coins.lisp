(defun coins (a b c x)
  (let ((res 0)
        (total 0))
    (dotimes (i (+ a 1))
      (dotimes (j (+ b 1))
        (dotimes (k (+ c 1))
          (setf total (+ (* 500 i) (* 100 j) (* 50 k)))
          (if (= total x) (incf res)))))
    res))

(format t "~A~%" (coins (read) (read) (read) (read)))
