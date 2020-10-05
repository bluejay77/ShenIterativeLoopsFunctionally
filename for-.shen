\*

The FOR X=A STEP B DOWNTO C

NEXT X

loop, with functions.

NOTA BENE, with the negative increment.

Dr Antti Juhani Ylikoski 2020-10-05

*\


(set *A* 20)
(set *B* -1)
(set *C* 0)

(set *X* (value *A*))

(define for-minus-function
    ->
        (if (>= (value *X*) (value *C*))
	  (do
	    (for-function-body)
	    (set *X* (+ (value *X*) (value *B*)))
	    (for-minus-function))
	    []))


(define for-function-body
    ->
    (output "~%~S" (value *X*)))


\*

Try:

(for-minus-function)

*\

