\*

The WHILE-DO construct with functions

Dr Antti Juhani Ylikoski 2020-10-05

*\


(define while-function
    ->
    (do
        (if (while-condition)
	    (do
	        (while-body)
		(while-function)
		)
	    [])))


(define while-condition
    -> (<= (value *var*) 10))


(define while-body
    ->
        (do
	    (output "~%~S" (value *var*))
	    (set *var* (+ 1 (value *var*)))))


(set *var* 1)

\*

Try:

(while-function)

*\

