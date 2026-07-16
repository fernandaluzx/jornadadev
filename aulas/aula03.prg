FUNCTION MAIN()

    LOCAL nNumero := 20
    LOCAL cTexto := ""
    LOCAL dData := DATE()

    SET DATE FORMAT TO "DD/MM/YYYY"
    
    QOut("Numero:" + Alltrim(str(nNumero)))
    QOut("Texto:" + cTexto)
    QOut("Data:" + DtoC(dData))

RETURN NIL