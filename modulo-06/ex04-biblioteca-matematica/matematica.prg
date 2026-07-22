//Biblioteca: matematica.prg

//Retorna o fatorial de N
FUNCTION FatorialN(nN)
    LOCAL nFat := 1
    LOCAL nI := 1
    
    FOR nI := 1 TO nN
        nFat := nFat * nI
    NEXT
RETURN nFat

//Retorna .T. se N for primo 
FUNCTION EhPrimo(nN)
    LOCAL nI := 2
    
    IF nN <= 1
        RETURN .F.
    ENDIF
    
    FOR nI := 2 TO (nN/2)
        IF nN % nI == 0
            RETURN .F.
        ENDIF
    NEXT
RETURN .T.

FUNCTION MDC(nA, nB)
    LOCAL nResto := 0
    
    WHILE nB != 0
        nResto := nA % nB
        nA := nB
        nB := nResto
    ENDDO
RETURN nA

// Calcula o M¡nimo M£ltiplo Comum (MMC)
FUNCTION MMC(nA, nB)
    //A f¢rmula do MMC depende do MDC: MMC(a,b) = (a * b) / MDC(a,b)
    LOCAL nMmc := 0
    
    IF nA == 0 .OR. nB == 0
        RETURN 0
    ENDIF
    
    nMmc := (nA * nB) / MDC(nA, nB)
RETURN nMmc