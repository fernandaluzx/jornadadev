FUNCTION Main()
    LOCAL cEntrada := ""
    LOCAL nValor := 0

    QOut("==== O DOBRO (WHILE) ====")
    QOut("Dica: Digite 0 ou um numero negativo para sair.")
    QOut("")

    //La‡o infinito
    WHILE .T.
        
        //Lendo a entrada repetidamente dentro do la‡o
        ACCEPT "Digite um numero inteiro: " TO cEntrada
        nValor := Val(cEntrada)

        //Condi‡Æo de sa¡da: parar quando informar valor zero ou negativo
        IF nValor <= 0
            QOut("")
            QOut("Valor zero ou negativo detectado. Encerrando...")
            EXIT 
        ENDIF

        //Exibe o dobro do valor lido
        QOut("-> O dobro de " + AllTrim(Str(nValor)) + " e: " + AllTrim(Str(nValor * 2)))  
    ENDDO

    QOut("========================================")

RETURN NIL