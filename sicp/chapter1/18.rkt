#lang sicp

(#%require rackunit)

(define (* b c)
  (iter 0 b c))

(define (iter a b c)
  (cond ((= c 0) a)
        ((even? c) (iter a (double b) (halve c)))
        (else (iter (+ a b) b (dec c)))))

(define (double x)
  (+ x x))

(define (halve x)
  (/ x 2))

(define (even? n)
    (= (remainder n 2) 0))

(check-equal? (* 3 8) 24)
(check-equal? (* 5 5) 25)