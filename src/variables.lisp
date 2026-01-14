

(defun range (start end)
  (loop for i from start to end collect i))






(defun sum (lst)
  (if (null lst)
      0
      (+ (car lst) (sum (cdr lst)))))


(sum (range 1 100))