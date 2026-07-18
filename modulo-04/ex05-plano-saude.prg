FUNCTION Main()

    LOCAL cIdade := "", cDependentes := ""
    LOCAL nIdade := 0, nDependentes := 0
    LOCAL nValorBase := 0
    LOCAL nValorTotal := 0

    QOut("==== PLANO DE SAUDE ====")
    QOut("")

    ACCEPT "Digite a idade do titular: " TO cIdade
    nIdade := Val( cIdade )

    ACCEPT "Digite o numero de dependentes: " TO cDependentes
    nDependentes := Val(cDependentes)

    //Definindo o valor base por faixa etaria
    IF nIdade <= 25
        nValorBase := 180
    ELSEIF nIdade <= 40
        nValorBase := 260
    ELSEIF nIdade <= 60
        nValorBase := 380
    ELSE
        nValorBase := 520
    ENDIF

    //Soma o valor da faixa etaria + (R$ 90 vezes o numero de dependentes)
    nValorTotal := nValorBase + (nDependentes * 90)

    QOut("-> Valor Base (Idade):     R$ " + AllTrim(Str(nValorBase, 10, 2)))
    QOut("-> Adicional Dependentes:  R$ " + AllTrim(Str(nDependentes * 90, 10, 2)))
    QOut("-> VALOR TOTAL MENSAL:     R$ " + AllTrim(Str(nValorTotal, 10, 2)))

RETURN NIL
