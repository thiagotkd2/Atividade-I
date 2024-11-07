(define (greatest)
  (define arr '(0 20 1 0 16 1 10))

  (define (find-max lst current-max)
    (if (null? lst)
        current-max
        (find-max (cdr lst)
                  (if (> (car lst) current-max)
                      (car lst)
                      current-max))))

  (let ((max (find-max (cdr arr) (car arr))))
    (display "Maximum value: ")
    (display max)
    (newline)))

(greatest)

