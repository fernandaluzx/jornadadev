FUNCTION Main()
    LOCAL cEntrada := ""
    LOCAL nValor := 0
    LOCAL nTotal := 0
    LOCAL nQtd := 0

    QOut("==== MAQUINA DE SOMA ====")
    QOut("Dica: Digite 0 para exibir os resultados e sair.")
    QOut("")

    WHILE .T.
        ACCEPT "Digite um valor: " TO cEntrada
        nValor := Val(cEntrada)

        //Verifica se a condi‡Æo de sa¡da foi atingida 
        IF nValor == 0
            EXIT
        ENDIF

        //Se passou do EXIT, significa que ‚ um n£mero v lido.
        //nTotal soma o valor atual a ele mesmo
        nTotal += nValor
        
        //nQtd soma +1 ao contador de n£meros digitados
        nQtd++
    ENDDO

    //Sa¡da de dados: s¢ acontece ap¢s o t‚rmino do loop
    QOut("")
    QOut("==== RESULTADO FINAL ====")
    QOut("-> Soma total dos valores: " + AllTrim(Str(nTotal)))
    QOut("-> Quantidade de valores:  " + AllTrim(Str(nQtd)))
    QOut("=======================")

RETURN NIL