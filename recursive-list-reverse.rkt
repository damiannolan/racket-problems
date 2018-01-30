#lang racket

; Reversing a list
; Use a higher order function -
; which takes a list and the function it is applied to

; If the list is null -> return null
; Otherwise pass the list to rev-aux with an empty list in which its contents
; are applied to in reverse
(define (rev lst rev-aux)
  (if (null? lst)
      null
      (rev-aux lst '())))

(define (rev-aux lst res)
  (if (null? lst)
      res
      (rev-aux (cdr lst) (cons (car lst) res))))

(rev '(1 2 3 4 5) rev-aux)

(define m (list 1 2 3))

(rev m rev-aux)
