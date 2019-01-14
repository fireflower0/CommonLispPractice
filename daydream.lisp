(defparameter +divide+
  (make-array '(4)
              :initial-contents
              '("dream" "dreamer" "erase" "eraser")))

(defmacro while (test &body body)
  `(do ()
       ((not ,test))
     ,@body))

(defun daydream (s)
  (let ((can1 t)
        can2
        (l (length s))
        (j 0)
        buff
        d)

    (setf s (reverse s))
    (dotimes (i 4)
      (setf (aref +divide+ i) (reverse (aref +divide+ i))))

    (while (< j l)
      (setf can2 nil)
      (dotimes (k 4)
        (setf d (aref +divide+ k))
        (if (>= l (+ (length d) j))
            (setf buff (subseq s j (+ (length d) j)))
            (setf buff (subseq s j)))
        (when (string= buff d)
          (setf can2 t)
          (setf j (+ j (length d)))
          (return)))
      (when (not (eq can2 t))
        (setf can1 nil)
        (return)))

    (if (eq can1 t)
        "YES"
        "NO")))

(format t "~A~%" (daydream (read-line)))
