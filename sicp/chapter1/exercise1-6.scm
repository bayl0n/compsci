; Alyssa P. Hacker doesn't see why 'if' needs to
; be provided as a special form. "Why can't I just
; define it as an ordinary procedure in terms of
; cond?" she asks. Alyssa's friend Eva Lu Ator claims
; this can indeed be done, and she defiens a new version of 'if':

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
	(else else-clause)))

; Eva demonstrates the program for Alyssa:

(new-if (= 2 3) 0 5)
; 5

(new-if (= 1 1) 0 5)
; 0

; Delighted, Alyssa uses 'new-if' to rewrite the square-root
; program:

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
	  guess
	  (sqrt-iter (improve guess x) x )))

(define tolerance 0.0001)

(define (good-enough? guess x)
  (< abs((- (square guess) x)) tolerance))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(sqrt-iter 1 10)

; What happens when Alysssa attempts to use this to compute
; square roots? Explain.

; The program never halts due to applicative-order evaluation,
; as sqrt-iter needs to have the new-if precedure apply and evaluate
; sqrt-iter recursively. As the inputs of the new-if procedure need
; to be applied before it can function, there would be an infinite
; recursion as sqrt-iter tries to be evaluated.
