REQUEST HB_CODEPAGE_PT850
REQUEST HB_LANG_PT

FUNCTION Main()
    LOCAL cNome   := "Fernanda Luz"
    LOCAL cCidade := "Campinas"
    LOCAL cCurso  := "Harbour/ADVPL"
    
    //A fun‡Æo Date() pega a data do sistema, e DToC() a converte em texto
    LOCAL cData   := DToC(Date()) 
    
    // A fun‡Æo Time() retorna diretamente um texto com a hora atual
    LOCAL cHora   := Time() 

    //Comandos execut veis de configura‡Æo (vˆm logo ap¢s as vari veis)
    hb_cdpSelect( "PT850" )
    hb_langSelect( "PT" )

    QOut("========================================") 
    QOut("    FICHA DE APRESENTA€ÇO COMPLETA      ") 
    QOut("========================================") 
    QOut("Nome   : " + cNome) 
    QOut("Cidade : " + cCidade) 
    QOut("Curso  : " + cCurso)
    // Adiciona as novas linhas de tempo juntando as vari veis de texto [cite: 1973]
    QOut("Data   : " + cData) 
    QOut("Hora   : " + cHora) 
    QOut("========================================") 
RETURN NIL 