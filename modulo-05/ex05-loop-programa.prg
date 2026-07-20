FUNCTION Main()
    LOCAL cNome := "", cDisc := "", cNota1 := "", cNota2 := ""
    LOCAL nNota1 := 0, nNota2 := 0, nMedia := 0
    LOCAL cContinuar := ""

    QOut("==== LOOP DE PROGRAMA ====")
    QOut("")

    WHILE .T.
        
        WHILE .T.
            ACCEPT "Digite o nome do aluno: " TO cNome
            IF Len(AllTrim(cNome)) > 0; EXIT; ENDIF
            QOut("-> ERRO: Nome invalido.")
        ENDDO

        WHILE .T.
            ACCEPT "Digite a disciplina (3 letras maiusculas): " TO cDisc
            IF Len( AllTrim(cDisc)) == 3 .AND. cDisc == Upper(cDisc); EXIT; ENDIF
            QOut("-> ERRO: Disciplina invalida.")
        ENDDO

        WHILE .T.
            ACCEPT "Digite a nota 1 (0 a 10): " TO cNota1
            nNota1 := Val(cNota1)
            IF nNota1 >= 0 .AND. nNota1 <= 10; EXIT; ENDIF
            QOut("-> ERRO: Nota invalida.")
        ENDDO

        WHILE .T.
            ACCEPT "Digite a nota 2 (0 a 10): " TO cNota2
            nNota2 := Val(cNota2)
            IF nNota2 >= 0 .AND. nNota2 <= 10; EXIT; ENDIF
            QOut("-> ERRO: Nota invalida.")
        ENDDO

        nMedia := (nNota1 + nNota2) / 2
        QOut("--- Resultado: " + cNome + " (" + cDisc + ") | Media: " + AllTrim(Str(nMedia, 5, 2)) + " ---")

        // --- PERGUNTA DE CONTINUAÄ«O ---
        ACCEPT "Deseja calcular outro aluno? (S/N): " TO cContinuar
        
        // Se a resposta n∆o for 'S' ou 's', encerramos o laáo principal
        IF Upper(cContinuar) != "S"
            QOut("Encerrando sistema...")
            EXIT 
        ENDIF
        QOut("")
    ENDDO

RETURN NIL