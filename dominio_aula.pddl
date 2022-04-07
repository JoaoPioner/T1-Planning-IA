(define (domain aula)
  (:requirements :strips :typing)

  (:types 	
        livro trabalho - assunto  
		area)

  (:predicates 
	(conheco ?a - area)	
	(finalizado ?t - trabalho)
	(entregue ?t - trabalho)
	(sobre ?b - assunto ?a - area)
	)

  (:action estudar
     :parameters (?b - livro ?a - area)
     :precondition (sobre ?b ?a)
     :effect (conheco ?a))

  (:action fazerTrabalho
     :parameters (?t - trabalho ?a - area)
     :precondition (and (sobre ?t ?a) (conheco ?a))
     :effect (finalizado ?t))
  
  (:action entregarTrabalho
     :parameters (?t - trabalho)
     :precondition (finalizado ?t)
     :effect (entregue ?t))
)
