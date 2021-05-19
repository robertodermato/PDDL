;   ****J3a*********J2*********J1***********
;   *          *          *          *     *
;  J3b  S3    P3    S2   P2    S1    P1    *    
;   *          *          *          *     *
;   ********************************** C  *
;   *          *          *          *     *
;  J6b  S6    P6    S5   P5    S4    P4    *  
;   *          *          *          *     * 
;   ****J6a*********J5*********J4***********
;
;
;
; Problema 2 - todas janelas abertas, luzes desligadas e portas abertas
; Objetivo - Todas portas fechadas, luzes desligadas e janelas fechadas, e agente no corredor


(define (problem AgenteSegurancaProblema)
    (:domain AgenteSegurancaDominio)
    (:objects Corredor S1 S2 S3 S4 S5 S6 P1 P2 P3 P4 P5 P6 L1 L2 L3 L4 L5 L6 J1 J2 J3a J3b J4 J5 J6a J6b)
    (:init  
            (AgenteEm Corredor)
            
            (Sala Corredor) 
            (Sala S1)
            (Sala S2)
            (Sala S3) 
            (Sala S4) 
            (Sala S5) 
            (Sala S6) 
            
            (Porta P1)
            (Porta P2)
            (Porta P3)
            (Porta P4)
            (Porta P5)
            (Porta P6)
            
            (PortaAberta P1)
            (PortaAberta P2)
            (PortaAberta P3)
            (PortaAberta P4)
            (PortaAberta P5)
            (PortaAberta P6)
            
            (PortaConecta P1 Corredor S1)
            (PortaConecta P1 S1 Corredor)
            
            (PortaConecta P2 S1 S2)
            (PortaConecta P2 S2 S1)
            
            (PortaConecta P3 S2 S3)
            (PortaConecta P3 S3 S2)
            
            (PortaConecta P4 Corredor S4)
            (PortaConecta P4 S4 Corredor)
            
            (PortaConecta P5 S4 S5)
            (PortaConecta P5 S5 S4)
            
            (PortaConecta P6 S5 S6)
            (PortaConecta P6 S6 S5)
            
            (Luz L1)
            (Luz L2)
            (Luz L3)
            (Luz L4)
            (Luz L5)
            (Luz L6)
            
            (LuzApagada L1)
            (LuzApagada L2)
            (LuzApagada L3)
            (LuzApagada L4)
            (LuzApagada L5)
            (LuzApagada L6)
            
            (LuzDaSala L1 S1)
            (LuzDaSala L2 S2)
            (LuzDaSala L3 S3)
            (LuzDaSala L4 S4)
            (LuzDaSala L5 S5)
            (LuzDaSala L6 S6)
            
            (Janela J1)
            (Janela J2)
            (Janela J3a)
            (Janela J3b)
            (Janela J4)
            (Janela J5)
            (Janela J6a)
            (Janela J6b)
            
            (JanelaDaSala J1 S1)
            (JanelaDaSala J2 S2)
            (JanelaDaSala J3a S3)
            (JanelaDaSala J3b S3)
            (JanelaDaSala J4 S4)
            (JanelaDaSala J5 S5)
            (JanelaDaSala J6a S6)
            (JanelaDaSala J6b S6)
            
            (JanelaAberta J1)
            (JanelaAberta J2)
            (JanelaAberta J3a)
            (JanelaAberta J3b)
            (JanelaAberta J4)
            (JanelaAberta J5)
            (JanelaAberta J6a)
            (JanelaAberta J6b)
            
            
            
            
           
    )
        (:goal  (and 
                    (PortaFechada P1) (PortaFechada P2) (PortaFechada P3) (PortaFechada P4) (PortaFechada P5) (PortaFechada P6)
                    (JanelaFechada J1) (JanelaFechada J2) (JanelaFechada J3a) (JanelaFechada J3b)
                    (JanelaFechada J4) (JanelaFechada J5) (JanelaFechada J6a) (JanelaFechada J6b)
                    (LuzApagada L1) (LuzApagada L2) (LuzApagada L3)
                    (LuzApagada L4) (LuzApagada L5) (LuzApagada L6)
                    (AgenteEm Corredor)
                )
        )
)