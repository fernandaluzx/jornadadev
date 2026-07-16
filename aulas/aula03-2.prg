FUNCTION Main()
    LOCAL nA, nB
    LOCAL cVA := ""
    LOCAL cVB := ""

    QOut( "=== MINHA PRIMEIRA CALCULADORA === " )

    ACCEPT "Digite o primeiro numero: " TO cVA
    nA := Val( cVA )

    ACCEPT "Digite o segundo numero: " TO cVB
    nB := Val( cVB )

    QOut( "=== RESULTADOS ===" )
 
    QOut( "Soma:        " + Str( nA + nB, 10, 2 ))
    QOut( "Subtracao:   " + Str( nA - nB, 10, 2 ))
    QOut( "Produto:     " + Str( nA * nB, 10, 2 ))

    IF nB <> 0
        QOut( "Divisao:     " + Str( nA / nB, 10, 2 ))
    ELSE
        QOut( "Divisao:     Erro! Nao e possivel dividir por zero.")
    ENDIF

    QOut( "==============================" )

RETURN NIL