FUNCTION Main()

    LOCAL nSecreto := HB_RandomInt(1, 100)
    LOCAL cEntrada := ""
    LOCAL nPalpite := 0
    LOCAL nI := 0
    LOCAL lAcertou := .F. // Vari vel l¢gica (booleana) para saber se o jogador venceu

    QOut("==== JOGO ADIVINHE O NUMERO ====")
    QOut("Eu sorteei um numero secreto entre 1 e 100.")
    QOut("Voce tem 7 tentativas para adivinhar!")
    QOut("")

    //La‡o contado de 1 at‚ 7 tentativas
    FOR nI := 1 TO 7
        QOut("-> Tentativa " + AllTrim(Str(nI)) + " de 7" )
        ACCEPT "Qual e o seu palpite? " TO cEntrada
        nPalpite := Val(cEntrada)

        // Verifica se o jogador acertou
        IF nPalpite == nSecreto
            QOut("")
            QOut( "PARABENS! Voce acertou! O numero era " + AllTrim(Str(nSecreto)) + "!")
            lAcertou := .T.
            EXIT //Encerra o jogo ao acertar
        
        //Se errou, d  a dica se ‚ maior ou menor
        ELSEIF nPalpite < nSecreto
            QOut("Dica: O numero secreto e MAIOR.")
        ELSE
            QOut("Dica: O numero secreto e MENOR.")
        ENDIF
        
        QOut( "-------------------------------------------" )
    NEXT

    //Se o la‡o terminou e a vari vel lAcertou ainda ‚ falsa, o jogador perdeu
    IF ! lAcertou
        QOut("Fim de jogo! Voce esgotou as suas 7 tentativas.") //Encerra nas 7 tentativas
        QOut("O numero secreto era: " + AllTrim(Str(nSecreto))) //Revela o n£mero
    ENDIF

    QOut( "===========================================" )

RETURN NIL