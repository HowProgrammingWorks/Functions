(defun inc(a)
    (+ a 1)
)    

(lambda(a b)(if (> a b) a b)) 

(format t "inc(3)= ~a" (inc 3) )
(format t "~%max(3 1)= ~a"  ((lambda(a b)(if (> a b) a b)) 3 1))
