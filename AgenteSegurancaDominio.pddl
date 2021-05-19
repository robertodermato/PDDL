(define (domain AgenteSegurancaDominio)
    (:requirements :strips )
    (:predicates  
                  (AgenteEm ?sala)
    
                  (Sala ?sala) 
                  
                  (Porta ?porta)
                  (PortaConecta ?porta ?sala1 ?sala2)
                  (PortaAberta ?porta)
                  (PortaFechada ?porta)
                  
                  (Luz ?luz)
                  (LuzDaSala ?luz ?sala)
                  (LuzLigada ?luz)
                  (LuzApagada ?luz)
                  
                  (Janela ?janela)
                  (JanelaDaSala ?janela ?sala)
                  (JanelaAberta ?janela)
                  (JanelaFechada ?janela)
    )
    
    (:action mudarDeSala :parameters (?sala1 ?sala2 ?porta)
                         :precondition (and 
                                        (AgenteEm ?sala1)
                                        (PortaConecta ?porta ?sala1 ?sala2)
                                        (PortaAberta ?porta)
                                    
                                        (Sala ?sala1)
                                        (Sala ?sala2)
                                        (Porta ?porta)
                                        )
                    :effect      (and  
                                    (AgenteEm ?sala2)
                                    (not(AgenteEm ?sala1))
                                 )
    )
    
    (:action abrirPorta :parameters (?porta ?sala1 ?sala2)
                        :precondition (and 
                                        (AgenteEm ?sala1)
                                        (PortaConecta ?porta ?sala1 ?sala2)
                                        (PortaFechada ?porta)
                                    
                                        (Sala ?sala1)
                                        (Sala ?sala2)
                                        (Porta ?porta)
                                        )
                        :effect  (and  
                                    (PortaAberta ?porta)
                                    (not(PortaFechada ?porta))
                                 )
    )
    
    (:action fecharPorta    :parameters (?porta ?sala1 ?sala2)
                            :precondition (and 
                                            (AgenteEm ?sala1)
                                            (PortaConecta ?porta ?sala1 ?sala2)
                                            (PortaAberta ?porta)
                                    
                                            (Sala ?sala1)
                                            (Sala ?sala2)
                                            (Porta ?porta)
                                        )
                            :effect      (and  
                                            (not(PortaAberta ?porta))
                                            (PortaFechada ?porta)
                                        )
    )
    
    (:action ligar  :parameters (?luz ?sala)
                    :precondition (and 
                                    (AgenteEm ?sala)
                                    (LuzApagada ?luz)
                                    (LuzDaSala ?luz ?sala)
                                    
                                    (Sala ?sala)
                                    (Luz ?luz)
                                  )
                    :effect      (and  
                                    (LuzLigada ?luz)
                                    (not(LuzApagada ?luz))
                                 )
    )
    
    (:action apagar :parameters (?luz ?sala)
                    :precondition (and 
                                    (AgenteEm ?sala)
                                    (LuzLigada ?luz)
                                    (LuzDaSala ?luz ?sala)
                                    
                                    (Sala ?sala)
                                    (Luz ?luz)
                                  )
                    :effect      (and  
                                    (not(LuzLigada ?luz))
                                    (LuzApagada ?luz)
                                 )
    )
    
    (:action abrirJanela :parameters (?janela ?sala ?luz)
                         :precondition (and 
                                        (AgenteEm ?sala)
                                        (LuzLigada ?luz)
                                        (LuzDaSala ?luz ?sala)
                                        (JanelaDaSala ?janela ?sala)
                                        (JanelaFechada ?janela)
                                    
                                        (Sala ?sala)
                                        (Luz ?luz)
                                        (Janela ?janela)
                                        )
                        :effect  (and  
                                    (JanelaAberta ?janela)
                                    (not(JanelaFechada ?janela))
                                 )
    )
    
    (:action fecharJanela :parameters (?janela ?sala ?luz)
                          :precondition (and 
                                        (AgenteEm ?sala)
                                        (LuzLigada ?luz)
                                        (LuzDaSala ?luz ?sala)
                                        (JanelaDaSala ?janela ?sala)
                                        (JanelaAberta ?janela)
                                    
                                        (Sala ?sala)
                                        (Luz ?luz)
                                        (Janela ?janela)
                                        )
                        :effect  (and  
                                    (not(JanelaAberta ?janela))
                                    (JanelaFechada ?janela)
                                 )
    )
    
    
)