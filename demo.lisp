; Functions
(defun input(text)
    (print text)
    (read-line *query-io*)
)

(defun greeting(name)
    (print (concatenate 'string "hello" " " name))
    (print "Fibonacci from 1 to 20:")
)

(defun fibonacci(n)
    (cond
        ((= n 1) 1)
        ((< n 1) 0)
        (t (+ (fibonacci (- n 1)) (fibonacci (- n 2))))
    )
)

; Executes here
(greeting (input "Name:"))
(loop for i from 1 to 20
    do (print
        (concatenate 'string
            "fibonacci(" (write-to-string i) "): "
            (write-to-string (fibonacci i))
        )
    )
)
