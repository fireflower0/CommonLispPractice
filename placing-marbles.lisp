(defun placing-marbles (s)
  (count #\1 s))

(format t "~A~%" (placing-marbles (read-line)))
