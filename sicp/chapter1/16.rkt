#lang sicp

(#%require rackunit)

(define (exp b n)
  (iter 1 b n))

(define (iter a b n)
  (cond ((= n 0) a)
        ((even? n) (iter a (* b b) (/ n 2)))
        (else (iter (* a b) b (dec n)))))

(define (even? n)
    (= (remainder n 2) 0))

(check-equal? (exp 2 8) 256)
(check-equal? (exp 5 11) 48828125)