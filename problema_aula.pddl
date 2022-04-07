(define (problem tarefas1)
  (:domain aula)
  
  (:objects
    Lv1 Lv2 - livro
    Logica Ia - area
    T1 T2 T3 - trabalho) 
	 
  (:init 
        (sobre Lv1 Logica)
        (sobre Lv2 Ia)
        (sobre T1 Logica)
        (sobre T2 Ia)
        (sobre T3 Ia)
  )

  (:goal  
    (and
        (entregue T1) 
        (entregue T2)
	(entregue T3)
    )
  )
)
