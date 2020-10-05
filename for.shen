\*

The FOR X=A STEP B TO C

NEXT X

loop, with functions.

Dr Antti Juhani Ylikoski 2020-10-05

*\


(set *A* 0)
(set *B* 2)
(set *C* 16)

(set *X* (value *A*))

(define for-function
    ->
        (if (<= (value *X*) (value *C*))
	  (do
	    (for-function-body)
	    (set *X* (+ (value *X*) (value *B*)))
	    (for-function))
	    []))


(define for-function-body
    ->
    (output "~%~S" (value *X*)))


\*

Try:

(for-function)

*\

