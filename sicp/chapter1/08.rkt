#lang sicp

(define (cbrt-iter preview-gess guess x)
  (if (good-enough? preview-gess guess)
      guess
      (cbrt-iter guess
                 (improve guess x)
                 x)))

(define (improve guess x)
  (/ (+ (/ x (square guess))
        (* 2 guess))
     3))

(define (good-enough? preview-gess guess)
  (< (abs (/ (- guess
                preview-gess)
             guess))
     0.001))

(define (square x) (* x x))

(define (cube x)
  (* x
     (square x)))

(define (cbrt x)
  (cbrt-iter 0.0 1.0 x))