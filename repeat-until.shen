\*

The REPEAT-UNTIL construct with functions

Dr Antti Juhani Ylikoski 2020-10-05

*\

(define repeat-function
    ->
    (do
        (repeat-body)
	(if (repeat-condition)
	    (repeat-function)
	    [])))

(define repeat-body
    ->
    (do
        (set *var* (+ 1 (value *var*)))
	(output "~%~S" (value *var*))))


(define repeat-condition
    -> (< (value *var*) 10))


(set *var* 0)

\*

Try:

(repeat-function)

*\


