10
; 10

(+ 5 3 4)
; 12

(- 9 1)
; 8

(/ 6 2)
; 3

(+ (* 2 4) (- 4 6))
; (+ 8 (- 2))
; 6

(define a 3)

(define b (+ a 1))

(+ a b (* a b))

(= a b)

(if (and (> b a) (< b (* a b)))
  b
  a)

(cond ((= a 4) 6)
      (( = b 4) (+ 6 7 a))
      (else 25))

(+ 2 (if (> b a) b a))

(* (cond ((> b a) a)
	   ((< a b) b)
	   (else -1))
   (+ a 1))



