(defun product (a b)
  (if (zerop (rem (* a b) 2))
      "Even"
      "Odd"))

(format t "~A~%" (product (read) (read)))
