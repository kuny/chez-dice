
; (library-directories '("src"))

; (import (chezscheme))

;; シード値を現在時刻（ミリ秒）で初期化
; (random-seed (real-time))
(random-seed (+ (real-time) (cpu-time)))
;; 1〜6のサイコロ
(define (roll-dice)
  (+ 1 (random 6)))


(define (roll n)
  (cond ((= n 0) #t)
        (else
          (display (roll-dice))
          (newline)
          (roll (- n 1)))))

(define (main)
  (let ((args (command-line)))
    (if (null? (cdr args)) 
      (roll 1)
      (let ([count (string->number (cadr args))])
        (roll count)))))

(main)

