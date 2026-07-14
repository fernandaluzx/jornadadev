REQUEST HB_CODEPAGE_PT850
REQUEST HB_LANG_PT

FUNCTION Main()
    //O comando LOCAL cria vari veis para guardar textos (tipo caractere)
    LOCAL cNome   := "Fernanda Luz"
    LOCAL cCidade := "Campinas"
    LOCAL cFrase  := "Pronta para aprender ADVPL!"

    //Comandos execut veis de configura‡Æo
    hb_cdpSelect( "PT850" )
    hb_langSelect( "PT" )

    QOut("Nome   : " + cNome)
    QOut("Cidade : " + cCidade)
    QOut(cFrase)     // Mostra o conte£do completo da vari vel cFrase na tela
RETURN NIL