REQUEST HB_CODEPAGE_PT850
REQUEST HB_LANG_PT

FUNCTION Main()
    LOCAL cNome   := "Fernanda Luz"
    LOCAL cCidade := "Campinas"
    LOCAL cCurso  := "Harbour/ADVPL"

    //Comandos execut veis de configura‡Æo
    hb_cdpSelect( "PT850" )
    hb_langSelect( "PT" )

    QOut("========================================")
    QOut("         FICHA DE APRESENTA€ÇO         ")
    QOut("========================================")
    QOut("Nome   : " + cNome)
    QOut("Cidade : " + cCidade)
    QOut("Curso  : " + cCurso)
    QOut("========================================")
RETURN NIL