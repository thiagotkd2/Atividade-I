;; Simple function that returns a "pseudo-random" number
(define (pseudo-random i max)
  (+ (modulo (* i 13) max) 1)) ;; Basic simulation of a random number

(define (greatest)
  ;; Creating an array with 5 elements
  (let ((arr (make-vector 5)))
    
    ;; Populating the array with "pseudo-random" numbers
    (do ((i 0 (+ i 1)))
        ((= i 5))
      (vector-set! arr i (pseudo-random i 50)))  ; Generates a number between 1 and 50
    
    ;; Printing the array
    (display "Array: ")
    (display (vector->list arr))
    (newline)
    
    ;; Finding the maximum value using `let` for the local variable `max`
    (let ((max (vector-ref arr 0)))
      (do ((i 1 (+ i 1)))
          ((= i 5))
        (when (> (vector-ref arr i) max)
          (set! max (vector-ref arr i))))
      
      ;; Printing the maximum value
      (display "Maximum value: ")
      (display max)
      (newline))))

;; Executing the function
(greatest)
