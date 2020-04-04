#lang sicp

(define (sqrt-iter preview-gess guess x)
  (if (good-enough? preview-gess guess)
      guess
      (sqrt-iter guess
                 (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? preview-gess guess)
  (< (abs (/ (- guess
                preview-gess)
             guess))
     0.001))

(define (square x) (* x x))

(define (sqrt x)
  (sqrt-iter 0.0 1.0 x))