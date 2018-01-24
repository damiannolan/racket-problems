#lang racket

; Define a procedure 'discount' that takes two arguments: an item's initial price
; and percentage discount. Return the new price

; Can use ~r for formatting to two decimal places however output is in string format

(define (discount x y)
  (~r (- x (/ (* x y) 100.0)) #:precision '(= 2)))

(discount 10 5)

(discount 29.90 50)
