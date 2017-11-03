(define (domain space-port)
    (:predicates (planet ?p)
        (ship ?s)        
        (at ?x ?y))

    (:action travel
        :parameters (?from ?to ?s)
        :precondition (and (planet ?from) 
                        (planet ?to) 
                        (ship ?s)
                        (at ?s ?from))
        :effect (and (at ?s ?to)
                    (not (at ?s ?from)))))