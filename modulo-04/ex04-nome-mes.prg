FUNCTION Main()

    LOCAL cMes := ""
    LOCAL nMes := 0
    LOCAL cNomeMes := ""

    QOut("=== NOME DO MES ===")
 

    ACCEPT "Digite o numero do mes (1 a 12): " TO cMes
    nMes := Val(cMes)


    //Verificando se o numero esta fora do intervalo valido
    IF nMes < 1 .OR. nMes > 12
        QOut("Mes invalido")
    ELSE
        //Se passou pela validacao, descobre qual e o mes usando DO CASE
        DO CASE
            CASE nMes == 1
                cNomeMes := "Janeiro"
            CASE nMes == 2
                cNomeMes := "Fevereiro"
            CASE nMes == 3
                cNomeMes := "Marco"
            CASE nMes == 4
                cNomeMes := "Abril"
            CASE nMes == 5
                cNomeMes := "Maio"
            CASE nMes == 6
                cNomeMes := "Junho"
            CASE nMes == 7
                cNomeMes := "Julho"
            CASE nMes == 8
                cNomeMes := "Agosto"
            CASE nMes == 9
                cNomeMes := "Setembro"
            CASE nMes == 10
                cNomeMes := "Outubro"
            CASE nMes == 11
                cNomeMes := "Novembro"
            CASE nMes == 12
                cNomeMes := "Dezembro"
        ENDCASE

        QOut("-> O mes correspondente e: " + cNomeMes)
    ENDIF

RETURN NIL