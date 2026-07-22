//Programa: principal.prg

//Inclui a nossa biblioteca de matem tica
SET PROCEDURE TO matematica.prg

FUNCTION Main()
    LOCAL nFat, lPrimo, nMeuMdc, nMeuMmc

    QOut("==== TESTANDO A BIBLIOTECA MATEMATICA ====")
    QOut("")

    //Testando FatorialN (ex: Fatorial de 5 ‚ 120)
    nFat := FatorialN(5)
    QOut("Fatorial de 5: " + AllTrim(Str(nFat)))

    //Testando Primo (ex: 7 ‚ primo, deve retornar .T.)
    lPrimo := EhPrimo(7)
    QOut("O numero 7 e primo? " + Se(lPrimo,"Sim","Nao"))

    //Testando MDC (ex: MDC entre 12 e 18 ‚ 6)
    nMeuMdc := MDC(12, 18)
    QOut("MDC entre 12 e 18: " + AllTrim(Str(nMeuMdc)))

    //Testando MMC (ex: MMC entre 12 e 18 ‚ 36)
    nMeuMmc := MMC(12, 18)
    QOut("MMC entre 12 e 18: " + AllTrim(Str(nMeuMmc)))

    QOut("")
    QOut("Testes concluidos com sucesso!")

RETURN NIL

// Fun‡Æo auxiliar para exibir Sim ou NÆo baseado em vari vel l¢gica
FUNCTION Se(lCondicao, cVerdadeiro, cFalso)
    IF lCondicao
        RETURN cVerdadeiro
    ENDIF
RETURN cFalso