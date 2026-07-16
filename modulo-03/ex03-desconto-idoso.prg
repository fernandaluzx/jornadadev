FUNCTION Main()

    //Vari veis de Texto (Para receber o que vem do teclado pelo ACCEPT)
    LOCAL cNome         := ""
    LOCAL cNascEntrada  := ""
    LOCAL cPrecoEntrada := ""

    //Vari veis de Processamento (Para fazer as contas e conversäes)
    LOCAL dNasc
    LOCAL nPreco    := 0
    LOCAL nIdade    := 0
    LOCAL nDesconto := 0
    LOCAL nTotal    := 0

    QOut("=== SISTEMA DE DESCONTO ===")

    ACCEPT "Digite o nome do cliente: " TO cNome

    ACCEPT "Digite a data de nascimento (DD/MM/AAAA): " TO cNascEntrada
    dNasc := CToD(cNascEntrada) 

    ACCEPT "Digite o preco do produto: " TO cPrecoEntrada
    nPreco := Val(cPrecoEntrada) 

    nIdade := Int((Date() - dNasc)/365)

    IF nIdade > 60
        nDesconto := nPreco * 0.125
    ELSE
        nDesconto := 0
    ENDIF

    nTotal := nPreco - nDesconto

    QOut("=== RESUMO DA COMPRA ===")
    QOut("Cliente:  " + AllTrim(cNome))
    QOut("Idade:    " + AllTrim(Str(nIdade, 3, 0)) + " anos")
    QOut("Preco:    R$ " + AllTrim(Str(nPreco, 10, 2)))
    QOut("Desconto: R$ " + AllTrim(Str(nDesconto, 10, 2)))
    QOut("Total:    R$ " + AllTrim(Str(nTotal, 10, 2)))
    QOut("=========================")

RETURN NIL