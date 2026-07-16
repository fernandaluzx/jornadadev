FUNCTION Main()
    
    LOCAL cN1 := "", cN2 := "", cN3 := "", cN4 := ""
    LOCAL nN1 := 0, nN2 := 0, nN3 := 0, nN4 := 0
    LOCAL nMedia := 0

    QOut("===MEDIA PONDERADA ===")

    ACCEPT "Digite a Nota 1 (Peso 1): " TO cN1
    nN1 := Val(cN1)

    ACCEPT "Digite a Nota 2 (Peso 2): " TO cN2
    nN2 := Val(cN2)

    ACCEPT "Digite a Nota 3 (Peso 3): " TO cN3
    nN3 := Val(cN3)

    ACCEPT "Digite a Nota 4 (Peso 4): " TO cN4
    nN4 := Val(cN4)

    nMedia := (( nN1 * 1) + (nN2 * 2) + (nN3 * 3) + (nN4 * 4))/10

   
    QOut("-> Media Ponderada Final: " + AllTrim( Str(nMedia, 10, 2 )))
    QOut("====================================")

RETURN NIL