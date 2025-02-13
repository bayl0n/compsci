; Describe the behaviour of the following procedure
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; This procedure a-plus-abs-b takes in two parameters as input, 'a' and 'b', and evaluates the sum of 'a' and 'b' such that the value of 'b' is always positive
