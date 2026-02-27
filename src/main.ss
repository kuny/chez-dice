
(import (chezscheme))

(define (seed!)
  (let* ([t (+ (real-time) (cpu-time))]
         [n (inexact->exact (floor t))]
         [s (modulo n 4294967296)])
    (random-seed s)))

(seed!)

;; 1〜6のサイコロ
(define (roll-dice)
  (+ 1 (random 6)))

(define (roll n)
  (unless (= n 0)
    (display (roll-dice))
    (newline)
    (roll (- n 1))))

(define (main)
  (let ((args (command-line)))
    (if (null? (cdr args)) 
      (roll 1)
      (let ((count (string->number (cadr args))))
        (if (and count (integer? count) (>= count 1))
          (roll count)
          (roll 1))))))

(main)

