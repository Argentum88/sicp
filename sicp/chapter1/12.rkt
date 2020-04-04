#lang sicp

(#%require rackunit)

(define (pascal r c)
  (cond ((or (= r 1) (= c 1)) 1)
        ((= r c) 1)
        (else (+ (pascal (dec r) (dec c))
                 (pascal (dec r) c)))))

(check-equal? (pascal 5 3) 6)
(check-equal? (pascal 5 4) 4)
(check-equal? (pascal 6 3) 10)