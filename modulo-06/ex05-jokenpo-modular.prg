FUNCTION Main()
    LOCAL cMinhaJogada := ""
    LOCAL cJogadaCPU := ""
    LOCAL cVencedor := ""
    LOCAL cContinuar := ""

    QOut("==== JOGO: PEDRA, PAPEL E TESOURA ====")

    WHILE .T.
        QOut("")
        ACCEPT "Sua jogada (PEDRA, PAPEL ou TESOURA): " TO cMinhaJogada
        cMinhaJogada := Upper(AllTrim(cMinhaJogada))

        //Valida a entrada do usu rio
        IF ! ValidarJogada(cMinhaJogada)
            QOut("-> ERRO: Jogada invalida. Tente novamente.")
            LOOP //Volta para o in¡cio do WHILE
        ENDIF

        //Sorteia a jogada do computador
        cJogadaCPU := SortearJogadaCPU()
        QOut("O Computador jogou: " + cJogadaCPU)

        //Define quem ganhou
        cVencedor := DefinirVencedor(cMinhaJogada, cJogadaCPU)
        QOut(">>> RESULTADO: " + cVencedor + " <<<")

        QOut("")
        ACCEPT "Deseja jogar de novo? (S/N): " TO cContinuar
        IF Upper(AllTrim(cContinuar)) != "S"
            QOut("Saindo do jogo...")
            EXIT
        ENDIF
    ENDDO

RETURN NIL

// --- FUN€åES DO JOGO ---

//Valida a entrada do usu rio
FUNCTION ValidarJogada(cJogada)
    IF cJogada == "PEDRA" .OR. cJogada == "PAPEL" .OR. cJogada == "TESOURA"
        RETURN .T.
    ENDIF
RETURN .F.

//Sorteia a jogada do computador
FUNCTION SortearJogadaCPU()
    LOCAL nSorteio := HB_RandomInt(1, 3)
    LOCAL cRetorno := ""

    DO CASE
        CASE nSorteio == 1
            cRetorno := "PEDRA"
        CASE nSorteio == 2
            cRetorno := "PAPEL"
        CASE nSorteio == 3
            cRetorno := "TESOURA"
    ENDCASE
RETURN cRetorno

//Retorna quem ganhou
FUNCTION DefinirVencedor(cJogador, cCPU)
    IF cJogador == cCPU
        RETURN "EMPATE"
    ENDIF

    //L¢gica de vit¢ria do Jogador
    DO CASE
        CASE cJogador == "PEDRA" .AND. cCPU == "TESOURA"
            RETURN "VOCE VENCEU!"
        CASE cJogador == "PAPEL" .AND. cCPU == "PEDRA"
            RETURN "VOCE VENCEU!"
        CASE cJogador == "TESOURA" .AND. cCPU == "PAPEL"
            RETURN "VOCE VENCEU!"
        OTHERWISE
            //Se nÆo empatou e o jogador nÆo venceu, a CPU venceu
            RETURN "COMPUTADOR VENCEU!"
    ENDCASE
RETURN ""