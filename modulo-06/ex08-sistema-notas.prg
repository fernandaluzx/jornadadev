FUNCTION Main()
    LOCAL nQtdAlunos := 0
    LOCAL cEntrada := ""
    LOCAL aAlunos := {} //Array principal que vai guardar as "linhas"
    LOCAL nI := 0
    LOCAL cNome := ""
    LOCAL nN1 := 0, nN2 := 0, nN3 := 0, nN4 := 0
    LOCAL nMedia := 0

    QOut("==== SISTEMA DE NOTAS ====")
    QOut("")
    
    //Define a quantidade de alunos
    ACCEPT "Quantos alunos deseja cadastrar? " TO cEntrada
    nQtdAlunos := Val(cEntrada)

    //Loop para ler os dados de cada aluno
    FOR nI := 1 TO nQtdAlunos
        QOut("")
        QOut("--- Dados do Aluno " + AllTrim(Str(nI)) + " ---")
        
        ACCEPT "Nome: " TO cNome
        
        ACCEPT "Nota 1: " TO cEntrada
        nN1 := Val(cEntrada)
        
        ACCEPT "Nota 2: " TO cEntrada
        nN2 := Val(cEntrada)
        
        ACCEPT "Nota 3: " TO cEntrada
        nN3 := Val(cEntrada)
        
        ACCEPT "Nota 4: " TO cEntrada
        nN4 := Val(cEntrada)

        //Adicionamos um array de 5 posi‡äes dentro do array principal
        AAdd(aAlunos, {cNome, nN1, nN2, nN3, nN4})
    NEXT

    //Processa e exibe os resultados
    QOut("")
    QOut("==== BOLETIM FINAL ====" )

    FOR nI := 1 TO Len(aAlunos)
        //Para acessar um dado, usamos aAlunos
        //Coluna 1: Nome | Colunas 2 a 5: Notas
        cNome := aAlunos[nI][1]
        
        //Calcula a m‚dia usando as posi‡äes das notas
        nMedia := (aAlunos[nI][2] + aAlunos[nI][3] + aAlunos[nI][4] + aAlunos[nI][5]) / 4

        QOut("")
        QOut("Aluno: " + cNome)
        QOut("Media: " + AllTrim(Str(nMedia, 5, 2)))
        
        // Verifica aprova‡Æo
        IF nMedia >= 7
            QOut("-> Status: APROVADO")
        ELSE
            QOut("-> Status: REPROVADO")
        ENDIF
    NEXT

RETURN NIL