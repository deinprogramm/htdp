;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname check-ordered) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; #lang htdp/bsl

;; this test should not be reported as failing:
;; 1. it passes
;; 2. it is f that is called before defined not g 

;; OUCH :: expected to fail, get your work done
;; This is issue #87, which you never chased down 

(check-expect (g 30) "goodbye")
(f 40)
(define (f x) "hello")
(define (g y) "goodbye")