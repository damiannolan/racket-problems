#lang racket

; Using Euclid's algorithm for greatest common divisor
; https://en.wikipedia.org/wiki/Euclidean_algorithm

(define (grcomdiv x y)
  (if (= y 0)
      x
      (grcomdiv y (modulo x y))))

(grcomdiv 10 5)

(grcomdiv 64 30)

(grcomdiv 12 30)
