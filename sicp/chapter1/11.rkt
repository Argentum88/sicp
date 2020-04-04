#lang sicp

(#%require rackunit)

(define (fr n)
  (if (< n 3)
      n
      (+ (fr (- n 1)) (fr (- n 2)) (fr (- n 3)))))

(define (fi n)
  (define (iter a b c counter n)
    (if (= counter n)
        (+ a b c)
        (iter (+ a b c) a b (inc counter) n)))
  (if (< n 3)
      n
      (iter 2 1 0 3 n)))

(check-equal? (fr 3) 3)
(check-equal? (fr 4) 6)
(check-equal? (fr 5) 11)

(check-equal? (fi 3) 3)
(check-equal? (fi 4) 6)
(check-equal? (fi 5) 11)