FUNCTION Main()
    LOCAL nI := 0
    LOCAL cHora, cHoraFormatada

    FOR nI := 1 TO 30
        cHora := ObterHora()
        cHoraFormatada := FormatarHora(cHora)
        
        ExibirHora(cHoraFormatada)
        
        //Pausa a execuá∆o por 1 segundo para o rel¢gio n∆o rodar tudo instantaneamente
        Inkey(1) 
    NEXT

    QOut("")
    QOut( "Tempo esgotado! Relogio encerrado." )

RETURN NIL

//Funá∆o: Retorna a hora atual
FUNCTION ObterHora()
    //A funá∆o Time() nativa do Harbour j† retorna a hora do sistema
    RETURN Time()

//Funá∆o: Recebe a hora e devolve a string formatada
FUNCTION FormatarHora(cHora)
    //Opcional: Adicionamos um "enfeite" para mostrar a formataá∆o
    RETURN "[" + cHora + "]"

//Procedimento: Apenas exibe a informaá∆o na tela, n∆o retorna nada
PROCEDURE ExibirHora( cHoraFormatada )
    CLS //Limpa a tela para sobrescrever a hora antiga e dar efeito de rel¢gio digital
    
    QOut("==== RELOGIO DIGITAL ====")
    QOut("")
    QOut("      " + cHoraFormatada)
    QOut("")
    QOut("=======================")
    QOut("Aguarde 30 segundos...")
RETURN