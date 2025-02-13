; Ben Bitdiddle has invented a test to determine
; whether the interpreter he is faced with is using applicative-
; order evaluation or normal-order evaluation. He defines the
; following two procedures:

(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y)

; He then evaluates the expression

(test 0 (p))

; What behaviour will Ben observe with an interpreter that uses
; applicative-order evaluation? What behaviour will he observe
; with an interpreter that uses normal-order evaluation? Explain
; your answer.
; (Assume that the evaluation rule of the special form if is the
; same whether the interpreter is using normal or applicative
; order: The predicate expression is evaluated first, and the
; result determines whether to evaulate the consequent or the
; alternative expression.)

; Applicative order: The program 'test' evaluate arguments and
; then apply. So (p) will be evaluated recursively.
; Normal order: The program 'test' will expand test as
; (if (= 0 0) 0 (p)) and return 0 as the predicate is satisfied 
