FUNCTION Main()
    LOCAL cNome := "", cDisc := "", cNota1 := "", cNota2 := ""
    LOCAL nNota1 := 0, nNota2 := 0, nMedia := 0

    QOut("==== VALIDACAO COMPLETA ====")
    QOut("")

    //Valida‡Æo do Nome
    WHILE .T.
        ACCEPT "Digite o nome do aluno: " TO cNome
        IF Len(AllTrim(cNome))> 0 
            EXIT //Sai do loop se o nome nÆo for vazio
        ENDIF
        QOut("-> ERRO: O nome nao pode ser vazio. Tente novamente.")
    ENDDO

    //Valida‡Æo da Disciplina
    WHILE .T.
        ACCEPT "Digite a disciplina (exatamente 3 letras maiusculas, ex: MAT): " TO cDisc
        //Verifica se tem 3 caracteres E se ‚ igual … versÆo em mai£sculas dela mesma
        IF Len(AllTrim(cDisc)) == 3 .AND. cDisc == Upper(cDisc)
            EXIT
        ENDIF
        QOut("-> ERRO: A disciplina deve ter exatamente 3 letras maiusculas.")
    ENDDO

    //Valida‡Æo da Nota 1
    WHILE .T.
        ACCEPT "Digite a nota 1 (0 a 10): " TO cNota1
        nNota1 := Val(cNota1)
        IF nNota1 >= 0 .AND. nNota1 <= 10
            EXIT
        ENDIF
        QOut("-> ERRO: A nota deve estar entre 0 e 10.")
    ENDDO

    //Valida‡Æo da Nota 2
    WHILE .T.
        ACCEPT "Digite a nota 2 (0 a 10): " TO cNota2
        nNota2 := Val(cNota2)
        IF nNota2 >= 0 .AND. nNota2 <= 10
            EXIT
        ENDIF
        QOut("-> ERRO: A nota deve estar entre 0 e 10.")
    ENDDO

    nMedia := ( nNota1 + nNota2 ) / 2

    //Exibe os dados e a m‚dia das duas notas ao final
    QOut("" )
    QOut("==== BOLETIM DO ALUNO ====")
    QOut("Nome:       " + cNome)
    QOut("Disciplina: " + cDisc)
    QOut("Nota 1:     " + AllTrim(Str(nNota1, 5, 2)))
    QOut("Nota 2:     " + AllTrim(Str(nNota2, 5, 2)))
    QOut("Media:      " + AllTrim(Str(nMedia, 5, 2)))
    QOut("========================" )

RETURN NIL